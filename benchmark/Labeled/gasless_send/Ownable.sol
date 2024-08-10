/*
 * @source: https://github.com/DependableSystemsLab/eTainter/blob/main/datasets/annotated/source/841d45b777e7873d0686d89f919d075b.sol
 * @author: -
 * @vulnerable_at_lines: 259
 */

// File: @openzeppelin/contracts/GSN/Context.sol

pragma solidity ^0.5.0;

/*
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with GSN meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
contract Context {
    // Empty internal constructor, to prevent people from mistakenly deploying
    // an instance of this contract, which should be used via inheritance.
    constructor () internal { }
    // solhint-disable-previous-line no-empty-blocks

    function _msgSender() internal view returns (address payable) {
        return msg.sender;
    }

    function _msgData() internal view returns (bytes memory) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}

// File: @openzeppelin/contracts/ownership/Ownable.sol

pragma solidity ^0.5.0;

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor () internal {
        _owner = _msgSender();
        emit OwnershipTransferred(address(0), _owner);
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(isOwner(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Returns true if the caller is the current owner.
     */
    function isOwner() public view returns (bool) {
        return _msgSender() == _owner;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public onlyOwner {
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     */
    function _transferOwnership(address newOwner) internal {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

// File: contracts/SecretSanta.sol

pragma solidity 0.5.13;



contract ERC721 {
    function transferFrom(address from, address to, uint256 tokenId) public;
}


/**
 * @title Secret Santa with NFTs (www.secrethsanta.co)
 * @notice All the logic of the contract happens here
 * @author Clemlak
 */
contract SecretSanta is Ownable {
    address public lastSecretSanta;
    bool public isPrizeClaimed;

    uint256 public lastPresentAt;
    uint256 public prizeDelay;

    address[] public prizeTokens;
    uint256[] public prizeTokensId;

    mapping (address => bool) public whitelist;

    event PresentSent(
        address indexed from,
        address indexed to,
        address token,
        uint256 tokenId
    );

    event PrizeAdded(
        address indexed from,
        address[] tokens,
        uint256[] tokensId
    );

    constructor(
        uint256 initialPrizeDelay
    ) public {
        lastSecretSanta = msg.sender;
        lastPresentAt = now;
        prizeDelay = initialPrizeDelay;
    }

    /**
     * @notice Send tokens to the prize
     * @param tokens An array with the address of the contracts
     * @param tokensId An array with the id of the tokens
     */
    function sendPrize(
        address[] calldata tokens,
        uint256[] calldata tokensId
    ) external {
        require(
            tokens.length == tokensId.length,
            "Invalid array"
        );

        require(
            lastPresentAt + prizeDelay > now,
            "Too late"
        );

        for (uint256 i = 0; i < tokens.length; i += 1) {
            require(
                whitelist[tokens[i]],
                "Token not whitelisted"
            );

            ERC721 token = ERC721(tokens[i]);
            token.transferFrom(
                msg.sender,
                address(this),
                tokensId[i]
            );

            prizeTokens.push(tokens[i]);
            prizeTokensId.push(tokensId[i]);
        }

        emit PrizeAdded(
            msg.sender,
            tokens,
            tokensId
        );
    }

    /**
     * @notice Sends a present
     * @param tokenAddress The address of the contract
     * @param tokenId The id of the token
     */
    function sendPresent(
        address tokenAddress,
        uint256 tokenId
    ) external {
        require(
            lastPresentAt + prizeDelay > now,
            "Too late"
        );

        require(
            whitelist[tokenAddress],
            "Token not whitelisted"
        );

        ERC721 token = ERC721(tokenAddress);

        token.transferFrom(
            msg.sender,
            lastSecretSanta,
            tokenId
        );

        emit PresentSent(
            msg.sender,
            lastSecretSanta,
            tokenAddress,
            tokenId
        );

        lastSecretSanta = msg.sender;
        lastPresentAt = now;
    }

    /**
     * @notice Claims the prize
     */
    function claimPrize() external {
        require(
            now > lastPresentAt + prizeDelay,
            "Not yet"
        );

        require(
            msg.sender == lastSecretSanta,
            "Sender not last Santa"
        );
        // <yes> <report> Gasless_Send
        for (uint256 i = 0; i < prizeTokens.length; i += 1) {
            ERC721 token = ERC721(prizeTokens[i]);

            token.transferFrom(
                address(this),
                msg.sender,
                prizeTokensId[i]
            );
        }

        isPrizeClaimed = true;
    }

    function updateWhitelist(
        address[] calldata tokens,
        bool isApproved
    ) external onlyOwner() {
        for (uint256 i = 0; i < tokens.length; i += 1) {
            whitelist[tokens[i]] = isApproved;
        }
    }

    function getPrize() external view returns (
        address[] memory tokens,
        uint256[] memory tokensId
    ) {
        return (
            prizeTokens,
            prizeTokensId
        );
    }

    function isTooLate() external view returns (bool) {
        return now > lastPresentAt + prizeDelay;
    }
}
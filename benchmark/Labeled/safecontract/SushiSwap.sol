
/*
 * @source: OpenZeppelin Contracts (last updated v4.7.0) (security/Pausable.sol)
 * @author: -
 * @vulnerable_at_lines: 0
 */
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IERC20 {
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

contract SushiSwap {
    struct Pool {
        mapping(address => uint256) balances;
        uint256 totalBalance;
        uint256 totalShares;
        uint256 lastUpdateTime;
        uint256 allocPoint;
    }

    mapping(address => Pool) public pools;

    function deposit(address token, uint256 amount) public {
        require(pools[token].totalBalance > 0, "Invalid pool");
        require(amount > 0, "Invalid amount");

        uint256 shares = calculateShares(token, amount);

        pools[token].balances[msg.sender] += amount;
        pools[token].totalBalance += amount;
        pools[token].totalShares += shares;

        IERC20(token).transferFrom(msg.sender, address(this), amount);
    }

    function withdraw(address token, uint256 shares) public {
        require(pools[token].totalBalance > 0, "Invalid pool");
        require(shares > 0, "Invalid shares");

        uint256 amount = calculateWithdrawAmount(token, shares);

        pools[token].balances[msg.sender] -= amount;
        pools[token].totalBalance -= amount;
        pools[token].totalShares -= shares;

        IERC20(token).transfer(msg.sender, amount);
    }

    function calculateShares(address token, uint256 amount) internal view returns (uint256) {
        uint256 totalBalance = pools[token].totalBalance;
        uint256 totalShares = pools[token].totalShares;

        if (totalShares == 0) {
            return amount;
        }

        return (amount * totalShares) / totalBalance;
    }

    function calculateWithdrawAmount(address token, uint256 shares) internal view returns (uint256) {
        uint256 totalBalance = pools[token].totalBalance;
        uint256 totalShares = pools[token].totalShares;

        return (shares * totalBalance) / totalShares;
    }
}

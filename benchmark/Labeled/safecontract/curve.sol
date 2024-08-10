/*
 * @source: OpenZeppelin Contracts (last updated v4.8.0) (security/PullPayment.sol)
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

contract Curve {
    struct Pool {
        mapping(address => uint256) balances;
        uint256 totalBalance;
        uint256 totalWeight;
        uint256 swapFee;
    }

    mapping(address => Pool) public pools;

    function swap(address tokenIn, address tokenOut, uint256 amountIn) public {
        require(pools[tokenIn].totalBalance > 0 && pools[tokenOut].totalBalance > 0, "Invalid pool");
        require(amountIn > 0, "Invalid amount");
        require(IERC20(tokenIn).balanceOf(msg.sender) >= amountIn, "Insufficient balance");

        uint256 amountOut = calculateAmountOut(tokenIn, tokenOut, amountIn);

        pools[tokenIn].balances[msg.sender] += amountIn;
        pools[tokenIn].totalBalance += amountIn;
        pools[tokenOut].balances[msg.sender] -= amountOut;
        pools[tokenOut].totalBalance -= amountOut;

        IERC20(tokenIn).transferFrom(msg.sender, address(this), amountIn);
        IERC20(tokenOut).transfer(msg.sender, amountOut);
    }

    function calculateAmountOut(address tokenIn, address tokenOut, uint256 amountIn) internal view returns (uint256) {
        uint256 tokenInBalance = pools[tokenIn].totalBalance;
        uint256 tokenOutBalance = pools[tokenOut].totalBalance;
        uint256 tokenInWeight = pools[tokenIn].totalWeight;
        uint256 tokenOutWeight = pools[tokenOut].totalWeight;
        uint256 swapFee = pools[tokenIn].swapFee;

        uint256 amountInWithFee = amountIn * (1000 - swapFee);
        uint256 numerator = amountInWithFee * tokenOutBalance * tokenOutWeight;
        uint256 denominator = tokenInBalance * tokenInWeight * 1000 + amountInWithFee * tokenInWeight;

        return numerator / denominator;
    }
}

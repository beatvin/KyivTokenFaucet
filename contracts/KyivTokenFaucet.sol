// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

interface IERC20 {
    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );

    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function transfer(address to, uint256 amount) external returns (bool);

    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}

contract KyivTokenFaucet {
    address KyivTokenAddress = 0xD4A5B4E189A6df7060a4172c0fBbE160bA1E2bb2;

    address KyivTokenOwnerAddress = 0x5Dd1187ab3f21eFc415acE15d9f94d043948ed7F;

    IERC20 KyivToken = IERC20(KyivTokenAddress);

    function getOneToken() external {
        KyivToken.transferFrom(KyivTokenOwnerAddress, msg.sender, 1 ether);
    }
}

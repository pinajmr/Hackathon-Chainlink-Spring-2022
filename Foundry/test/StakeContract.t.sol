// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "ds-test/test.sol";
import "../src/StakeContract.sol";
import "../src/mocks/MockERC20.sol";

contract StakeContractTest is DSTest {
    StakeContract public stakeContract;
    MockERC20 public token;
    uint256 public constant AMOUNT = 1e18;

    function setUp() public {
        stakeContract = new StakeContract();
        token = new MockERC20();
    }

    function testStakingTokens() public {
        token.approve(address(stakeContract),AMOUNT);
        bool success = stakeContract.stake(AMOUNT,address(token));
        assertTrue(success);
    }
}

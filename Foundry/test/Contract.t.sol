// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../src/Contract.sol";
import "ds-test/test.sol";

contract ContractTest is DSTest {
    Contract public myContract;
    function setUp() public {
        myContract = new Contract();
    }

    function testInitializedCorrectly() public {
        assertTrue(myContract.number() == 0);

        myContract.setNumber(777);
        assertTrue(myContract.number() == 777);
    }
}

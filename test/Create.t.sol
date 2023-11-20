// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";
import {NonMatchingSelectorHelper} from "./test-utils/NonMatchingSelectorHelper.sol";

interface Create {
    function makeContract() external returns (address);
}

contract CreateTest is Test, NonMatchingSelectorHelper {
    Create public create;

    function setUp() public {
        create = Create(HuffDeployer.config().deploy("Create"));
    }

    function testCreate() external {
        address newContract = create.makeContract();
        assertEq(newContract != address(0), true, "new contract cannot be address 0");
        
        // console.log("newContract");
        // console.logAddress(newContract);

        // address createAddress = address(create);
        // uint size;
        // assembly{
        //     size :=  extcodesize(newContract)
        // }
        // console.log(size);


        // (bool success1, bytes memory revertData) = address(newContract).call("");
        // console.log("revertData");
        // console.logBytes(revertData);
        // return;

        (bool success, bytes memory data) = newContract.call("");
        require(success, "check return of new contract failed");
        assertEq(
            abi.decode(data, (bytes32)),
            0x00000000000000000000000000000000000000000000000000000000000caffe,
            "expected new contract call to return 0xcaffe"
        );
    }

    /// @notice Test that a non-matching selector reverts
    function testNonMatchingSelector(bytes32 callData) public {
        bytes4[] memory func_selectors = new bytes4[](1);
        func_selectors[0] = Create.makeContract.selector;

        bool success = nonMatchingSelectorHelper(func_selectors, callData, address(create));
        assert(!success);
    }
}

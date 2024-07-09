//  SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

 import "forge-std/Script.sol";

 import { TokenERC1155 } from "../src/TokenErc1155.sol";

 contract ContractScript is Script {
     function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        
        vm.startBroadcast(deployerPrivateKey);

        TokenERC1155 token = new TokenERC1155();

        vm.stopBroadcast();
     }
 }

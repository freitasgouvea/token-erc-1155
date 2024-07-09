// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import { ERC1155 } from "../lib/solmate/src/tokens/ERC1155.sol";
import { Owned } from "../lib/solmate/src/auth/Owned.sol";

contract TokenERC1155 is ERC1155, Owned {
    constructor() ERC1155() Owned(msg.sender) {}

    function mint(
        address to,
        uint256 id,
        uint256 amount,
        bytes memory data
    ) public virtual {
        _mint(to, id, amount, data);
    }

    function batchMint(
        address to,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    ) public virtual {
        _batchMint(to, ids, amounts, data);
    }

    function burn(
        address from,
        uint256 id,
        uint256 amount
    ) public virtual {
        _burn(from, id, amount);
    }

    function batchBurn(
        address from,
        uint256[] memory ids,
        uint256[] memory amounts
    ) public virtual {
        _batchBurn(from, ids, amounts);
    }

    function uri(
        uint256 id
    ) public view virtual override returns (string memory) {}
}

//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Donation {
    address owner;
    uint256 totalDonations;

    struct Donations {
        address donor;
        uint256 amount;
    }

    Donations donation;
    Donations[] donations;

    constructor() {
        owner = msg.sender;
    }

    receive() external payable {
        donation = Donations(msg.sender, msg.value);
    }

    function getDonations() external view returns (Donations[] memory) {
        return donations;
    }

    function getTotalDonations() external view returns (uint256) {
        return totalDonations;
    }
}

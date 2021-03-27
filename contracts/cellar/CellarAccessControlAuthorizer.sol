// SPDX-License-Identifier: MIT
pragma solidity >=0.6.11;

import "./CellarAccessControl.sol";

/*
    Add ability to prevent unwanted contract access to Cellar permissions
*/
contract CellarAccessControlAuthorizer is CellarAccessControl {
    mapping (address => bool) public approved;

    function approveContractAccess(address account) external {
        _onlyGovernance();
        approved[account] = true;
    }

    function revokeContractAccess(address account) external {
        _onlyGovernance();
        approved[account] = false;
    }

    function _authorized() internal view returns (bool) {
        require(approved[msg.sender] || msg.sender == tx.origin, "Access denied for caller");
    }
    uint256[50] private __gap;
}
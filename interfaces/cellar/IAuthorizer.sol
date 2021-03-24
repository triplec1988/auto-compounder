// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.8.2;

interface IAuthorizer {
    function isAllowed(address) external returns (bool);
}
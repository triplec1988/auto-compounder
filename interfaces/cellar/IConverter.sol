// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.8.3;

interface IConverter {
    function convert(address) external returns (uint256);
}
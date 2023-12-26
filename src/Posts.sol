// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Posts is Ownable{
    mapping(int64 => bytes32[]) public posts;

    constructor(address initialOwner) Ownable(initialOwner) {}

    function createPost(int64 _userID, bytes32 _postHash) external onlyOwner{
        posts[_userID].push(_postHash);
    }
    function getPosts(int64 _userID) external view returns (bytes32[] memory){
        return posts[_userID];
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract BlobCheckpoint {
    uint256 public settledBlobsCount;
    bytes32 public latestKzgCommitment;

    event BlobSettled(uint256 indexed blobIndex, bytes32 kzgHash);

    function recordBlobKzg(bytes32 _kzgHash) external {
        settledBlobsCount += 1;
        latestKzgCommitment = _kzgHash;
        emit BlobSettled(settledBlobsCount, _kzgHash);
    }
}

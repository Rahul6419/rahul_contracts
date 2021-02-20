// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;
import "./ERC721Full.sol";

contract CryptoVouch is ERC721Full {
  uint storedData;
  //bytes32 hashval;
  //mapping(string=> bytes32)  IdToHash;
  mapping(bytes32=> uint)  hashToId;
  
  constructor() ERC721Full("My Tokenised Capital","MYTC") public{
	}

  function set(uint x) public {
    storedData = x;
  }

  function get() public view returns (uint) {
    return storedData;
  }
  
  function hashmint(uint _id, string memory _text) public payable {
    //require(ownerOf(_id));
	bytes32 hashval = keccak256(abi.encodePacked(_text));
	_mint(msg.sender, _id);
	//IdToHash[_text]=hashval;
	hashToId[hashval]=_id;
  }

  
   function validate(string memory _val) public view returns (bool verified)
   {
       bytes32 hashh= keccak256(abi.encodePacked((_val)));
       uint id=hashToId[hashh];
       bool ret=false;
       if(id>=0){
           ret=true;
       }
       
       return ret;
       
   }
 }

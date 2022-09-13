
        //SPDX-License-Identifier: MIT
        pragma solidity ^0.8.4;    
        import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
            

import "@openzeppelin/contracts/utils/Counters.sol";
        contract MyFirstContract is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;

    
   

    constructor()ERC721("MyFirstContract","MFC"){
        
    }

     

    function safeMint(address to, string memory uri) public   {
            uint256 tokenId = _tokenIdCounter.current();
            _tokenIdCounter.increment();
            
            _safeMint(to, tokenId);
            
        }
   

    

    
    
    
   
    

    
    
   
}
    
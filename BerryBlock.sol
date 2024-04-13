// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

/**
⠠⠤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣶⣿⣿⣿⣿⡿⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠻⡄⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⡿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Berry Blocks⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣤⣤⣤⣤⣤⣤⣤⣄⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣧⠀⠀⣀⣤⣤⣴⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣦⣤⣄⣀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⡄⠀⠀⠀⠀⠀⠀⣿⣿⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛⠁⠀⠀⠀⠀
⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⠿⠛⠉⠀⣀⣀⣴⣊⣀⠄
⠀⠀⠀⠀⠀⣇⠀⠀⢠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⠿⠿⠿⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢟⣯⢿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⡟⣽⣶⣿⣿⣿⡿⠿⣿⣟⣛⡿⠯⠭⠭⢤⣤⠾⢶⣶⣖⣟⠛⠛⠛⠛⢻⣷⡚⢲⠞⠖⠚⠿⠭⢭⣟⣛⣛⣛⣋⣉⣁⠤⠤⠚⠋⠀⠈⢻⡒⠳⣄⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢰⣿⣟⣿⡭⠽⣶⠞⠛⠉⠉⠀⠀⠀⠀⣰⣾⣥⣤⣈⠻⣿⣞⣦⠀⠀⠀⠀⢻⣷⠟⠀⠀⣤⣤⣶⠶⢶⣮⡝⢿⣍⠫⣄⠀⠀⠀⠀⠀⠀⠀⢻⡷⣽⡆⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢸⡇⠀⠀⠀⢰⡇⠀⠀⠀⠀⠀⠀⣴⢾⡿⠋⣧⣤⣿⡷⡝⣿⣯⡳⣄⠀⠀⠀⢻⡄⠀⠐⠁⣾⣾⣦⣾⡏⠻⣦⠉⢷⣮⡳⣄⠀⡀⠀⠀⠳⡄⢳⣀⡇⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢸⣇⠀⠀⢀⣿⡟⠀⠀⠀⠀⣰⣾⠁⢸⡇⠀⣿⣿⠘⣇⠀⠈⠻⣷⣌⡶⣶⡀⠀⠻⡄⠀⣄⣿⣻⡟⠋⡇⠀⠟⠁⣸⡏⡟⠷⣝⢮⡳⡄⠀⠹⣎⣿⠁⠀⠀⠀⠀⠐⠀
⠀⠀⠀⠀⢯⠙⠷⣄⣸⡟⠀⡀⢀⡴⠞⠁⣿⡆⠀⠈⠛⠛⠛⠛⠋⠀⠀⠀⣼⢹⡿⠶⣝⡶⣄⠽⣆⠈⠉⠉⠛⠛⠓⠚⠀⠀⣿⡇⡗⠀⠈⠛⣿⣮⣅⠀⠘⣿⡇⠀⠀⠀⠀⠀⢠
⠀⠀⠀⠀⠀⠛⠶⣖⡿⢀⣞⡷⠛⡇⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⡿⠋⠀⠀⠀⠙⠛⠦⢬⣃⡀⠀⠀⠀⠀⠀⠀⠀⣿⣷⠃⠀⠀⢀⣿⠇⢉⡷⢦⣌⣷⠀⠠⣄⡀⠀⠈
⠀⠀⠀⠀⠀⠀⠀⢨⣧⠾⠯⠤⢤⣿⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠚⠋⡟⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠂⠀⠀⠀⠀⠀⠀⣿⢻⠀⠀⠀⢸⣃⡴⠋⠀⠀⠈⠙⠃⠀⠈⠉⠑⠚
⠀⠀⠀⠀⠀⠀⠀⠘⡃⠀⣠⠶⠁⢸⣴⠀⠘⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⢰⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡼⠀⠀⠀⣸⠋⠀⠀⣄⠀⠀⠀⠀⠀⠀⢀⣠⡶
⠀⠀⠀⠀⠀⠀⠀⠀⠛⠛⠶⠶⠤⣤⣿⡀⠀⢸⣿⣆⠀⠀⠀⠀⠀⠀⠀⠘⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⡿⠀⠀⠀⢹⣏⡳⣶⣖⠒⠋⠉⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣷⠀⠸⣿⡍⠳⡄⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡞⣿⠃⠀⠀⣸⠇⠀⠀⠀⠀⠀⠙⠯⢭⣉⣁⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣇⠀⣿⡇⠀⠙⣦⠀⠀⠀⠀⠀⠠⡖⠒⠒⠒⢦⣀⠀⠀⠀⠀⠀⠀⠀⢀⡼⠋⠀⢿⠀⠀⢠⡿⢤⣀⡀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⠀⢸⡇⠀⢠⠏⠳⣄⠀⠀⠀⠀⠉⠉⠓⠒⠛⠉⠀⠀⠀⠀⠀⢀⣴⡟⠁⠀⠀⢸⠀⢠⣿⠁⠰⢬⡙⠲⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⡇⢸⣇⣴⣋⡴⠟⠉⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡾⣻⠏⠀⠀⠀⠀⣸⠀⢸⡏⠀⠀⠀⡇⠀⢹⡆⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⣸⡧⠞⠉⠀⠀⠀⠀⠈⢳⣦⡀⠀⠀⠀⠀⢀⣠⡴⠟⠁⣴⢃⣀⣀⣤⣴⣾⣿⠀⣿⡇⠀⢀⣾⠃⠀⠈⢿⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡾⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣷⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢰⣿⣷⣠⠞⠁⠀⠀⠀⠘⢷⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡼⡄⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠙⢦⡀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡴⢺⣿⣿⡀⠀⠀⠀⠀⠀⣀⣤⡾⠿⠛⠛⠛⠋⠉⠉⠉⠉⠉⠉⠛⠛⠛⠛⠿⢿⣿⣿⡓⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠳⣤⣀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤⠖⠋⠁⠀⣸⠁⠘⣇⢀⣠⠶⠚⠻⠗⠶⠶⣶⣶⣶⡆⠀⠀⠀⠀⠀⠀⣀⣠⣤⣤⣤⣤⣤⣄⣀⣉⡙⠓⠦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠈⠉
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⠀⠀⠀⠀⠀⣠⠏⣠⡴⠛⠉⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⠃⠀⠀⠀⣠⣴⣿⣿⣿⡟⠉⠁⠀⠀⠀⠉⠉⠛⠓⠦⠄⠈⠓⠦⣀⠀⠀⠀⠀⠀⠀⡇⠀⠀
⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⡿⠟⠉⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⠿⠛⠁⠀⠀⢀⣴⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⠈⠛⢦⣄⡀⢀⡼⠃⠀⠀
**/

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";


interface IExternalURIContract {
    function tokenURI(uint _tokenID) external view returns (string memory);
}

contract BerryBlocks is Ownable, ERC721, ERC721URIStorage{
    
    struct Berry{
        address tokenAddress;
        string name;
        string uri;
    }

    Berry[] public berries;

    bool useExternalURI = false;
    address externalURIcontractAddress;
    IExternalURIContract public externalURIcontract;

    constructor(address oran, address chesto, address pecha, address persim) 
    Ownable(msg.sender)
    ERC721("Berry Blocks", "BB")
    {
        //setup berries
        berries.push(Berry(oran, "Oran", ""));
        berries.push(Berry(chesto, "Chesto", ""));
        berries.push(Berry(pecha, "Pecha", ""));
        berries.push(Berry(persim, "Persim", ""));
    }

    function adminUpdateNewBerryType(address tokenAddress, string calldata _name, string calldata _uri) external onlyOwner{
        berries.push(Berry(tokenAddress, _name, _uri));
    }   

    function mintBlock(address berry1, address berry2, address berry3, address berry4) external{
        //Burn 10 of each kind of berry 
        //hash the types
        //mint a new Berry Block
    }

    function _baseURI() internal pure override returns (string memory) {
        return "hi";
    }

    function setExternalURI(address newURIPath, bool use) external onlyOwner{
        useExternalURI = use;
        externalURIcontractAddress = newURIPath;
        externalURIcontract = IExternalURIContract(externalURIcontractAddress);
    }

    // The following functions are overrides required by Solidity.

    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (string memory)
    {
        if(useExternalURI){
            return externalURIcontract.tokenURI(tokenId);
        }else{
            return  super.tokenURI(tokenId);
        }
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

    function testMint() public onlyOwner{

    }
}
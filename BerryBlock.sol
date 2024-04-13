// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

/**
⠠⠤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣶⣿⣿⣿⣿⡿⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠻⡄⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⡿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀pokeblocks⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀
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


contract BerryBlocks is Ownable, ERC721{
    
    struct Berry{
        address tokenAddress;
        string name;
        string uri;
    }

    Berry[] public berries;

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

}
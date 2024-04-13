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

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";


interface IExternalURIContract {
    function tokenURI(uint _tokenID) external view returns (string memory);
}

contract BerryBlocks is Ownable, ERC721, ERC721URIStorage{

    mapping(address => bool) allowedBerry;

    mapping(uint => uint) public cubeKeys;

    mapping(address => string) public berries;

    uint public counter = 1;

    bool useExternalURI = false;
    address externalURIcontractAddress;
    IExternalURIContract public externalURIcontract;

    constructor(address oran, address chesto, address pecha, address persim) 
    Ownable(msg.sender)
    ERC721("Berry Blocks", "BB")
    {
        //setup berries
        berries[oran] = "Oran";
        berries[chesto] = "Chesto";
        berries[pecha] = "Pecha";
        berries[persim] = "Persim";

        allowedBerry[oran] = true;
        allowedBerry[chesto] = true;
        allowedBerry[pecha] = true;
        allowedBerry[persim] = true;
    }

    function adminUpdateNewBerryType(address tokenAddress, string calldata _name, string calldata _uri) external onlyOwner{
        berries[tokenAddress] = _name;
        allowedBerry[tokenAddress] = true;
    }   

    function grind(address berry1a, address berry2a, address berry3a, address berry4a) external{
        //Burn 10 of each kind of berry 
        //hash the types
        //mint a new Berry Block

        require(allowedBerry[berry1a]);
        require(allowedBerry[berry2a]);
        require(allowedBerry[berry3a]);
        require(allowedBerry[berry4a]);

        //burn
        ERC20Burnable berry1 = ERC20Burnable(berry1a);
        berry1.burnFrom(msg.sender, 10*10**18);

        ERC20Burnable berry2 = ERC20Burnable(berry2a);
        berry2.burnFrom(msg.sender, 10*10**18);

        ERC20Burnable berry3 = ERC20Burnable(berry3a);
        berry3.burnFrom(msg.sender, 10*10**18);

        ERC20Burnable berry4 = ERC20Burnable(berry4a);
        berry4.burnFrom(msg.sender, 10*10**18);

        //hash
        cubeKeys[counter] = uint(keccak256(abi.encodePacked(berry1a, berry2a, berry3a, berry4a)));

        //mint
        _safeMint(msg.sender, counter);
        string memory uri = string.concat(
            "{", 
            berries[berry1a],
            "}"
        );

        _setTokenURI(counter, uri);
        counter++;
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
        //remove before deploy.
    }
}
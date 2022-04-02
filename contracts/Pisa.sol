pragma solidity ^0.5.4;

import "./SafeMath.sol";
import "./ERC20.sol";
import "./ERC20Detailed.sol";

/***
    发币合约
 */
contract Pisa  is ERC20, ERC20Detailed{
    modifier onlyOwner {
        require(msg.sender == _owner, "Only owner can call this function.");
        _;
    }

    using SafeMath for uint256;

    /**小数位数 */
    //assert(1 wei == 1);
    //assert(1 szabo == 1e12);
    //assert(1 finney == 1e15);
    //assert(1 ether == 1e18);
    uint256 private _trx_decimals = 8;
 
    address private _owner;


    constructor () public ERC20Detailed("Pisa", "PISA", uint8(_trx_decimals)){
        _owner = msg.sender;
        _mint(msg.sender, 10_000_000_000 * (10 ** uint256(decimals())));
    }

    /**
        获取现在时间
        返回当前的秒数
    */
    function getNow() public view returns (uint256 nowvalue) {
        return now;
    }

    /***
     *  获取小数位数
     * */
    function getDecimals() public view returns (uint256) {
        return _trx_decimals;
    }

    /***
     *  获取小数位数
     * */
    function getOwner() public view returns (address) {
        return _owner;
    }

   
    /**
    冻结或解冻账户
     */
    function freezeAccount(address target, bool freeze) public onlyOwner returns (bool)
    {   
        require(_owner != target, "can not freeze owner");
        return _freezeAccount(target,freeze);
    }



    /* 货币增发 */
    function mintToken(uint256 mintedAmount) public onlyOwner returns(bool) {
        require(_owner == msg.sender, "can not freeze owner");
        _mint(_owner,mintedAmount * (10 ** uint256(decimals())));
        return true;
    }
}

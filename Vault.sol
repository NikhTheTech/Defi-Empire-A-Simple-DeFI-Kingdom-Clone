// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


interface ERC20 {
    function totalSupply() external view returns (uint);

    function balanceOf(address account) external view returns (uint);

    function transfer(address recipient, uint amount) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint);


    function approve(address owner, address spender, uint amount) external returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint amount
    ) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);
}

contract Vault {
    ERC20 public immutable token;

    uint public totalSupply;
    mapping(address => uint) public balanceOf;

    constructor(address _token) {
        token = ERC20(_token);
    }

    function return_contract_address() public view returns(address){
        return address(this);
    }
    function _mint(address _to, uint _shares) private {
        totalSupply += _shares;
        balanceOf[_to] += _shares;
    }

    function _burn(address _from, uint _shares) private {
        totalSupply -= _shares;
        balanceOf[_from] -= _shares;
    }

    function deposit(uint _amount) external  {
        
        uint shares;
        uint balanceBefore = token.balanceOf(address(this));
        if (totalSupply == 0) {
            shares = _amount;
        } else {
            require(balanceBefore > 0, "Vault: balance must be greater than 0");
            shares = (_amount * totalSupply) / balanceBefore;
        }

        _mint(msg.sender, shares);
        token.approve(msg.sender, address(this), _amount); // change 2
        token.transferFrom(msg.sender, address(this), _amount);
    }

    function withdraw(uint _shares) external {
     
        uint amount = (_shares * token.balanceOf(address(this))) / totalSupply;
        _burn(msg.sender, _shares);
        token.transfer(msg.sender, amount);
    }
}

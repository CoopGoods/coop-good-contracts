// contracts/DemurrageableToken.sol
pragma solidity >=0.6.0 <0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DemurrageableToken is ERC20{
  uint256 public _demurrageRate;

  constructor(string memory name, string memory symbol, uint256 initialSupply, uint256 demurrageRate) public payable ERC20(name, symbol){
    _mint(msg.sender, initialSupply);
    _demurrageRate = demurrageRate;
  }

  function demurrageRate() public view returns (uint256) {
    return _demurrageRate;
}
}

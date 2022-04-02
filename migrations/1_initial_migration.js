var Pisa = artifacts.require("./Pisa.sol");
var SafeMath = artifacts.require("./SafeMath.sol");

module.exports = function(deployer) {

  deployer.deploy(Pisa);
};

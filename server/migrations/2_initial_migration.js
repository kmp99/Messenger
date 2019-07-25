var Messengers = artifacts.require("./Messenger.sol");
module.exports = function(deployer) {
  deployer.deploy(Messengers,["Star Wars"].map(x => web3.utils.asciiToHex(x)), {gas: 6700000});
};

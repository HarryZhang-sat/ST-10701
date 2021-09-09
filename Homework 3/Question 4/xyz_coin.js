const XYZCoin = artifacts.require('XYZCoin');

module.exports = function (deployer) {
  deployer.deploy(XYZCoin);
  const accounts = await web3.eth.getAccounts();
	const owner = accounts[0];
};
  
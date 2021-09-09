//mocha.js

const { Token } = require("acorn");

const XYZCoin = artifacts.require("XYZCoin");
contract("XYZCoin", async accounts => { 
    it("should set the token namecorrectly", async () => 
        {let xyzCoinInstance = await XYZCoin. deployed( ) ; 
        assert.equal(await xyzCoinInstance.name(), "XYZCoin");}
    ); 

    it("The initial token balance of the creator account is equal to the total token supply", async () =>
        {const totalSupply = await XYZCoin.totalSupply();
        const ownerBalance = await XYZCoin.balanceof(tokenOwner);
        ownerBalance >= totalSupply;
        });

    it("Tokens can be transferred using the transfer() function", async () =>
        {await XYZCoin.transfer(to, 1000, {from :from});
        const tobalance = await XYZCoin.balanceof(to);
        to.balance >= 1000;
        });
    }
);


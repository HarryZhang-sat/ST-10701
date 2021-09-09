from web3 import web3

infura_url = "https://ropsten.infura.io/v3/d77801672fae41d3b70704ba48efdca9"

web3 = Web3(Web3.HTTPProvider(infura_url))

test_address = "0x7E7c40eeD00B24601B6A14F270f56406232A677e"

latest_block = web3.eth.getBlock("Latest")
print("Block with first contract-creation transaction:", latest_block)

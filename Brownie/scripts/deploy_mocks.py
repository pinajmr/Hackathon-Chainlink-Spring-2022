from brownie import MockV3Aggregator, accounts

DECIMALS = 8
INITIAL_ANSWER = 3000 * DECIMALS

def deploy_mocks():
    account = accounts[0]
    mocks_price_feed = MockV3Aggregator.deploy(DECIMALS, INITIAL_ANSWER, {"from": account})
    return mocks_price_feed
from brownie import accounts, SimpleStorage
from scripts.deploy import deploy_simple_storage

def test_can_set_number():
    # Arrange
    account = accounts[0]
    simple_storage = SimpleStorage.deploy({"from": account})
    expected = 777

    # Act 
    tx = simple_storage.setNumber(expected, {"from": account})
    tx.wait(1)

    # Assert 
    assert simple_storage.number() == expected

def test_dummy():
    assert True
const hre = require('hardhat');

async function main() {
    const simpleStorage = await hre.ethers.getContractFactory('SimpleStorage');
    const simpleStorageContract = await simpleStorage.deploy();
    number = await simpleStorageContract.number();
    console.log(number.toString());

    const transaction = await simpleStorageContract.setNumber(42);
    await transaction.wait(1);
    const updatedNumber = await simpleStorageContract.number();
    console.log(updatedNumber.toString());
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    }
);

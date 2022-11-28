const { ethers } = require("hardhat");

async function main() {
  const whiteListContract = await ethers.getContractFactory("WhiteList");

  const deployedAddress = await whiteListContract.deploy(10);

  await deployedAddress.deployed();

  console.log("Deployed contract Addresses:", deployedAddress.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });

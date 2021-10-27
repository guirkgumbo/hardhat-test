import { ethers } from "hardhat";

// scripts/deploy.js
async function main() {
  // We get the contract to deploy
  const Box = await ethers.getContractFactory("Box");
  console.log("Deploying Box...");
  const box = await Box.deploy();
  await box.deployed();
  console.log("Box deployed to:", box.address);
}

main()
  // eslint-disable-next-line no-process-exit
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    // eslint-disable-next-line no-process-exit
    process.exit(1);
  });

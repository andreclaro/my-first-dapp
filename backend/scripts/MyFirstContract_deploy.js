const hre = require("hardhat");

async function main() {
	const Contract = await hre.ethers.getContractFactory("MyFirstContract");
	const contract = await Contract.deploy();

	await contract.deployed();

	console.log("MyFirstContract deployed to:", contract.address);
}

main().catch((error) => {
	console.error(error);
	process.exitCode = 1;
});
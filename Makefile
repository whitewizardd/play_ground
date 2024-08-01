-include .env

deploy_test: 
	@echo "deploy the "
	@forge script ./script/Tester.s.sol --rpc-url ${SEPOLIA_RPC_URL}  --broadcast --private-key ${PRIVATE_KEY}

deploy_tester:
	@echo "interacting with the call contract..."
	@forge script ./script/Testers.s.sol --rpc-url ${SEPOLIA_RPC_URL} --broadcast --private-key ${PRIVATE_KEY}


get_test_result:
	@echo "retrieving from the state..."
	@forge script ./script/Tester.s.sol --fork-url ${SEPOLIA_RPC_URL}

get_tester_result:
	@echo "reading from the state"
	@forge script ./script/Testers.s.sol --fork-url ${SEPOLIA_RPC_URL}



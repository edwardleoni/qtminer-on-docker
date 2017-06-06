# QTMiner on Docker
A Docker container for mining Ethereum

### Build the image:
`docker build . --build-arg ETHEREUM_ADDRESS=<your-ethereum-address-goes-here> -t ethereum-miner`

### Run the container
`docker run -t -d -v <specify-a-safe-path-to-store-data>:/root/.ethash --name ether-mining ethereum-miner`

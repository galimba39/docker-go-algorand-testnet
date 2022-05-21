# docker-go-algorand. Testnet setup
Docker image for setting up an Algorand testnet node.

1) Build the docker 

> docker build -t algorand_test .

2) Please assigns port 4001 while starting the docker container.

3) Get your API token.

	- Enter the command line Container 
	- Run cat $ALGORAND_DATA/algod.token to obtain your API token
	- Endpoint will be http://localhost:XXXX/ where XXXX is the port you assigned to 4001

### Usage example: python

Please refer to [here](https://developer.algorand.org/docs/sdks/python/#connect-your-client) for the complete example

> from algosdk.v2client import algod <br> 
> algod_address = "http://localhost:XXXX" <br> 
> algod_token = "step3above" <br>
> algod_client = algod.AlgodClient(algod_token, algod_address)




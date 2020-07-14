const HDWalletProvider = require('truffle-hdwallet-provider');
const Web3 = require('web3');
const { interface, bytecode } = require('./compile');

const provider = new HDWalletProvider(
  '9acd58a5ad2548238433fa82ee70e216',
  'https://rinkeby.infura.io/v3/9acd58a5ad2548238433fa82ee70e216'
);

const BEST_GREETING = '88a1046554234a05b1a370a2c1616877';
const BEST_FAREWELL = '88a1046554234a05b1a370a2c1616877';

const web3 = new Web3(provider);

const deploy = async() => {
  const accounts = await web3.eth.getAccounts();

  console.log('Attempting to deploy from account', accounts[0]);

  const result = await new web3.eth.Contract(JSON.parse(interface))
    .deploy({ data: bytecode, arguments: [BEST_GREETING] })
    .send({ gas: '100000', from: accounts[0] });

  console.log('contract porting on', result.options.address);
};
deploy();

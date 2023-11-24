## Have done exercises
- [CallValue](https://github.com/sodexx7/huff-puzzles/blob/main/src/CallValue.huff)
- [CalldataLength](https://github.com/sodexx7/huff-puzzles/blob/main/src/CalldataLength.huff)
- [MyEtherBalance](https://github.com/sodexx7/huff-puzzles/blob/main/src/MyEtherBalance.huff)
- [Add1](https://github.com/sodexx7/huff-puzzles/blob/main/src/Add1.huff)
- [Multiply](https://github.com/sodexx7/huff-puzzles/blob/main/src/Multiply.huff)
- [NonPayable](https://github.com/sodexx7/huff-puzzles/blob/main/src/NonPayable.huff)
- [FooBar](https://github.com/sodexx7/huff-puzzles/blob/main/src/FooBar.huff)
- [SimpleStore](https://github.com/sodexx7/huff-puzzles/blob/main/src/SimpleStore.huff)
- [RevertCustom](https://github.com/sodexx7/huff-puzzles/blob/main/src/RevertCustom.huff)
- [RevertString](https://github.com/sodexx7/huff-puzzles/blob/main/src/RevertString.huff) [✅]
- [SumArray](https://github.com/sodexx7/huff-puzzles/blob/main/src/SumArray.huff) [✅]
- [Keccak](https://github.com/sodexx7/huff-puzzles/blob/main/src/Keccak.huff) 
- [MaxOfArray](https://github.com/sodexx7/huff-puzzles/blob/main/src/MaxOfArray.huff) [✅]
- [Create](https://github.com/sodexx7/huff-puzzles/blob/main/src/Create.huff)   [✅]
- [Emitter](https://github.com/sodexx7/huff-puzzles/blob/main/src/Emitter.huff)
- [Donations](https://github.com/sodexx7/huff-puzzles/blob/main/src/Donations.huff) [✅]
- [SendEther](https://github.com/sodexx7/huff-puzzles/blob/main/src/SendEther.huff)
- [BasicBank](https://github.com/sodexx7/huff-puzzles/blob/main/src/BasicBank.huff)
- [Distribute](https://github.com/sodexx7/huff-puzzles/blob/main/src/Distributor.huff) [✅]
- [SimulateArray](https://github.com/sodexx7/huff-puzzles/blob/main/src/SimulateArray.huff) [✅]

* The marked puzzles, I think they are very important, cause related the complex data structure(mapping array), important opcodes(call,create), how to handle string.

## TODO
1. some opcode should organize more elegant, especially before the SimulateArray, such as distribute

2. https://github.com/daltyboy11/more-evm-puzzles 

3. There are more complex data strucute,such as dynamatic nested data structure(mapping(adrress=uint256[]>)), can inspect all data structure's  types by huff language. 

4. How the solidity handle the return data?  handle all the data in the memory to the requested data type in solidity. such as return bytes,string...

## Notice
1: When write opcodes, should consider reuse the frequent combined code


## Questions
1. Use opcodes implementing the && and || logic. Does bitwise and/ or can implement that feature?


## More resources

- [abi.encode mechniasm](https://www.youtube.com/watch?v=upVloLUw5Z0) 
- https://docs.soliditylang.org/en/develop/abi-spec.html
- https://docs.huff.sh/tutorial/hello-world/#primer-abi-encoding
- [A Complete Guide to Contract Creation on Blockchain & How To Not Get Hacked](https://www.youtube.com/watch?v=eE7QTSNmHxo)
- [geth evm errors](https://github.com/ethereum/go-ethereum/blob/63127f5443bbf4dd6c56fcb11236d35b1ecad848/core/vm/errors.go#L49)

- [Huff Documentation 🐴](https://docs.huff.sh/)
- [Evm codes](https://evm.codes)
- [Huffmate](https://github.com/huff-language/huffmate)
- [Huff Console.log](https://github.com/AmadiMichael/Huff-Console)

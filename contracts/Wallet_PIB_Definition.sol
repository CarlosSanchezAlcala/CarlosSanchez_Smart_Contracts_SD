// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

/**
* @title Contrato inteligente de una Wallet (Envió y recibimiento de dinero).
* @author Carlos Edidson Sanchez Alcala
* @dev Almacena y maneja todo el entorno de una CBDC (BCRP)
*/

contract Wallet_PIB_Definition {

    mapping(address => uint256) private balances;

    event Deposit(address indexed sender, address indexed receiver, uint256 amount);

    constructor(){
    }

    /**
    * @notice Devuelve el saldo del "account".
    */

    function getBalance(address account) public view returns (uint256) {
        return balances[account];
    }

    /**
    * @notice Enviar dinero por medio de un address, si no cumple, se va a enviar un mensaje con error.
    */

    function sendDeposit(address payable addr) public payable {
        require(msg.value > 0, "El valor enviado o depositado, no coincide con la cantidad especificada.");
        balances[addr] += msg.value;
        emit Deposit(msg.sender, addr, msg.value);
    }

    receive() external payable {

    }

    fallback() external payable {

    }

}
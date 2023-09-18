// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

/**
* @title Contrato inteligente de una Wallet (Envió y recibimiento de dinero).
* @author Carlos Edidson Sanchez Alcala
* @dev Almacena y maneja todo el entorno de una CBDC (BCRP)
*/

contract Wallet_PIB_Definition {

    mapping(address => uint256) private balances;

    constructor(){
    }

    /// @dev Obtener y/o consultar el saldo de una dirección
    function getBalance(address account) public view returns (uint256) {
        return balances[account];
    }

    receive() external payable {

    }

    fallback() external payable {

    }

}
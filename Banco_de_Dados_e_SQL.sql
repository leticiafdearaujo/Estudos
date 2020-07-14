Bussiness Inteligence (BI) - Conceito com diversas ferramentas
Data Science - 
Sessão 33 - 210. O que é Big Data - Parte 01
Big Data - Imenso volume de Dados estruturados e não-estruturados. 4V: Volume (Escala de dados), Velocidade (Analise de Dados em tempo real), 
Variedade (Diferentes formas de dados) e Veracidade;

/* Modelagem Básica*/
/*Criando o Banco de Dados*/

CREATE DATABASE PROJETO;

/*Conectando ao Banco de Dados*/

USE PROJETO;

/*Criando a Tabela de Clientes*/

CREATE TABLE CLIENTE (
	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR(30),
	CPF INT(11),
	TELEFONE VARCHAR(30),
	ENDERECO VARCHAR(100)
	);
	
/* Tipagem de Tabelas de Banco de Dados*/

CHAR(10) - Usa 10 bytes. Não varia pois preenche o restante dos campos com espaço.
Mais performática pois não varia. Utilizar quando nunca variar ex: CPF, UF...etc
VARCHAR(10) - Usa a quant de bites ocupada.
ENUM - Funciona como Combox. Somente no MySQL
INT - Não usar números que não serão utilizados para cálculos. Números inteiros.
FLOAT (10,2) - Números reais, com casas decimais. 10 casas no total com 2 depois da virgula;

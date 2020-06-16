SELECT numero,nome FROM banco;
SELECT banco_numero,numero nome FROM agencia;
SELECT numero,nome FROM cliente;

SELECT banco_numero, agencia_numero, numero, digito, cliente_numero 
FROM conta_corrente;

SELECT id, nome FROM tipo_transacao;

SELECT banco_numero, agencia_numero, conta_corrente_numero, cliente_numero, valor 
FROM cliente_transacoes;

SELECT COUNT(1) FROM banco;
SELECT COUNT(1) FROM agencia;

SELECT banco.numero, banco.nome, agencia.numero, agencia.nome 
FROM banco 
JOIN agencia ON agencia.banco_numero = banco.numero;

SELECT banco.numero 
FROM banco 
JOIN agencia ON agencia.banco_numero = banco.numero
GROUP BY banco.numero;

SELECT count(distinct banco.numero)
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero;

SELECT banco.numero, banco.nome, agencia.numero, agencia.nome
FROM banco
LEFT JOIN agencia ON agencia.banco_numero = banco.numero;

SELECT agencia.numero, agencia.nome, banco.numero,banco.nome
FROM agencia
LEFT JOIN banco ON banco.numero = agencia.banco_numero;



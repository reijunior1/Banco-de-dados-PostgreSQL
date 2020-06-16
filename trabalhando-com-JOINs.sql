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

SELECT banco.numero, banco.nome, agencia.numero, agencia.nome
FROM banco
FULL JOIN agencia ON agencia.banco_numero = banco.numero;

CREATE TABLE IF NOT EXISTS testa_a (id serial primary key, valor varchar(20));

CREATE TABLE IF NOT EXISTS testa_b (id serial primary key, valor varchar(20));

INSERT INTO testa_a (valor) VALUES ('Reinaldo');
INSERT INTO testa_a (valor) VALUES ('Patricia');
INSERT INTO testa_a (valor) VALUES ('Christian');
INSERT INTO testa_a (valor) VALUES ('Reinaldo');

INSERT INTO testa_b (valor) VALUES ('Rei');
INSERT INTO testa_b (valor) VALUES ('Pat');
INSERT INTO testa_b (valor) VALUES ('Chris');
INSERT INTO testa_b (valor) VALUES ('Couto');

SELECT tbla.valor, tblb.valor
FROM testa_a tbla
CROSS JOIN testa_b tblb;

SELECT banco.nome,
	   banco.nome,
	   conta_corrente.numero,
	   conta_corrente.digito,
	   cliente.nome
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero
JOIN conta_corrente
	ON conta_corrente.banco_numero = banco.numero
	AND conta_corrente.agencia_numero = agencia.numero
JOIN cliente
	ON cliente.numero = conta_corrente.cliente_numero;







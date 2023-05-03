select * from customers

# Para saber os nomes das colunas e quantas são.
describe customers

# Saber a quantidade de linhas que tem a tabela.
SELECT COUNT(*) FROM customers;

# Alterar o nome da cluna.
ALTER TABLE customers RENAME COLUMN customerNumber TO ID;
ALTER TABLE customers RENAME COLUMN customerName TO nome_do_cliente;
ALTER TABLE customers
RENAME COLUMN contactLastName TO ultimo_nome,
RENAME COLUMN contactFirstName TO primeiro_nome,
RENAME COLUMN phone TO telefone,
RENAME COLUMN addressLine1 TO endereco,
RENAME COLUMN addressLine2 TO complemento,
RENAME COLUMN city TO cidade,
RENAME COLUMN state TO estado,
RENAME COLUMN postalCode TO cep,
RENAME COLUMN country TO pais,
RENAME COLUMN salesRepEmployeeNumber TO numero_de_vendas,
RENAME COLUMN creditLimit TO limite_de_credito;
ALTER TABLE customers
RENAME COLUMN id_endereco to endereco;
ALTER TABLE customers RENAME COLUMN nome_do_cliente to nome_da_empresa;

# Achar clientes que começe com a letra A
SELECT * FROM customers WHERE primeiro_nome LIKE 'A%';










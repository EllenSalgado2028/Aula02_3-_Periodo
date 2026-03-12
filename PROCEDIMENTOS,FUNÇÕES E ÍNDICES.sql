CREATE DATABASE agendabd;
USE agendabd;

CREATE TABLE contato (
  ID_cont INT PRIMARY KEY AUTO_INCREMENT,
  NOME VARCHAR(100) NOT NULL,
  SOBRENOME VARCHAR(100),
  DATA_NASCIMENTO DATE
 );

CREATE TABLE telefone(
  ID_tel INT PRIMARY KEY AUTO_INCREMENT,
  NUMERO VARCHAR(20) NOT NULL,
  TIPO VARCHAR(20) NOT NULL
  ID_cont INT
  );

CREATE TABLE email (
  ID_ema INT PRIMARY KEY AUTO_INCREMENT,
  ENDERECO VARCHAR(100) NOT NULL,
  TIPO VARCHAR(20) NOT NULL,
  fk_ID_const INT
);

/*Inserindo uma coluna da tabela*/
ALTER TABLE telefone ADD COLUMN ID_cont INT;
ALTER TABLE email DROP COLUMN fk_ID_cont;

/*O comando Alter pode tanto aletar para inserir como Excluir uma coluna da tabela*/
ALTER TABLE email DROP COLUMN fk_ID_cont;

/*alterando a tabela telefone e add foreign key*/
ALTER TABLE telefone
ADD CONSTRAINT fk_telefone_contato
FOREIGN KEY(ID_cont) REFERENCES contato(ID_cont);

/*alterando a tabela Email e add foreign key*/
ALTER TABLE email
ADD CONSTRAINT fk_email_contato
FOREIGN KEY(fk_ID_cont) REFERENCES contato(ID_cont);

/*descrevendo todas as tabela*/
SHOW TABLES;

/*Excluir uma  tabela*/
DROP TABLE contato;  
/*Excluir um Banco de Dados*/
drop database AGENDABD;
/*Irá contar a quantidade de emails inseridos na tabela Banco de Dados*/
SELECT COUNT(*) FROM contato;

/*O comando INSERT INTO irá inserir dados na tabela Banco de Dados, é possível inserir 
mais de um registro em apenas um INSERT INTO, vide exemplo*/

INSERT INTO contato (NOME, SOBRENOME, DATA_NASCIMENTO) VALUES
('Ana','Silva','1995-03-12'),
('Bruno','Oliveira','1990-07-21'),
('Carlos','Souza','1988-11-05'),
('Daniela','Costa','1992-01-30'),
('Eduardo','Pereira','1998-09-14'),
('Fernanda','Rodrigues','1994-04-18'),
('Gabriel','Almeida','1996-12-02'),
('Helena','Nascimento','1991-06-25'),
('Igor','Lima','1989-08-09'),
('Juliana','Araújo','1993-10-11'),
('Kleber','Fernandes','1990-05-07'),
('Larissa','Carvalho','1997-02-16'),
('Marcelo','Gomes','1987-03-28'),
('Natália','Martins','1995-11-19'),
('Otávio','Rocha','1992-07-03'),
('Patrícia','Barbosa','1996-09-22'),
('Rafael','Ribeiro','1994-12-15'),
('Sabrina','Freitas','1991-04-01'),
('Thiago','Batista','1988-06-17'),
('Vanessa','Teixeira','1993-08-29'),
('William','Correia','1990-10-13'),
('Yasmin','Monteiro','1998-01-05'),
('Zeca','Moraes','1986-02-20'),
('Aline','Duarte','1997-05-31'),
('Beto','Cavalcanti','1992-09-09'),
('Caio','Peixoto','1994-03-14'),
('Debora','Farias','1991-07-27'),
('Elisa','Queiroz','1996-11-30'),
('Felipe','Sales','1989-12-12'),
('Gustavo','Pinto','1993-01-19'),
('Hugo','Torres','1995-04-23'),
('Isabela','Vasconcelos','1997-06-08'),
('João','Andrade','1990-09-15'),
('Karina','Meireles','1992-02-11'),
('Leandro','Bezerra','1988-05-20'),
('Mariana','Aguiar','1996-08-01'),
('Nicolas','Lacerda','1994-10-06'),
('Olivia','Borges','1993-12-18'),
('Paulo','Campos','1991-01-29'),
('Renata','Rezende','1995-03-09'),
('Sergio','Braga','1987-07-07'),
('Tatiane','Ferraz','1998-04-16'),
('Ubiratan','Vieira','1989-09-24'),
('Valeria','Guimarães','1990-11-02'),
('Wagner','Pacheco','1992-06-14'),
('Xavier','Tavares','1986-08-30'),
('Yuri','Bittencourt','1994-02-03'),
('Zilda','Prado','1997-12-27'),
('André','Paiva','1993-05-12'),
('Bianca','Nogueira','1996-07-19');

INSERT INTO telefone (NUMERO, TIPO, ID_cont) VALUES
('81999990001','Celular',1),
('81999990002','Celular',2),
('8133330003','Residencial',3),
('8133330004','Comercial',4),
('81988880005','Celular',5),
('81988880006','Celular',6),
('81332220007','Residencial',7),
('81332220008','Comercial',8),
('81977770009','Celular',9),
('81977770010','Celular',10),
('81331110011','Residencial',11),
('81331110012','Comercial',12),
('81966660013','Celular',13),
('81966660014','Celular',14),
('81330000015','Residencial',15),
('81330000016','Comercial',16),
('81955550017','Celular',17),
('81955550018','Celular',18),
('81334440019','Residencial',19),
('81334440020','Comercial',20),
('81944440021','Celular',21),
('81944440022','Celular',22),
('81335550023','Residencial',23),
('81335550024','Comercial',24),
('81933330025','Celular',25),
('81933330026','Celular',26),
('81336660027','Residencial',27),
('81336660028','Comercial',28),
('81922220029','Celular',29),
('81922220030','Celular',30),
('81337770031','Residencial',31),
('81337770032','Comercial',32),
('81911110033','Celular',33),
('81911110034','Celular',34),
('81338880035','Residencial',35),
('81338880036','Comercial',36),
('81900000037','Celular'37),
('81900000038','Celular',38),
('81339990039','Residencial',39),
('81339990040','Comercial',40),
('81888880041','Celular',41),
('81888880042','Celular',42),
('81330010043','Residencial',43),
('81330010044','Comercial',44),
('81877770045','Celular'45),
('81877770046','Celular',46),
('81330020047','Residencial',47),
('81330020048','Comercial',48),
('81866660049','Celular',49),
('81866660050','Celular',50);

INSERT INTO email (ENDERECO, TIPO) VALUES
('ana.silva@email.com','Pessoal',1),
('bruno.oliveira@email.com','Pessoal',2),
('carlos.souza@email.com','Trabalho',3),
('daniela.costa@email.com','Pessoal',4),
('eduardo.pereira@email.com','Trabalho',5),
('fernanda.rodrigues@email.com','Pessoal',6),
('gabriel.almeida@email.com','Trabalho',7),
('helena.nascimento@email.com','Pessoal',8),
('igor.lima@email.com','Trabalho',9),
('juliana.araujo@email.com','Pessoal',10),
('kleber.fernandes@email.com','Trabalho',11),
('larissa.carvalho@email.com','Pessoal',12),
('marcelo.gomes@email.com','Trabalho',13),
('natalia.martins@email.com','Pessoal',14),
('otavio.rocha@email.com','Trabalho',15),
('patricia.barbosa@email.com','Pessoal',16),
('rafael.ribeiro@email.com','Trabalho',17),
('sabrina.freitas@email.com','Pessoal',18),
('thiago.batista@email.com','Trabalho',19),
('vanessa.teixeira@email.com','Pessoal',20),
('william.correia@email.com','Trabalho',21),
('yasmin.monteiro@email.com','Pessoal',22),
('zeca.moraes@email.com','Trabalho',23),
('aline.duarte@email.com','Pessoal',24),
('beto.cavalcanti@email.com','Trabalho',25),
('caio.peixoto@email.com','Pessoal',26),
('debora.farias@email.com','Trabalho',27),
('elisa.queiroz@email.com','Pessoal',28),
('felipe.sales@email.com','Trabalho'29),
('gustavo.pinto@email.com','Pessoal',30),
('hugo.torres@email.com','Trabalho',31),
('isabela.vasconcelos@email.com','Pessoal',32),
('joao.andrade@email.com','Trabalho',33),
('karina.meireles@email.com','Pessoal',34),
('leandro.bezerra@email.com','Trabalho',35),
('mariana.aguiar@email.com','Pessoal',36),
('nicolas.lacerda@email.com','Trabalho',37),
('olivia.borges@email.com','Pessoal',38),
('paulo.campos@email.com','Trabalho',39),
('renata.rezende@email.com','Pessoal',40),
('sergio.braga@email.com','Trabalho',41),
('tatiane.ferraz@email.com','Pessoal',42),
('ubiratan.vieira@email.com','Trabalho',43),
('valeria.guimaraes@email.com','Pessoal',44),
('wagner.pacheco@email.com','Trabalho',45),
('xavier.tavares@email.com','Pessoal',46),
('yuri.bittencourt@email.com','Trabalho',47),
('zilda.prado@email.com','Pessoal',48),
('andre.paiva@email.com','Trabalho',49),
('bianca.nogueira@email.com','Pessoal',50);

  /*Excluir um registro de uma tabela*/  
DELETE FROM contato WHERE ID_cont=2;
  
  /*Listar o conteúdo de uma tabela*/    
  SELECT * FROM contato;
  
   /*Usando Inner Join nas tabelas*/   
SELECT c.ID_cont, c.NOME, c.SOBRENOME, t.NUMERO 
FROM contato c
INNER JOIN telefone t
ON c.ID_cont = t.ID_cont;

/*Usando left Join nas tabelas*/
SELECT c.ID_cont, c.NOME, c.SOBRENOME, t.NUMERO 
FROM contato c
LEFT JOIN telefone t 
ON c.ID_cont = t.ID_cont;

/*Usando rigth Join nas tabelas*/
SELECT c.ID_cont, c.NOME, c.SOBRENOME, t.NUMERO 
FROM contato c
RIGHT JOIN telefone t
ON c.ID_cont = t.ID_cont;

/*Usando cross Join nas tabelas*/
SELECT c.ID_cont, c.NOME, c.SOBRENOME, t.NUMERO 
FROM contato c
INNER JOIN telefone t ON c.ID_cont = t.ID_cont;

/*Unindo tabelas, para isso é necessário chamar "atributos" que seja
parecidos em ambas as tabelas*/
SELECT ID_cont FROM contato
UNION
SELECT fk_ID_cont FROM email;

/*Usando UNION nos Joins nas tabelas*/
SELECT c.ID_cont, c.NOME, c.SOBRENOME, t.NUMERO 
FROM contato c
CROSS JOIN telefone t 
ON c.ID_cont = t.ID_tel
UNION
SELECT c.ID_cont, c.NOME, c.SOBRENOME, t.NUMERO 
FROM contato c
LEFT JOIN telefone t ON c.ID_cont = t.ID_tel;

/*Usando Allias para trazer nome diferente em um único campo da tabela apenas para uma única consulta*/
SELECT SOBRENOME AS SEGUNDO_NOME
FROM contato;

  /*Usando Allias para trazer mais de um nome diferente na tabela 
  lembrando que ele seguirá a ordem de solicitação, buscando primeiro da 
  esquerda para direita apenas para uma única consulta*/
SELECT SOBRENOME AS SEGUNDO_NOME, NOME AS APELIDO
FROM contato; 

/*Usando Allias com a consição WHERE para buscar um resultado especifico a partir do ID na tabela.
A regra antes da condição WHERE de busca, segue a regra logo acima*/
SELECT SOBRENOME AS SEGUNDO_NOME, NOME AS APELIDO
FROM contato WHERE ID_cont = 1;
  
  
/*Funções e Procedimentos no MySQL
Uma função é usada para gerar um valor que pode ser usado em uma expressão. 
Esse valor é geralmente baseado em um ou mais parâmetros fornecidos à
 função. As funções são executadas geralmente como parte de uma expressão.
 PARA VERIFICAR ONDE FICAM SALVAS ESSAS ROTINAS, É NECESSÁRIO ESCOLHER UM BANCO DE DADOS
 E EM FUNCTIONS, VERIFICAR SE ESTÃO SENDO SALVAS NESSA PARTE
 */

/*
A sintaxe de uma função é:

CREATE FUNCTION nome_funcao (parametros)
RETURNS tipo_de_dados
codigo_funcao;
*/

/* PARA CRIAR UMA FUNÇÃO DEIXE SEMMPRE UMA LETRA QUE FAÇA MENSÃO QUE É UMA FUNÇÃO 
POR ISSO O "FN" NA FRENTE DO ATRIBUTO VALOR. */
CREATE FUNCTION fn_valor (a DECIMAL(10,2), b INT)
RETURNS INT
RETURN a * b;

/*
Para invocar a função o comando é:
SELECT nome_funcao(parametros)
*/
/*NESTE SELECT ABAIXO, FOI PEDIDO PARA SER FEITA A MULTIPLICAÇÃO
ENTRE OS VALORES NO PARATENSES*/
SELECT fn_valor(2.5,4)AS RESULTADO;

/*
CRIE UMA FUNÇÃO QUE RETORNA OS VALORES DAS OPERAÇÕES
SOMA
DIVISÃO
SUBTRAÇÃO 
*/

/*
BUSCAR VALORES COM FUNÇÕES CRIADAS NO BANCO*/
/* NA TABELA ABAIXO, CRIADO FOI UM ID PARA UM DETERMINADO COLABORADOR E UM SALÁRIO
APÓS ISSO, INSERT DE TRÊS VALORES DIFERENTES PARA FAZER A PROJEÇÃO DO NOVO VALOR DESTE SALÁRIO
CRIANDO UM CÁLCULO COM A FUNÇAO JÁ ARMANEZADA. PARA FAZER ISSO BASTA 
PASSAR UM SELECT COMO NO EXEMPLO E JUNTAR COM UM ALLIAS PARA CRIAR UMA TABELA TEMPORARIA 
E RETORNAR UM VALOR QUE VAI SER DESCRITO NO NOVO SALÁRIO*/
CREATE TABLE salario(
Id int primary key auto_increment,
salario decimal(10,2));

insert into salario (salario) values
(100),
(200),
(300);

SELECT salario, fn_valor(salario,4) AS NOVO_SALARIO
FROM salario 
WHERE Id= 3;

/*E COMO FAZER PARA EXCLUIR UMA FUNÇÃO?*/
/*EXISTEM DOIS MODOS, DIRETAMENTE NA FUNÇÃO COM O BOTÃO DIREITO DO MOUSE OU COM LINHA DE COMANDO
*/
DROP FUNCTION fn_valor;

/*STORED PROCEDURES 
PROCEDIMENTO DE ARMAZENAMENTO- É UMA SUB-ROTINA
PARA APLICAÇÕES QUE BUSCAM NOS BANCOS RELACIONAIS.
SÃO USADAS PARA VALIDAÇÃO DE DADOS, CONTROLE DE ACESSO
EXECUÇÃO DE DECLARAÇÕES SQL UM POUCO MAIS COMPLEXAS
FOI IMPLEMENTADO A PARTIR DO MYSQL 5.0 .
*/

/*COMO É CRIADO?
CREATE PROCEDURE nome_procedimento(parêmetros)declarações;
NO PROCEDIMENTO ABAIXO, VAMOS VER OS SALÁRIOS DOS FUNCIONÁRIOS
verSalario = NOME DO PROCEDIMENTO
varValor= NOME DA VARIÁVEL
SMALLINT = É NECESSÁRIO DIZER QUAL O TIPO DE DADO 
DESTE PARÂMETRO
 
*/
CREATE PROCEDURE verSalario (varValor INT
BEGIN)
SELECT CONCAT( 'Os salarios são: ' ,salario) AS Novo_Salario
FROM salario
WHERE Id = varValor;
END //

DELIMITER ;

/*INVOCANDO PROCEDIMENTOS
CALL nome_procedimento(parâmetros); 
*/
CALL verSalario(2);

/*APAGANDO PROCEDIMENTOS
PARA ISSO BASTA USAR O COMANDO 
DROP PROCEDURE nome_procedimento*/

DROP PROCEDURE verSalario;

/* CRIANDO ÍNDICES EM TABELAS */
/* O QUE SÃO INDICES EM TABELAS?
É O PROCESSO DE CRIAR ÍNDICES EM TABELAS, A SUA FUNÇÃO É FACILITAR A BUSCA DE UM 
REGISTRO NA TABELA COM UM DETERMINADO VALOR EM UMA COLUNA. 
COM ISSO, O MySQL BUSCA DIRETAMENTE ESSA LINHA EM VEZ DE BUSCAR TODOS
REGISTROS DE UMA TABELA. DEIXANDO DE FAZER O LOOP ATÉ ENCONTRAR O RESULTADO
DESEJADO
 */
 
 /* POR PADRÃO O MySQL JÁ FAZ A CRIAÇÃO DE ÍNDICES AUTOMATICAMENTE
 SÃO ELES:
 PRIMARY KEY
 FOREIGN KEY
 CONSTRAINT UNIQUE
 */
 
 /* EXISTEM DOIS TIPOS DE ÍNDICES:
 Cluster é um termo em inglês que significa “aglomerar” ou “aglomeração” e pode 
 ser aplicado em vários contextos. No caso da computação, o termo define uma arquitetura de sistema 
 capaz combinar vários computadores para trabalharem
 em conjunto ou pode denominar o grupo em si de computadores combinados
 
 ÍNDICES CLUSTERIZADOS:
 ALTERAM A FORMA COMO OS DADOS VÃO SER ORGANIZADOS, ALINHANDO POR PRIMEIRO
 , OU SEJA, ARMAZENANDO NO TOPO AS LINHAS DE ACORDO QUE FORAM DEFINIDAS
 NO ÍNDICE.
 REGRA: UMA TABELA SÓ PODE TER UM ÍNDICE CLUSTERIZADO
 GERALMENTE É A CHAVE PRIMARIA OU UMA COLUNA QUE POSSUA 
 UMA COLUNA UNIQUE
 SE A TABELA NÃO POSSUE UM ÍNDICE CLUSTERIZADO, O ARMAZENAMENTO DA LINHA
 É FEITA NUMA ESTRUTURA CHAMADA NÃO ORDENADA DENOMINADA HEAP
 */
 
 
 /*ÍNDICES NÃO CLUSTERIZADOS:
 OS DADOS AQUI ARMAZENADOS NÃO SÃO ALTERADOS, OS OBJETOS 
 CRIADOS NAS TABELAS SÃO SEPARADOS E SUA BUSCA VEM A 
 PARTIR DA TABELA ORIGINAL.
 SÃO BASEADOS EM VALORES-CHAVE
 REGRA- UMA TABELA PODE HAVER VÁRIOS ÍNDICES NÃO CLUSTERIZADOS
 */
 
 /*
 COMO CRIAR ÍNDICES EM TABELAS JÁ EXISTENTES?
USAMOS O COMANDO CREATE PARA FAZER ISSO, COMO PODE SER VISTO 
NO COMANDO ABAIXO:
 */
/*CREATE [UNIQUE] INDEX nome_indice
ON nome_tabela(
coluna1 [ASC | DESC],
[coluna2[ASC | DESC]]
);

A PALAVRA UNIQU É PARA NÃO FAZER A REPETIÇÃO DO DADO 
*/

/* DECLARAÇÃO PARA CRIAR EM UMA TABLE JÁ EXISTENTE
ALTER TABLE nome_tabela ADD INDEX nome_indice(colunas)
*/


/*COMANDOS INDEX

SHOW INDEX FROM contato; VAI PERMITIR VERIFICAR O ÍNDICE DA TABELA

*/

SHOW INDEX FROM contato;

/*COMANDOS INDEX
BETREE É O TIPO DE ORGANIZAÇÃO DO ÍNDECE, EXISTEM VÁRIOS TIPOS
 A SIGLA SIGNIFICA BALANCE TREE, ÁRVORE BALANCEADA, ALGORITMO 
 UTILIZADO PARA FAZER INDEXAÇÃO. 
*/
 
 /*COMANDOS INDEX
EXPLAIN- VAI EXPLANAR, OU SEJA, EXPLICAR TUDO O QUE VEM A FRENTE DELE
NO COMANDO ABAIXO USANDO O SELECT PARA DEMONSTRAR ISSO.
ESTE COMANDO SERVE PARA APLICAR OTMIZAÇÃO DE PERFORMANCE NO BANCO
*/
EXPLAIN SELECT * FROM contato WHERE ID_cont=1;
EXPLAIN SELECT * FROM contato WHERE nome='Italo';

/*COMANDOS INDEX
APLICANDO NA TABELA UM ÍNDICE, USAREMOS A TABELA CONTATO 
E A LINHA nome. 
LOGO APÓS A PALAVRA RESERVADO INDEX USE UM idx PARA DEIXAR 
CLARO QUE VOCÊ CRIOU UM ÍNDICE NA SUA TABELA 
PARA VERIFICAR ESTE ÍNDICE CRIADO PARA IR NO SHOW INDEX.
*/
CREATE INDEX idx_nome ON contato(nome);

/*COMANDOS INDEX
NÃO VÁ CRIANDO ÍNDICES EM VÁRIAS TABELAS, É ALGO POUCO PROVEITOSO. 
ENTRETANTO, SE A TABELA FOR MUITO CONSULTADO, É PROVEITOSO CRIAR 
UM ÍNDICE SIM NA TABELA.  
NÃO USE EM COLUNAS QUE SÃO ALTERADAS, POIS O ÍNDICE DEMORA A RETORNAR OS DADOS, 
PELO SIMPLES FATO DE QUE ELE PRECISA SER REFEITO. 
*/

/*COMANDOS INDEX
APAGANDO UM ÍNDICE DA TABELA, PARA ISSO DIGA O NOME DO ÍNDICE E 
ONDE ELE SE ENCONTRA E APAGUE. PARA CONSULTAR SE FOI APAGADO, 
USE OS COMANDO ANTERIORES DE CONSULTAS.
*/
DROP INDEX idx_nome ON contato;


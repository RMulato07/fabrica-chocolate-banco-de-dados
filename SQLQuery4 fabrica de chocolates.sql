CREATE DATABASE bdFabricaChocolates

--DROP DATABASE	bdFabricaChocolates

USE bdFabricaChocolates

CREATE TABLE tbTipoProduto(
	idTipoProduto INT PRIMARY KEY IDENTITY (1,1)
	,nomeTipoProduto VARCHAR (80)
	,descricaoTipoproduto VARCHAR(100)
)

CREATE TABLE tbtipochocolate(
	idtipochocolate INT PRIMARY KEY IDENTITY (1,1)
	,nometipochocolate VARCHAR(80)
	,descricaotipochocolate VARCHAR(100)
)
 CREATE TABLE tbtipodecoracao(
	idtipoDecocaraco INT PRIMARY KEY IDENTITY (1,1)
	,nomeTipodecoracao VARCHAR (80)
	,descricaoTipodecoracao VARCHAR(100)
 )
CREATE TABLE tbcliente(
	idcliente INT PRIMARY KEY IDENTITY(1,1)
	,nomeCliente VARCHAR (80)
	,cpfCliente CHAR (14) UNIQUE
	,lougradouroCliente VARCHAR(50)
	,numLogCliente VARCHAR(5)
	,compCliente VARCHAR (20)
	,bairroCliente VARCHAR (30)
	,cidadeCliente VARCHAR(30)
	,ufCliente CHAR(2)
	,cepCliente CHAR(10)
)
CREATE TABLE tbfoneCliente(
	idfoneCliente INT PRIMARY KEY IDENTITY(1,1)
	,numeCliente VARCHAR(20)
	,idcliente INT FOREIGN KEY REFERENCES tbcliente(idcliente)
)
CREATE TABLE tbproduto(
	idproduto INT PRIMARY KEY IDENTITY(1,1)
	,nomeProduto VARCHAR (80)
	,gramaturaProduto VARCHAR(50)
	,valorProduto VARCHAR (10)
	,idtipoproduto INT FOREIGN KEY REFERENCES tbtipoproduto(idtipoproduto)
	,idtipodecoracao INT FOREIGN KEY REFERENCES tbtipodecoracao(idtipoDecocaraco)
	,idtipochocolate INT FOREIGN KEY REFERENCES tbtipochocolate(idtipochocolate)
)
CREATE TABLE tbecomenda(
	idecomenda INT PRIMARY KEY IDENTITY(1,1)
	,dataEcomenda CHAR(8)
	,valorEcomenda VARCHAR(10)
	,idpoduto INT FOREIGN KEY REFERENCES tbproduto(idproduto)
	,idcliente INT FOREIGN KEY REFERENCES tbcliente(idcliente)
)
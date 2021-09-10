
create table dbo.Info(
idInfo int Primary Key Identity(1,1) not null,
Nome varchar(50) not null,
Cpf varchar(50) not null,
Rg varchar(8) not null,
)

create table dbo.PessoaInfo(
 idPessoa int not null,
 Constraint fkDados1 Foreign Key(idPessoa) REFERENCES dbo.Info (idInfo)
)

create table dbo.ClienteInfo(
idCliente int Primary Key IDENTITY(1,1) not null,
Vip bit not null,
idDados int not null,
Constraint fkDados2 Foreign Key (idDados) REFERENCES dbo.Info (idInfo)
)

-- Tabela dados crus devedores atuais
create table CadastroCobranca (
coigodivida decimal(5),
nomedevedor char(30),
idade decimal(3),
valordivida float (7),
instituicao char (50));
insert into CadastroCobranca values (3456, "Julio Castro", 56, 15000, "Santander"), (3426, "Fernanda Souza", 28, 13400, "Extra"), 
(3896, "Daniel Almeida", 24, 17000, "Santander"), (3776, "Luiza Rossi", 34, 1890, "Itaú"), (3459, "Lucia Sano", 37, 1000, "Bradesco"), 
(3136, "Carlos Silva", 47, 1500, "Santander"), (3412, "Henrique Dias", 48, 15600, "Casas Bahia"), (2356, "Juliana Ferreira", 22, 10000, "Santander"),
(7856, "Geraldo Coutinho", 30, 30000, "Bradesco"), (3348, "Joao Muller", 33, 8700, "Itaú");

select * from CadastroCobranca;
select distinct idade from CadastroCobranca;
select valordivida from CadastroCobranca where valordivida > 8700;

-- tabela dados crus devedores antigos



create table DevedoresAntigos (
coigodivida decimal(5),
nomedevedor char(30),
sexo char (2),
idade float (3),
renda float (10),
escolaridade char (20),
dependentes int (10),
valordivida float (7),
instituicao char (50),
stato char(15));
insert into DevedoresAntigos values (3456, "Antonio Costa", "m", 44, 5000, "superior completo", 3, 15000, "Santander", "quitado"), (3426, "Beatriz Souza", "f", 28, 3000, "superior incompleto", 2, 13400, "Extra", "nao-quitado"), 
(3896, "Daniel Terra", "m", 24, 2700, "tecnico", 1, 17000, "Santander", "nao-quitado"), (3776, "Luiz Gigardi", "m", 34, 7000, "superior completo", 2, 1890, "Itaú", "quitado"), (3459, "Lucia Santos",  "f",  37, 9000, "superior completo", 0,  1000, "Bradesco", "quitado"), 
(3136, "Miguel Silva", "m", 37, 3700, "medio", 2, 1500, "Santander", "nao-quitado"), (3412, "Henrique Moraes", "m",  28, 2300, "superior incompleto", 0, 15600, "Casas Bahia", "nao-quitado"), (2356, "Joana Carvalho", "f", 25, 1900, "medio", 1, 10000, "Santander", "quitado"),
(7856, "Filipe Nogueira", "m",  33, 6000, "superior completo", 0, 30000, "Bradesco", "quitado"), (3348, "Guilherme Schmidt", "m", 33, 5600, "tecnico", 3, 8700, "Itaú", "nao-quitado");

select * from DevedoresAntigos;
select distinct idade from DevedoresAntigos;

select avg (idade) from DevedoresAntigos where stato ="nao-quitado";

select avg (dependentes) from DevedoresAntigos where stato ="nao-quitado";

select avg (renda) from DevedoresAntigos where stato ="nao-quitado";

declare @
select avg (idade, dependentes, renda ) into @idade, @dependentes, @renda, from DevedoresAntigos  where stato ="nao-quitado";

print @idade, @dependentes, @renda;
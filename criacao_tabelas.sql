CREATE TABLE usuario(
	nome_usuario varchar(100) NOT NULL,
	email varchar(100),
	data_nasc date,
	tipo varchar(100),
	cpf_usuario bigint PRIMARY KEY 
)

CREATE TABLE pesquisador(
	tipo_bolsa varchar(100),
	minibiografia varchar(100),
	cpf_pesquisador bigint PRIMARY KEY,
	FOREIGN KEY (cpf_pesquisador) REFERENCES usuario(cpf_usuario)
)

CREATE TABLE memorias(
tipo_memoria varchar(100) NOT NULL,
link_memoria varchar(100) NOT NULL,
cpf bigint,
	FOREIGN KEY (cpf) REFERENCES pesquisador(cpf_pesquisador)
ON DELETE SET NULL
)

CREATE TABLE relatorio(
link_relatorio varchar(100) NOT NULL,
data_relatorio DATE NOT NULL,	
cpf bigint ,
mes_relatorio smallint,
ano_relatorio smallint,	
	FOREIGN KEY (cpf) REFERENCES pesquisador(cpf_pesquisador)
ON DELETE SET NULL
)

CREATE TABLE nucleo(
	descricao varchar(100),
	nome_nucleo varchar(100) PRIMARY KEY
)

CREATE TABLE linhas_pesquisa(
	nome_nucleo varchar(100),
	numero_linha int PRIMARY KEY,
	decricao_curta varchar(100) NOT NULL,
	descricao_longa varchar(100) NOT NULL,
	FOREIGN KEY (nome_nucleo) REFERENCES nucleo(nome_nucleo)
)

CREATE TABLE pertence(
	cpf_usuario bigint,
	numero_linha smallint,
	e_principal BOOLEAN NOT NULL,
	e_lider_pesquisa BOOLEAN NOT NULL,
	FOREIGN KEY (cpf_usuario) REFERENCES pesquisador(cpf_pesquisador),
	FOREIGN KEY (numero_linha) REFERENCES linhas_pesquisa(numero_linha)
)


--------------TRIGGER---------------------		
CREATE OR REPLACE FUNCTION Function_ExtractDate()
RETURNS trigger AS $$
BEGIN
IF (TG_OP = 'UPDATE' OR TG_OP = 'INSERT') THEN
 IF (NEW.data_relatorio IS NOT NULL) THEN
	
	NEW.ano_relatorio = extract(YEAR FROM NEW.data_relatorio);
    NEW.mes_relatorio = extract(MONTH FROM NEW.data_relatorio); 
	
 end if;
end if;
 
RETURN NEW; 
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER data_relatorio
    BEFORE INSERT or UPDATE ON relatorio
    FOR EACH ROW
    EXECUTE PROCEDURE Function_ExtractDate();
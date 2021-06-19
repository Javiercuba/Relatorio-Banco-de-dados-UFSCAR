-------------------------- Tabela Usuario ----------------------------------------------
INSERT INTO usuario VALUES('gabriel', NULL ,'06-19-2000','Pesquisador',180947216676)
INSERT INTO usuario VALUES('yasmin', 'yasmin@gmail.com','Pesquisador','19-06-1996',12345843276)
INSERT INTO usuario VALUES('renato', 'renato@gmail.com','Pesquisador','19-06-2000',44345378710)
INSERT INTO usuario VALUES('lumena', 'lumena@gmail.com','Pesquisador','09-02-1996',93828293928)

-------------------------- Tabela Pesquisador -------------------------------------------
INSERT INTO pesquisador VALUES('Extensao', 'minibiografia da yasmin',12345843276)
INSERT INTO pesquisador VALUES('Extensao', 'minibiografia do renato',44345378710)
INSERT INTO pesquisador VALUES('Extensao', 'minibiografia da lumena',93828293928)

-------------------------- Tabela Memorias ---------------------------------------------
INSERT INTO memorias VALUES('Video','meuvideo.com',12345843276)
INSERT INTO memorias VALUES('Artigo','meusvideo.com',12345843276)
INSERT INTO memorias VALUES('Video','meusvideo.com',12345843276)

INSERT INTO memorias VALUES('Video','meuvideo.com',93828293928)
INSERT INTO memorias VALUES('Artigo','meusvideo.com',93828293928)
INSERT INTO memorias VALUES('Video','meusvideo.com',93828293928)

-------------------------- Tabela Relatorio --------------------------------------------

INSERT INTO relatorio VALUES('Relatorio Trimestral','05-02-2020',12345843276)
INSERT INTO relatorio VALUES('Relatorio Mensal','05-03-2020',12345843276)
INSERT INTO relatorio VALUES('Relatorio Mensal','05-04-2020',12345843276)


INSERT INTO relatorio VALUES('Relatorio Trimestral','05-02-2019',44345378710)
INSERT INTO relatorio VALUES('Relatorio Mensal','05-03-2019',44345378710)
INSERT INTO relatorio VALUES('Relatorio Mensal','05-04-2018',44345378710)

-------------------------- Tabela Nucleo ------------------------------------------------
INSERT INTO nucleo VALUES('Primeiro nucleo','Nucleo 1')
INSERT INTO nucleo VALUES('Segundo nucleo','Nucleo 2')
INSERT INTO nucleo VALUES('Terceiro Nucleo','Nucleo 3')

-------------------------- Tabela Linhas de Pesquisa ------------------------------------
INSERT INTO linhas_pesquisa VALUES ('Nucleo 1',3,'Linha numero tres','Essa eh a terceira melhor linha')
INSERT INTO linhas_pesquisa VALUES ('Nucleo 3',1,'Linha numero um','Essa eh a melhor linha')
INSERT INTO linhas_pesquisa VALUES ('Nucleo 2',2,'Linha numero dois','Essa eh a segunda melhor linha')
INSERT INTO linhas_pesquisa VALUES ('Nucleo 3',4,'Linha numero quatro','Essa eh a quarta melhor linha')
INSERT INTO linhas_pesquisa VALUES ('Nucleo 1',5,'Linha numero cinco','Essa eh a quinta melhor linha')

-------------------------- Tabela Pertence ----------------------------------------------
INSERT INTO pertence VALUES (12345843276,3,TRUE,TRUE)
INSERT INTO pertence VALUES (12345843276,1,TRUE,TRUE)
INSERT INTO pertence VALUES (44345378710,3,TRUE,TRUE)
INSERT INTO pertence VALUES (93828293928,2,TRUE,TRUE)







---- Listando as memorias e relatórios de um pesquisador ----
SELECT 
	usuario.nome_usuario,
	usuario.cpf_usuario, 
	memorias.tipo_memoria,
	memorias.link_memoria,
	relatorio.data_relatorio
FROM usuario
INNER JOIN memorias 
	ON usuario.cpf_usuario = memorias.cpf
INNER JOIN relatorio 
	ON usuario.cpf_usuario = relatorio.cpf
	Where usuario.cpf_usuario = 13626640736;


------  Total de linhas de pesquisa por pesquisador  --------

SELECT usuario.nome_usuario,usuario.cpf_usuario, count(pertence.numero_linha) as numero_linhas
FROM pertence 
INNER JOIN usuario
	ON usuario.cpf_usuario = pertence.cpf_usuario
GROUP BY usuario.cpf_usuario


-----  Total de pesquisadores por Nucleo  ----------
SELECT nucleo.nome_nucleo,	
	   count(pertence.cpf_usuario) as numero_pesquisadores
FROM nucleo
INNER JOIN linhas_pesquisa 
	ON nucleo.nome_nucleo = linhas_pesquisa.nome_nucleo
INNER JOIN pertence 
	ON pertence.numero_linha = linhas_pesquisa.numero_linha
GROUP BY nucleo.nome_nucleo

--Usuarios que não colocaram email----
SELECT usuario.nome_usuario as usuario_sem_email
FROM usuario
WHERE usuario.email IS NULL;

--Media cada tipo de memória por cada pesquisador --- NÃO FINALIZADA

SELECT usuario.nome_usuario, MAX(memorias.tipo_memoria) AS resultado_media
FROM usuario
INNER JOIN memorias
	ON memorias.cpf = usuario.cpf_usuario
GROUP BY usuario.cpf_usuario


---Verificar quem não entregou o relatório em um período de tempo--------			
	
	SELECT usuario.nome_usuario,
	  t.data_relatorio, 
	  pesquisador.cpf_pesquisador
FROM usuario
	INNER JOIN pesquisador --somente os pesquisadores possuem relatorios
		ON usuario.cpf_usuario = pesquisador.cpf_pesquisador
	LEFT JOIN (SELECT * FROM relatorio
			   WHERE relatorio.data_relatorio BETWEEN '01-01-2019' and '01-01-2020' ) as t 	
			   ON t.cpf = usuario.cpf_usuario	
    WHERE t.data_relatorio is NULL
		
		
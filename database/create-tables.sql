CREATE TABLE IF NOT EXISTS formulario (
	id INTEGER PRIMARY KEY NOT NULL,
	dia_comeco INTEGER NOT NULL,
	qtde_comp INTEGER NOT NULL,
	dias_pause INTEGER NOT NULL,
	data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS lembretes (
	id INTEGER PRIMARY KEY NOT NULL,
	ativ_lemb BOOLEAN DEFAULT False,
	hor_lemb timestamptz NOT NULL DEFAULT now(),
	inter_lemb timestamptz NOT NULL DEFAULT now(),
	FOREIGN KEY (id) REFERENCES formulario (id)
);

CREATE TABLE IF NOT EXISTS login (
	id INTEGER PRIMARY KEY NOT NULL,
	nome VARCHAR(80) NOT NULL,
	email VARCHAR(240) NOT NULL,
	idade VARCHAR(8) NOT NULL
);

SELECT table_name 
FROM information_schema.tables 
WHERE table_schema='public';
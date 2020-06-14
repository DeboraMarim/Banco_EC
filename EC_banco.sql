
create table TB_Cliente(
    id_cliente int primary key not null,
    nome varchar(100),
    telefone int,
    email varchar(30),
    data_nascimento date,
    cpf int,
    data_cadastro int

);

create table TB_Produto(
        id_produto int primary key not null,
        nome varchar(100),
        marca varchar(100),
        valor_compra float,
        valor_venda float,
        valor_lucro float,
        quanridade number
);


create table TB_Vendas(
    id_venda int primary key not null,
    id_produto int,
    id_cliente int,
    CONSTRAINT FK_TB_Produto FOREIGN KEY(id_Produto) REFERENCES TB_Produto(id_Produto),
    CONSTRAINT FK_TB_Cliente FOREIGN KEY(id_Cliente) REFERENCES TB_Cliente(id_Cliente)
);

INSERT INTO Tb_Cliente values(
    1, 'Uilson Batista', '3382190',
    'uilsinho2010@hotmail.com', 
    '20/02/1990','150450085', 1
);

INSERT INTO Tb_Cliente values(
    2, 'Clarisse Oliveira', '3842190',
    'cla2020@hotmail.com', 
    '22/02/1998','157850085', 1
);



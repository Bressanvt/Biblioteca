CREATE TABLE Autor (
Id int auto_increment,
Nome Varchar (255),
Datra_nascimento Date,
Cpf Char(11),
PRIMARY KEY(Id)
);

CREATE TABLE Categoria (
Id int auto_increment,
Descricao Varchar(100),
PRIMARY KEY (Id)
);

CREATE TABLE Livro(
Id int auto_increment,
Id_categoria int not null,
Titulo varchar(255),
Editora varchar(150),
ano year not null,
Isbn varchar(100) not null,
PRIMARY KEY (Id),
FOREIGN KEY (Id_Categoria) REFERENCES Categoria(Id)
);

CREATE TABLE Aluno(
ID int auto_increment,
Nome varchar(150),
Ra int,
Curso varchar (150),
PRIMARY KEY(Id)
);

CREATE TABLE Usuario(
Id int auto_increment,
Nome varchar(150),
Email varchar (150),
Senha varchar (150),
PRIMARY KEY (Id)
);

CREATE TABLE Livro_Autor_Assoc (
Id_livro int not null,
Id_Autor int not null,
FOREIGN KEY(Id_Livro) REFERENCES Livro (Id),
FOREIGN KEY(Id_Autor) REFERENCES Autor (Id),
PRIMARY KEY(Id_livro, Id_Autor )
);

CREATE TABLE Emprestimo (
Id int auto_increment,
Data_Empretimo Date not null,
Data_Devolucao Date not null,
Id_Usuario int not null,
Id_Aluno int not null,
Id_Livro int not null,
PRIMARY KEY(Id),
FOREIGN KEY(Id_Usuario) REFERENCES usuario (Id),
FOREIGN KEY(Id_Livro) REFERENCES Livro (Id),
FOREIGN KEY(Id_Aluno) REFERENCES Aluno (Id)
);
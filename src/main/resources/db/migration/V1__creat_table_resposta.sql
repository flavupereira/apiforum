 -- Tabela Resposta
 CREATE TABLE Resposta (
     id INT AUTO_INCREMENT PRIMARY KEY,
     mensagem TEXT NOT NULL,
     topico INT,
     dataCriacao DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
     autor INT,
     solucao BOOLEAN DEFAULT FALSE,
     FOREIGN KEY (topico) REFERENCES Topico(id),
     FOREIGN KEY (autor) REFERENCES Usuario(id)
 );
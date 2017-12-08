#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: fragHistoire
#------------------------------------------------------------

CREATE TABLE fragHistoire(
        idFragHist int (11) Auto_increment  NOT NULL ,
        texte      Text NOT NULL ,
        debut      Bool ,
        PRIMARY KEY (idFragHist )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: choix
#------------------------------------------------------------

CREATE TABLE choix(
        idChoix    int (11) Auto_increment  NOT NULL ,
        bon        Bool ,
        titre      Text ,
        idFragHist Int ,
        PRIMARY KEY (idChoix )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: propose
#------------------------------------------------------------

CREATE TABLE propose(
        idFragHist Int NOT NULL ,
        idChoix    Int NOT NULL ,
        PRIMARY KEY (idFragHist ,idChoix )
)ENGINE=InnoDB;

ALTER TABLE choix ADD CONSTRAINT FK_choix_idFragHist FOREIGN KEY (idFragHist) REFERENCES fragHistoire(idFragHist);
ALTER TABLE propose ADD CONSTRAINT FK_propose_idFragHist FOREIGN KEY (idFragHist) REFERENCES fragHistoire(idFragHist);
ALTER TABLE propose ADD CONSTRAINT FK_propose_idChoix FOREIGN KEY (idChoix) REFERENCES choix(idChoix);

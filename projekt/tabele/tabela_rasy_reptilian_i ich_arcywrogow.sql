CREATE table rasy_reptilian_i_arcywrogow(
id_rasy int Unique PRIMARY KEY,  -- nie dodalem autoinkrementacji, bo konfliktuje to potem z wprowadzanymi danymi, zdarza sie, ze komputer inkrementuje od liczby np. 19
nazwa Varchar(50) Unique,
Inteligencja int  CHECK (Inteligencja >= 0 AND Inteligencja <= 350 ),
agresywnosc Varchar(25),
kolor Varchar(25) NOT NULL,
dlugosc_zebow_w_cm int unsigned,
pochodzenie Varchar(45) DEFAULT "nieznane")
;
-- podstawowa tabela dotycząca ras reptilian i ich arcywrogow
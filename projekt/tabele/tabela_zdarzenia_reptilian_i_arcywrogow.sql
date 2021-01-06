CREATE table zdarzenia_reptilian_i_arcywrogow(
id_zdarzenia int Primary Key,  -- nie dodalem autoinkrementacji, bo konfliktuje to potem z wprowadzanymi danymi, zdarza sie, ze komputer inkrementuje od liczby np. 19
opis Varchar(600),
odpowiedzialna_flota int,
data_zdarzenia DATE,
smiertelnosc_ludzi int,
smiertelnosc_reptilian int,
Foreign key(odpowiedzialna_flota) References floty_reptilian_i_arcywrogow(id_floty));
-- tabela zawiera informacje na temat arcywrogow reptilian 
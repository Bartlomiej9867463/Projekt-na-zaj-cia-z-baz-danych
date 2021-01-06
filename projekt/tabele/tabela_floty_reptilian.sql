CREATE table floty_reptilian_i_arcywrogow(
id_floty int Unique Primary Key, -- nie dodalem autoinkrementacji, bo konfliktuje to potem z wprowadzanymi danymi, zdarza sie, ze komputer inkrementuje od liczby np. 19
nazwa Varchar(50),
id_panstwa int NOT NULL,
wielkosc_floty_w_hektorach int unsigned,
typ_floty Varchar(25) DEFAULT "Niezidentyfikowany",
Foreign key(id_panstwa) References panstwa_reptilian_i_arcywrogow(id_panstwa))
;
-- tabelka z informacjami an temat floty reptilian i arcywrogow

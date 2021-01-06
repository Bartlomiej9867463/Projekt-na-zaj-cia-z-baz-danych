CREATE table Arcywrogowie_reptilian(
 id_arcywroga int AUTO_INCREMENT Primary Key,  -- 
 nazwa_arcywroga varchar(20) unique, -- dodanie kszam do nazwy panstwa
 id_panstwa int Unique, -- unique wymagane do dzialania funkcji
 Foreign key(id_panstwa) References panstwa_reptilian_i_arcywrogow(id_panstwa))
;
-- podstawowa tabela dotycząca arcywrogow reptilian

CREATE table panstwa_reptilian_i_arcywrogow(
id_panstwa int Primary Key,  -- nie dodalem autoinkrementacji, bo konfliktuje to potem z wprowadzanymi danymi, zdarza sie, ze komputer inkrementuje od liczby np. 19
nazwa varchar(20) Unique,
id_rasy int NOT NULL, -- dwie rasy reptilian nie moga miec wspolnego pasntwa, ale jedna rasa moze byc w dwoch panstwach
przyjaznosc_do_ludzi int CHECK (przyjaznosc_do_ludzi >= 0 AND przyjaznosc_do_ludzi <= 10 ), -- dodac sposob na kontrole
liczebnosc int unsigned NOT NULL,
Foreign key(id_rasy) References rasy_reptilian_i_arcywrogow(id_rasy))
;
-- Z racji ze klucz obcy jest zaznaczony, domyslnie wymuszona jest integralnosc referencyjna poprzez restricted
--  tabela dotycząca panstw reptilian i ich arcywrogow

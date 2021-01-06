CREATE DEFINER=`root`@`localhost` TRIGGER `zdarzenia_reptilian_i_arcywrogow_AFTER_UPDATE` AFTER INSERT ON `zdarzenia_reptilian_i_arcywrogow` FOR EACH ROW BEGIN
DECLARE nowa_flota integer;
IF czy_zabito_powyzej_1_miliona((SELECT SUM(smiertelnosc_reptilian)From zdarzenia_reptilian_i_arcywrogow))=1 THEN
SET nowa_flota = NEW.id_zdarzenia;
INSERT INTO arcywrogowie_reptilian
	(nazwa_arcywroga, id_panstwa)
    VALUES
	((SELECT CONCAT((SELECT panstwa.nazwa FROM 
zdarzenia_reptilian_i_arcywrogow zdarzenia INNER JOIN floty_reptilian_i_arcywrogow floty ON zdarzenia.odpowiedzialna_flota = floty.id_floty
INNER JOIN panstwa_reptilian_i_arcywrogow panstwa ON floty.id_panstwa=panstwa.id_panstwa
WHERE zdarzenia.id_zdarzenia=nowa_flota), 'szar' )), (SELECT panstwa.id_panstwa FROM 
zdarzenia_reptilian_i_arcywrogow zdarzenia INNER JOIN floty_reptilian_i_arcywrogow floty ON zdarzenia.odpowiedzialna_flota = floty.id_floty
INNER JOIN panstwa_reptilian_i_arcywrogow panstwa ON floty.id_panstwa=panstwa.id_panstwa
WHERE zdarzenia.id_zdarzenia=nowa_flota));
END IF;
END
-- Ten wyzwalacz sprawdza czy panstwo wywolujace nowe zdarzenie nie przekroczylo miliona zabitych reptlian, jesli tak jest zapisywane w tabeli z reptilianami
-- do poprawnego dzialanie tego wyzwalacza konieczna jest zapisana w mysql workbench funkcja czy_zabito_powyzej_1_miliona jak nie jest zapisana w projekcie bazy dancyh wyzwalacz nie moze sie aktywowac
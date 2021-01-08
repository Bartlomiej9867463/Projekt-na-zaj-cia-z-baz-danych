CREATE DEFINER=`root`@`localhost` TRIGGER `zdarzenia_reptilian_i_arcywrogow_AFTER_INSERT` AFTER INSERT ON `zdarzenia_reptilian_i_arcywrogow` FOR EACH ROW BEGIN
DECLARE nowa_flota integer;
SET nowa_flota = NEW.id_zdarzenia;
IF (czy_zabito_powyzej_1_miliona((SELECT SUM(smiertelnosc_reptilian)From zdarzenia_reptilian_i_arcywrogow))=1) AND ((SELECT id_arcywroga FROM 
zdarzenia_reptilian_i_arcywrogow zdarzenia LEFT JOIN floty_reptilian_i_arcywrogow floty ON zdarzenia.odpowiedzialna_flota = floty.id_floty
LEFT JOIN panstwa_reptilian_i_arcywrogow panstwa ON floty.id_panstwa=panstwa.id_panstwa LEFT JOIN arcywrogowie_reptilian arcywrogowie On panstwa.id_panstwa = arcywrogowie.id_panstwa
WHERE zdarzenia.id_zdarzenia=nowa_flota) IS null) THEN
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
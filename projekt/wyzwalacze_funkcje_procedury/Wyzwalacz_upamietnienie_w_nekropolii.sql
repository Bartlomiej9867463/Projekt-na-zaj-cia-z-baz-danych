CREATE DEFINER=`root`@`localhost` TRIGGER `panstwa_reptilian_i_arcywrogow_BEFORE_UPDATE` BEFORE UPDATE ON `panstwa_reptilian_i_arcywrogow` FOR EACH ROW insert into Wielka_nekropolia_reptilian_i_ich_arcywrogow 
(id_panstwa, nazwa, liczebnosc)
 VALUES 
 (NEW.id_panstwa, NEW.nazwa, NEW.liczebnosc);
 -- ten wyzwalacz uruchamia sie kiedy liczebnosc jakiegos panstwa bedzie wynosila zero, to znaczy ze panstwo wymarlo i zostaną umieszczone rekordy w tabeli nekropolia
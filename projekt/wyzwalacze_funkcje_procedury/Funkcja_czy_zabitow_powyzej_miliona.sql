CREATE DEFINER=`root`@`localhost` FUNCTION `czy_zabito_powyzej_1_miliona`(ilosc_zabitych INT) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE bolowska int;
IF ilosc_zabitych >= 1000000 THEN
            SET bolowska = 1;
END IF;
RETURN bolowska;
END
-- ta funkcja musi byc w bazie zintegrowana inaczej jeden trigger nie bedzie dzialal bo fukcja ta sprawdza czy dana wejsciowa jest wieksza lub rowna od miliona
-- w razie problemow z kompilacja prosze o wklejenie samego kodu u gory bez komentarza
/*
USE `reptilianska_ksiege_tajemnicrasy_reptilian_i_arcywrogow`;
DROP function IF EXISTS `czy_zabito_powyzej_1_miliona`;

DELIMITER $$
USE `reptilianska_ksiege_tajemnicrasy_reptilian_i_arcywrogow`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `czy_zabito_powyzej_1_miliona`(ilosc_zabitych INT) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE bolowska int;
IF ilosc_zabitych >= 1000000 THEN
            SET bolowska = 1;
END IF;
RETURN bolowska;
END$$

DELIMITER ;
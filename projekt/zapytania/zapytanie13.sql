-- Srednia dlugosc pazorow i iloraz inteligencji wrogow reptilian
SELECT AVG(dlugosc_zebow_w_cm), AVG(Inteligencja)
FROM panstwa_reptilian_i_arcywrogow panstwa
INNER JOIN arcywrogowie_reptilian arcywrogowie ON panstwa.id_panstwa = arcywrogowie.id_panstwa INNER JOIN rasy_reptilian_i_arcywrogow rasy ON panstwa.id_rasy = rasy.id_rasy;

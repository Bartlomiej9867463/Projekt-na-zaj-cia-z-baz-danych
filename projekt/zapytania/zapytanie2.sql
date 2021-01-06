-- Podac jaki procent wszystkich zabojstw ludzi zostal wykonany przez jedna rasę 
SELECT rasy.nazwa, CONCAT(((SUM(zdarzenia.smiertelnosc_ludzi))/(select sum(zdarzenia_reptilian_i_arcywrogow.smiertelnosc_ludzi) FROM zdarzenia_reptilian_i_arcywrogow))*100, '%') AS IloscProcentow
FROM 
zdarzenia_reptilian_i_arcywrogow zdarzenia INNER JOIN floty_reptilian_i_arcywrogow floty ON zdarzenia.odpowiedzialna_flota = floty.id_floty
INNER JOIN panstwa_reptilian_i_arcywrogow panstwa ON floty.id_panstwa=panstwa.id_panstwa
INNER JOIN rasy_reptilian_i_arcywrogow rasy ON panstwa.id_rasy = rasy.id_rasy
GROUP BY rasy.nazwa;
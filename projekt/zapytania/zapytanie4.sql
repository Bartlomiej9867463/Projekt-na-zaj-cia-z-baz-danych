-- Podac ranking najbardziej zabójcze dla reptlian panstwa
SELECT
SUM(smiertelnosc_reptilian) AS "Ilosc zabitych reptilian", panstwa.nazwa
FROM
zdarzenia_reptilian_i_arcywrogow zdarzenia INNER JOIN floty_reptilian_i_arcywrogow floty ON zdarzenia.odpowiedzialna_flota = floty.id_floty
INNER JOIN panstwa_reptilian_i_arcywrogow panstwa ON floty.id_panstwa=panstwa.id_panstwa
GROUP BY panstwa.nazwa
ORDER BY SUM(smiertelnosc_reptilian) DESC;
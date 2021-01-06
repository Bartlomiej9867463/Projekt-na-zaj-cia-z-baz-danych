-- Podac najbardziej zabójczych floty
SELECT Ofiary, Nazwa
FROM ((SELECT
SUM(smiertelnosc_reptilian)+SUM(smiertelnosc_ludzi) AS Ofiary, floty_reptilian_i_arcywrogow.nazwa AS Nazwa
FROM zdarzenia_reptilian_i_arcywrogow LEFT JOIN floty_reptilian_i_arcywrogow ON zdarzenia_reptilian_i_arcywrogow.odpowiedzialna_flota = floty_reptilian_i_arcywrogow.id_floty
GROUP BY floty_reptilian_i_arcywrogow.nazwa)
UNION
(SELECT
SUM(smiertelnosc_reptilian)+SUM(smiertelnosc_ludzi) AS Ofiary, floty_reptilian_i_arcywrogow.nazwa AS Nazwa
FROM zdarzenia_reptilian_i_arcywrogow LEFT JOIN floty_reptilian_i_arcywrogow ON zdarzenia_reptilian_i_arcywrogow.odpowiedzialna_flota = floty_reptilian_i_arcywrogow.id_floty
GROUP BY floty_reptilian_i_arcywrogow.nazwa
)) AS Alias
ORDER BY Ofiary DESC
-- na stronie pisalo ze nie ma full joina lub outer joina, zatem zrobilem cos analogicznego
;
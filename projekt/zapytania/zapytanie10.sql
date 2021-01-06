-- najbardziej zabojcze typt flot dla ludzi i reptilian
SELECT SUM(smiertelnosc_reptilian) AS Ofiary_reptilianskie ,SUM(smiertelnosc_ludzi) AS Ofiary_ludzkie, floty_reptilian_i_arcywrogow.typ_floty AS typ
FROM zdarzenia_reptilian_i_arcywrogow LEFT JOIN floty_reptilian_i_arcywrogow ON zdarzenia_reptilian_i_arcywrogow.odpowiedzialna_flota = floty_reptilian_i_arcywrogow.id_floty
GROUP BY typ
ORDER BY typ DESC;
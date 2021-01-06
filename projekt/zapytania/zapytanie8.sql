--  Wyznaczyc top 10 najmniej licznych panstw reptilian(wykluczyc arcywrogow)
SELECT panstwa_reptilian_i_arcywrogow.liczebnosc, panstwa_reptilian_i_arcywrogow.nazwa
FROM panstwa_reptilian_i_arcywrogow
LEFT JOIN arcywrogowie_reptilian ON panstwa_reptilian_i_arcywrogow.id_panstwa = arcywrogowie_reptilian.id_arcywroga
WHERE arcywrogowie_reptilian.id_arcywroga IS NULL
ORDER BY panstwa_reptilian_i_arcywrogow.liczebnosc ASC
LIMIT 10;
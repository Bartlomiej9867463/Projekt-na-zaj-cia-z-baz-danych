-- jaka jest nazwa rasy reptilian(lub jednej z takich) co ma najwiecej panstw, ile ma panstw
SELECT rasy_reptilian_i_arcywrogow.nazwa, COUNT(panstwa_reptilian_i_arcywrogow.id_panstwa) AS policzenie
FROM rasy_reptilian_i_arcywrogow RIGHT JOIN panstwa_reptilian_i_arcywrogow ON rasy_reptilian_i_arcywrogow.id_rasy = panstwa_reptilian_i_arcywrogow.id_rasy
GROUP BY rasy_reptilian_i_arcywrogow.nazwa
ORDER BY policzenie DESC
LIMIT 1;
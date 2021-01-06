-- Z jakiego miejsca pochodzi najwiecej reptilian
SELECT SUM(liczebnosc), rasy_reptilian_i_arcywrogow.pochodzenie
FROM
panstwa_reptilian_i_arcywrogow RIGHT JOIN rasy_reptilian_i_arcywrogow ON panstwa_reptilian_i_arcywrogow.id_rasy = rasy_reptilian_i_arcywrogow.id_rasy
GROUP BY rasy_reptilian_i_arcywrogow.pochodzenie
ORDER BY rasy_reptilian_i_arcywrogow.pochodzenie DESC
LIMIT 1;
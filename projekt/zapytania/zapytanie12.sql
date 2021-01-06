-- SUMARYCZNA ilosc ofiar ludzkich i reptilianskich oraz samych zdaren w poszczegolnym roku
SELECT SUM(smiertelnosc_ludzi),SUM(smiertelnosc_reptilian), year(data_zdarzenia)
FROM zdarzenia_reptilian_i_arcywrogow
GROUP BY year(data_zdarzenia);
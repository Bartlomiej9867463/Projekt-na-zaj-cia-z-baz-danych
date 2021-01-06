-- Zestawienie ilosci zdarzen do panstw i ich liczebnosci i nazw
SELECT COUNT(zdarzenia.id_zdarzenia) AS 'Liczba Zdarzen', panstwa.nazwa, panstwa.liczebnosc
FROM 
zdarzenia_reptilian_i_arcywrogow zdarzenia INNER JOIN floty_reptilian_i_arcywrogow floty ON zdarzenia.odpowiedzialna_flota = floty.id_floty
INNER JOIN panstwa_reptilian_i_arcywrogow panstwa ON floty.id_panstwa=panstwa.id_panstwa
GROUP BY panstwa.nazwa;
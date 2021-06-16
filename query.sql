-- 1. Seleziona tutti gli ospiti che sono stati identificati con la carta d'identità

    SELECT * FROM `ospiti`
    WHERE document_type = "CI"

-- 2. Seleziona tutti gli ospiti che sono nati dopo il 1988

    SELECT * 
    FROM `ospiti`
    WHERE date_of_birth > '1988'
    ORDER BY date_of_birth ASC;     

-- 3. Seleziona tutti gli ospiti che hanno più di 20 anni (al momentodell’esecuzione della query)

    SELECT * 
    FROM `ospiti`
    WHERE date_of_birth <= '2000'

-- 4. Seleziona tutti gli ospiti il cui nome inizia con la D

    SELECT * 
    FROM `ospiti`
    WHERE name like "D%";

-- 5. Calcola il totale incassato degli ordini accepted

    SELECT SUM(`price`) 
	FROM `pagamenti`
	WHERE `status` = "accepted"

-- 6. Qual è il prezzo massimo pagato?

    SELECT MAX(`price`) as PrezzoPiuAlto
	FROM `pagamenti`

-- 7. Seleziona gli ospiti riconosciuti con patente e nati nel 1975

    SELECT * 
    FROM `ospiti`
    WHERE YEAR(`date_of_birth`) = 1975
    AND document_type = "Driver License"

-- 8. Quanti paganti sono anche ospiti?

    SELECT name, lastname, ospite_id AS clienti_paganti
    FROM paganti
    WHERE ospite_id IS NOT NUll;

    SELECT COUNT(*) 
    FROM paganti 
    WHERE ospite_id IS NOT NULL;

-- 9. Quanti posti letto ha l’hotel in totale
    SELECT SUM(`beds`) 
    FROM stanze

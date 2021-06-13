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

5. Calcola il totale incassato degli ordini accepted
6. Qual è il prezzo massimo pagato?
7. Seleziona gli ospiti riconosciuti con patente e nati nel 1975
8. Quanti paganti sono anche ospiti?
9. Quanti posti letto ha l’hotel in totale
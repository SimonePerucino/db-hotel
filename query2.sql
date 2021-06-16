-- join

-- 1.Come si chiamano gli ospiti che hanno fatto più didue prenotazioni?

SELECT  `ospiti`.`name`, 
        `ospiti`.`lastname`,  
	    COUNT(`prenotazioni_has_ospiti`.`prenotazione_id`) AS `Prenotazioni`
FROM `prenotazioni_has_ospiti` 
LEFT JOIN `ospiti`
ON `prenotazioni_has_ospiti`.`ospite_id` =  `ospiti`.`id`
GROUP BY `ospiti`.`id`
HAVING `Prenotazioni` >= 2

-- 2.Stampare tutti gli ospiti per ogni prenotazione

SELECT name, lastname
FROM `ospiti`
INNER JOIN `prenotazioni_has_ospiti`
ON `ospiti`.`id` = `prenotazioni_has_ospiti`.`ospite_id`

-- 3.Stampare Nome, Cognome, Prezzo e Pagante per tutteleprenotazioni fatte a Maggio 2018

SELECT `pagamenti`.`prenotazione_id`, `paganti`.`name`, `paganti`.`lastname`, `pagamenti`.`price`
FROM `pagamenti`
INNER JOIN `paganti`
	ON `pagamenti`.`pagante_id` = `paganti`.`id`;

-- 4.Fai la somma di tutti i prezzi delle prenotazioniper le stanze delprimo piano

-- 5.Prendi i dati di fatturazione per la prenotazionecon id=7

-- 6.Lestanzesonostatetutteprenotatealmenounavolta?(Visualizzarelestanzenonancoraprenotate)







-- group by

-- 1.Conta gli ospiti raggruppandoli per anno di nascita

SELECT COUNT(`id`) AS "numero_ospiti_per_annoNascita", YEAR(`date_of_birth`)
FROM `ospiti`
GROUP BY YEAR(`date_of_birth`)

-- 2.Somma i prezzi dei pagamenti raggruppandoli per status

SELECT `status`,
SUM(`price`)
FROM `pagamenti`
GROUP BY `status`

-- 3.Conta quante volte è stata prenotata ogni stanza

SELECT `stanza_id`,
COUNT(`stanza_id`)
FROM `prenotazioni`
GROUP BY `stanza_id`

-- 4.Fai una analisi per vedere se ci sono ore in cui leprenotazioni sonopiù frequenti

-- 5.Quante prenotazioni ha fatto l’ospite che ha fattopiùprenotazioni? (quante, non chi!)

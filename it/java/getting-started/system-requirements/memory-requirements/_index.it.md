---
title: Requisiti di memoria
second_title: Aspose.Words per Java
articleTitle: Requisiti di memoria
linktitle: Requisiti di memoria
description: "Quanto memoria fa Aspose.Words per Java richiedere di lavorare con i documenti? Scopri i dettagli."
type: docs
weight: 10
url: /it/java/memory-requirements/
---

Aspose.Words fornisce una vasta gamma di funzionalità per lavorare con documenti in vari formati. È importante notare che non c'è limite sulla dimensione massima di un file di documento che Aspose.Words può elaborare o rendere. L'unica limitazione è la quantità di RAM (memoria) disponibile sul tuo lato.

## Quanta memoria Aspose.Words Bisogno

Di solito Aspose.Words ha bisogno di più volte di memoria della dimensione del documento per costruire un modello del documento in memoria. Ad esempio, se la dimensione del documento è 1 MB, Aspose.Words ha bisogno di 10-20 MB di RAM per costruire la sua Document Object Model (DOM) in memoria. Il moltiplicatore dipende dal formato perché alcuni formati sono più compatti di altri. Ad esempio, DOCX è più compatto di DOC e RTF, e DOC è più compatto di RTF.

Non c'è modo esatto di stimare quanto memoria Aspose.Words in realtà consuma durante l'elaborazione di qualsiasi particolare file di documento. Come puoi sapere Java memorizza i dati nelle classi, ogni istanza di classe utilizza un po 'di memoria per JVM (Java macchina virtuale) scopi interni. Quindi qualsiasi paragrafo o testo formattato (anche costituito da un carattere) prende qualche memoria in più dopo il caricamento nel DOM. Inoltre, il Java il motore di raccolta rifiuti utilizza un algoritmo complesso per determinare il momento migliore per eseguire una raccolta di memoria, rendendo difficile determinare il consumo reale di memoria.

## Come Calcolare la Quantità di Memoria

Consideriamo due documenti:

1. documento DOCX "A" – dimensione 0.35 MB (2mila pagine), solo testo
2. documento DOCX "B" – dimensione 0.35 MB (solo 1 pagina), con immagine PNG all'interno

Come sapete, molti formati moderni come DOCX, ODT, ecc sono semplici archivi ZIP. Quindi, otteniamo il seguente algoritmo di calcolo:
1. Unzipping. documento "A" ha 20 MB di dimensione, documento "B" ha 0,4 MB di dimensione
2. Caricare il documento nel modello (costruire il suo Document Object Model – DOM?
* Creazione DOM del primo documento "A" richiede dimensioni 49 MB
* Creazione DOM del secondo documento "B" richiede solo 2 MB di dimensione.
3. Misurare la quantità di memoria necessaria per rendere questi documenti in PDF. Per questa operazione, Aspose.Words richiede:
  * 294 MB per documento "A"
  * 7 MB per documento "B"

Così, come potete vedere, non c'è dipendenza lineare dalla dimensione del documento di input. Ci sono molti fattori che possono influenzare la dimensione RAM richiesta - il formato del documento, la sua complessità e struttura, il numero di immagini e il loro formato, e un sacco di altri fattori.

## Come Calcolare il Multiplier di Memoria Più precisamente

Esperimenti con migliaia di documenti reali mostra che tipicamente Aspose.Words richiede più volte più memoria della dimensione media del documento per costruire un modello di documento in memoria ed eseguire operazioni semplici come la conversione tra formati di flusso, mail merge, parse, sostituire, e così via. A volte stiamo parlando di un moltiplicatore di 2, e a volte 20.

Operazioni più complesse come il rendering (converting a formati di pagina fissi), l'aggiornamento dei campi, la pagina di divisione e altri, per alcuni documenti richiedono 20 volte più risorse della memoria assegnata dal documento caricato in Aspose.Words DOM.

Se i risultati della profilazione indicano un possibile problema di memoria Aspose.Words, Contatta il nostro [Supporto tecnico](/words/it/java/technical-support/) e includere tutte le informazioni diagnostiche.

## Vedi anche

* [Rendering](/words/it/java/rendering/)
* [Mail Merge e Relazione](https://docs.aspose.com/words/java/mail-merge-and-reporting/)
* [Lavorare con i campi](/words/it/java/working-with-fields/)
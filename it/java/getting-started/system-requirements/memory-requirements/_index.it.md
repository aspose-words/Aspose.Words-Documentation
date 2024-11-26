---
title: Requisiti di memoria
second_title: Aspose.Words per Java
articleTitle: Requisiti di memoria
linktitle: Requisiti di memoria
description: "Quanta memoria richiede Aspose.Words per Java per lavorare con i documenti? Impara i dettagli."
type: docs
weight: 10
url: /it/java/memory-requirements/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words fornisce una vasta gamma di funzionalità per lavorare con documenti in vari formati. È importante notare che non vi è alcun limite alla dimensione massima di un file di documento che Aspose.Words può elaborare o eseguire il rendering. L'unica limitazione è la quantità di RAM (memoria) disponibile dalla tua parte.

## Quanta memoria Aspose.Words ha bisogno

Di solito Aspose.Words ha bisogno di molte volte più memoria della dimensione del documento per costruire un modello del documento in memoria. Ad esempio, se la dimensione del documento è 1 MB, Aspose.Words ha bisogno di 10-20 MB di RAM per creare il modello a oggetti del documento (DOM) in memoria. Il moltiplicatore dipende dal formato perché alcuni formati sono più compatti di altri. Ad esempio, DOCX è più compatto di DOC e RTF e DOC è più compatto di RTF.

Non esiste un modo esatto per stimare la quantità di memoria Aspose.Words effettivamente consumata durante l'elaborazione di un particolare file di documento. Come forse sapete Java memorizza i dati nelle classi, ogni istanza di classe utilizza una certa memoria perJVM (Java macchina virtuale) scopi interni. Quindi qualsiasi paragrafo o testo formattato (anche costituito da un carattere) richiede un po ' di memoria extra dopo il caricamento nel DOM. Inoltre, il motore di garbage collector Java utilizza un algoritmo complesso per determinare il momento migliore per eseguire una raccolta di memoria, rendendo difficile determinare il consumo reale di memoria.

## Come calcolare la quantità di memoria

Consideriamo due documenti:

1. DOCX "A" documento - 0.35 MB dimensioni (2 mila pagine), solo testo
2. DOCX "B" documento - 0.35 MB dimensioni (solo 1 pagina), con PNG immagine all'interno

Come sai, molti formati moderni come DOCX, ODT, ecc. sono semplici ZIP archivi. Quindi, otteniamo il seguente algoritmo di calcolo:
1. Decomprimere. Il documento decompresso "A" ha 20 MB dimensioni, il documento "B" ha 0.4 MB dimensioni
2. Caricamento del documento nel modello (creazione del modello oggetto documento- DOM):
* La creazione di DOM del primo documento "A" richiede 49 MB dimensioni
* La creazione di DOM del secondo documento "B" richiede solo 2 MB dimensioni.
3. Misurare la quantità di memoria necessaria per rendere questi documenti a PDF. Per questa operazione, Aspose.Words richiede:
  *  294 MBper il documento "A"
  * 7 MBper il documento "B"

Quindi, come puoi vedere, non esiste una dipendenza lineare dalla dimensione del documento di input. Ci sono molti fattori che possono influenzare la dimensione RAM richiesta: il formato del documento, la sua complessità e struttura, il numero di immagini e il loro formato e molti altri fattori.

## Come calcolare il moltiplicatore di memoria più accuratamente

Esperimenti con migliaia di documenti reali mostrano che in genere Aspose.Words richiede molte volte più memoria della dimensione media del documento per costruire un modello di documento in memoria ed eseguire semplici operazioni come la conversione tra formati di flusso, mail merge, analisi, sostituzione e così via. A volte stiamo parlando di un moltiplicatore di 2, e talvolta 20.

Operazioni più complesse come il rendering (conversione in formati di pagina fissi), l'aggiornamento dei campi, la divisione della pagina e altre, per alcuni documenti richiedono 20 volte più risorse della memoria allocata dal documento caricato in Aspose.Words DOM.

Se i risultati della profilazione indicano un possibile problema di memoria in Aspose.Words, contattare il nostro [Team di supporto](/words/java/technical-support/) e includere tutte le informazioni diagnostiche.

## Vedi anche

* [Rendering](/words/java/rendering/)
* [Mail Merge e relazioni](/words/java/mail-merge-and-reporting/)
* [Lavorare con i campi](/words/java/working-with-fields/)

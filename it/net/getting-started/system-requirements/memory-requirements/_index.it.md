---
title: Requisiti di memoria
second_title: Aspose.Words per .NET
articleTitle: Requisiti di memoria
linktitle: Requisiti di memoria
description: "Quanta memoria richiede Aspose.Words for .NET per lavorare con i documenti? Scopri i dettagli."
type: docs
weight: 10
url: /it/net/memory-requirements/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words offre un'ampia gamma di funzionalità per lavorare con documenti in vari formati. È importante notare che non esiste alcun limite alla dimensione massima di un file di documento che Aspose.Words può elaborare o visualizzare. L'unica limitazione è la quantità di RAM (memoria) disponibile sul tuo computer.

## Quanta memoria ha bisogno Aspose.Words

Di solito Aspose.Words richiede molta più memoria rispetto alla dimensione del documento per creare un modello del documento in memoria. Ad esempio, se la dimensione del documento è 1 MB, Aspose.Words necessita di 10-20 MB di RAM per creare il suo Document Object Model (DOM) in memoria. Il moltiplicatore dipende dal formato perché alcuni formati sono più compatti di altri. Ad esempio, DOCX è più compatto di DOC e RTF e DOC è più compatto di RTF.

Non esiste un modo esatto per stimare la quantità di memoria effettivamente consumata da Aspose.Words durante l'elaborazione di un particolare file di documento. Come forse saprai, .NET memorizza i dati in classi, ogni istanza di classe utilizza parte della memoria per scopi interni CLR. Quindi qualsiasi paragrafo o testo formattato (anche se composto da un carattere) richiede memoria aggiuntiva dopo essere stato caricato nell'DOM. Inoltre, il motore del garbage collector .NET utilizza un algoritmo complesso per determinare il momento migliore per eseguire una raccolta di memoria, rendendo difficile determinare il consumo reale di memoria.

## Come calcolare la quantità di memoria

Consideriamo due documenti:

1. Documento DOCX "A" – dimensione 0,35 MB (2mila pagine), solo testo
2. Documento DOCX "B" – dimensione 0,35 MB (solo 1 pagina), con immagine PNG all'interno

Come sai, molti formati moderni come DOCX, ODT, ecc. sono semplici archivi ZIP. Quindi, otteniamo il seguente algoritmo di calcolo:
1. Decompressione. Il documento decompresso "A" ha una dimensione di 20 MB, il documento "B" ha una dimensione di 0,4 MB
2. Caricamento del documento nel modello (costruendo il suo Document Object Model – DOM):
* La creazione del DOM del primo documento "A" richiede una dimensione di 49 MB
* La creazione del DOM del secondo documento "B" richiede solo 2 MB.
3. Misurazione della quantità di memoria richiesta per convertire questi documenti in PDF. Per questa operazione Aspose.Words richiede:
  * 294 MB per il documento "A"
  * 7 MB per il documento "B"

Quindi, come puoi vedere, non esiste una dipendenza lineare dalla dimensione del documento di input. Ci sono molti fattori che possono influenzare la dimensione della RAM richiesta: il formato del documento, la sua complessità e struttura, il numero di immagini e il loro formato e molti altri fattori.

## Come calcolare il moltiplicatore della memoria in modo più accurato

Esperimenti con migliaia di documenti reali mostrano che in genere Aspose.Words richiede molta più memoria rispetto alla dimensione media del documento per creare un modello di documento in memoria ed eseguire operazioni semplici come la conversione tra formati di flusso, mail merge, analisi, sostituzione e così via. A volte parliamo di un moltiplicatore di 2, a volte di 20.

Operazioni più complesse come il rendering (conversione in formati di pagina fissi), l'aggiornamento dei campi, la divisione della pagina e altro, per alcuni documenti richiedono risorse 20 volte superiori rispetto alla memoria allocata dal documento caricato in Aspose.Words DOM.

Se i risultati della profilazione indicano un possibile problema di memoria in Aspose.Words, contatta il nostro [Supporto tecnico](/words/it/net/technical-support/) e includi tutte le informazioni diagnostiche.

## Guarda anche

* [Misura l'utilizzo della memoria in Visual Studio (C#, Visual Basic, C++, F#)](https://learn.microsoft.com/en-us/visualstudio/profiling/memory-usage?view=vs-2022)
* [Rendering](/words/it/net/rendering/)
* [Mail Merge e reporting](/words/net/mail-merge-and-reporting/)
* [Lavorare con i campi](/words/it/net/working-with-fields/)

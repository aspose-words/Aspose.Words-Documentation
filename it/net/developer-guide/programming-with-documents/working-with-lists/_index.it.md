---
title: Lavorare con elenchi in C#
second_title: Aspose.Words per .NET
articleTitle: Lavorare con gli elenchi
linktitle: Lavorare con gli elenchi
description: "Introduzione alla funzionalità di formattazione della numerazione in Aspose.Words per .NET."
type: docs
weight: 200
url: /it/net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Un elenco in un documento Microsoft Word è un insieme di proprietà di formattazione del paragrafo. Gli elenchi possono essere utilizzati nei documenti per strutturare, organizzare ed evidenziare il testo. Gli elenchi sono un ottimo modo per organizzare i dati nei documenti in modo da facilitare ai lettori l'assorbimento e la comprensione dei punti chiave.

Ogni elenco può avere fino a 9 livelli e le proprietà di formattazione come lo stile del numero, il valore iniziale, il rientro, la posizione della tabulazione e altre sono definite separatamente per ciascun livello.

In Aspose.Words, lavorare con gli elenchi è rappresentato dallo spazio dei nomi [Lists](https://reference.aspose.com/words/it/net/aspose.words.lists/). Tuttavia, l'oggetto [List](https://reference.aspose.com/words/it/net/aspose.words.lists/list/) appartiene sempre al [ListCollection](https://reference.aspose.com/words/it/net/aspose.words.lists/listcollection/).

Questo articolo descrive l'utilizzo a livello di codice degli elenchi tramite Aspose.Words.

## Crea elenchi applicando la formattazione dell'elenco

Aspose.Words consente la facile creazione di elenchi applicando la formattazione dell'elenco. [DocumentBuilder](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/) fornisce la proprietà [ListFormat](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/listformat/) che restituisce un oggetto **ListFormat**. Questo oggetto ha diversi metodi per iniziare e terminare un elenco e per aumentare/diminuire il rientro. Esistono due tipi generali di elenchi in Microsoft Word: puntati e numerati:

- Per avviare un elenco puntato, chiamare [ApplyBulletDefault](https://reference.aspose.com/words/it/net/aspose.words.lists/listformat/applybulletdefault/)
- Per iniziare un elenco numerato, chiamare [ApplyNumberDefault](https://reference.aspose.com/words/it/net/aspose.words.lists/listformat/applynumberdefault/)

Il punto elenco o il numero e la formattazione vengono aggiunti al paragrafo corrente e a tutti gli altri paragrafi creati utilizzando **DocumentBuilder** finché non viene chiamato [RemoveNumbers](https://reference.aspose.com/words/it/net/aspose.words.lists/listformat/removenumbers/) per interrompere la formattazione dell'elenco puntato.

Nei documenti Word gli elenchi possono essere costituiti da un massimo di nove livelli. La formattazione dell'elenco per ciascun livello specifica quale punto elenco o numero viene utilizzato, rientro sinistro, spazio tra il punto elenco e il testo, ecc. I seguenti metodi modificano il livello dell'elenco e applicano le proprietà di formattazione del nuovo livello:

- Per aumentare il livello dell'elenco del paragrafo corrente di un livello, chiamare [ListIndent](https://reference.aspose.com/words/it/net/aspose.words.lists/listformat/listindent/)
- Per diminuire il livello dell'elenco del paragrafo corrente di un livello, richiama [ListOutdent](https://reference.aspose.com/words/it/net/aspose.words.lists/listformat/listoutdent/)

Puoi anche utilizzare la proprietà [ListLevelNumber](https://reference.aspose.com/words/it/net/aspose.words.lists/listformat/listlevelnumber/) per ottenere o impostare il livello di elenco per il paragrafo.

{{% alert color="primary" %}}

I livelli dell'elenco sono numerati da 0 a 8.

{{% /alert %}}

L'esempio di codice seguente mostra come creare un elenco a più livelli:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## Specificare la formattazione per un livello di elenco

Gli oggetti a livello di elenco vengono creati automaticamente quando viene creato un elenco. Utilizza le proprietà e i metodi della classe [ListLevel](https://reference.aspose.com/words/it/net/aspose.words.lists/listlevel/) per controllare la formattazione dei singoli livelli di un elenco.

## Elenco di riavvio per ciascuna sezione

Puoi riavviare un elenco per ogni sezione utilizzando la proprietà [IsRestartAtEachSection](https://reference.aspose.com/words/it/net/aspose.words.lists/list/isrestartateachsection/). Tieni presente che questa opzione è supportata solo nei formati di documenti RTF, DOC e DOCX. Questa opzione verrà scritta in DOCX solo se OoxmlCompliance è superiore a Ecma376.

L'esempio di codice seguente mostra come creare un elenco e riavviarlo per ogni sezione:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}

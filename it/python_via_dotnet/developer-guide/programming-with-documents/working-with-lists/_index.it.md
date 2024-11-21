---
title: Lavorare con elenchi in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con gli elenchi
linktitle: Lavorare con gli elenchi
description: "Crea, specifica la formattazione e riavvia gli elenchi in un documento utilizzando Python."
type: docs
weight: 200
url: /it/python-net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Un elenco in un documento Microsoft Word è un insieme di proprietà di formattazione dell'elenco. Gli elenchi possono essere utilizzati nei documenti per formattare, organizzare ed enfatizzare il testo. Gli elenchi sono un ottimo modo per organizzare i dati nei documenti e facilitano la comprensione dei punti chiave da parte dei lettori

Ogni elenco può avere fino a 9 livelli e le proprietà di formattazione, come lo stile del numero, il valore iniziale, il rientro, la posizione della tabulazione ecc. sono definite separatamente per ciascun livello.

In Aspose.Words, lavorare con gli elenchi è rappresentato dal modulo [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/). Tuttavia, l'oggetto [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) appartiene sempre alla raccolta [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/).

Questo argomento descrive come lavorare a livello di codice con gli elenchi utilizzando Aspose.Words

## Creazione di elenchi applicando la formattazione dell'elenco

Aspose.Words consente la facile creazione di elenchi applicando la formattazione dell'elenco. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) fornisce la proprietà [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) che restituisce un oggetto [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/). Questo oggetto ha diversi metodi per iniziare e terminare un elenco e per aumentare/diminuire il rientro. Esistono due tipi generali di elenchi in Microsoft Word: puntati e numerati.

- Per avviare un elenco puntato, chiamare [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/).
- Per iniziare un elenco numerato, chiamare [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/).

Il punto elenco o il numero e la formattazione vengono aggiunti al paragrafo corrente e a tutti gli altri paragrafi creati utilizzando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) finché non viene chiamato [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) per interrompere la formattazione dell'elenco puntato.

Nei documenti Word gli elenchi possono essere costituiti da un massimo di nove livelli. La formattazione dell'elenco per ciascun livello specifica quale punto elenco o numero viene utilizzato, rientro sinistro, spazio tra il punto elenco e il testo, ecc. I seguenti metodi modificano il livello dell'elenco e applicano le proprietà di formattazione del nuovo livello:

- Per aumentare il livello dell'elenco del paragrafo corrente di un livello, chiamare [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- Per diminuire il livello dell'elenco del paragrafo corrente di un livello, richiama [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

I metodi modificano il livello dell'elenco e applicano le proprietà di formattazione del nuovo livello.

{{% alert color="primary" %}}

Puoi anche utilizzare la proprietà [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) per ottenere o impostare il livello di elenco per il paragrafo. I livelli dell'elenco sono numerati da 0 a 8.

{{% /alert %}}

L'esempio seguente mostra come creare un elenco multilivello.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## Specificare la formattazione per un livello di elenco

Gli oggetti a livello di elenco vengono creati automaticamente quando viene creato un elenco. Utilizza le proprietà e i metodi della classe [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) per controllare la formattazione dei singoli livelli di un elenco.

## Elenco di riavvio per ciascuna sezione

Puoi riavviare un elenco per ogni sezione utilizzando la proprietà [proprietà is_restart_at_each_section](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/). Tieni presente che questa opzione è supportata solo nei formati di documenti RTF, DOC e DOCX. Questa opzione verrà scritta in DOCX solo se OoxmlCompliance è superiore a Ecma376.

L'esempio di codice seguente mostra come creare un elenco e riavviarlo per ogni sezione:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}

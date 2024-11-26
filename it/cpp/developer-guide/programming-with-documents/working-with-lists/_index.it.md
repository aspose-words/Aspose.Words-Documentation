---
title: Lavorare con le liste in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con le liste
linktitle: Lavorare con le liste
description: "Introduzione alla funzione di formattazione della numerazione in Aspose.Words per C++."
type: docs
weight: 200
url: /it/cpp/working-with-lists/
timestamp: 2024-01-30-16-22-34
---

Un elenco in un documento Microsoft Word è un insieme di proprietà di formattazione dell'elenco. Gli elenchi possono essere utilizzati nei documenti per formattare, organizzare e enfatizzare il testo. Gli elenchi sono un ottimo modo per organizzare i dati nei documenti e rendono più facile per i lettori comprendere i punti chiave.

Ogni elenco può avere fino a livelli 9 e le proprietà di formattazione, come lo stile del numero, il valore iniziale, il rientro, la posizione delle tabulazioni, ecc. sono definite separatamente per ogni livello.

In Aspose.Words, lavorare con le liste è rappresentato dallo spazio dei nomi [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/). Tuttavia, l'oggetto [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) appartiene sempre alla raccolta [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/).

Questo argomento descrive come lavorare a livello di programmazione con gli elenchi utilizzando Aspose.Words.

## Specificare la formattazione per un livello di elenco

Gli oggetti a livello di elenco vengono creati automaticamente quando viene creato un elenco. Utilizzare le proprietà e i metodi della classe [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/) per controllare la formattazione dei singoli livelli di un elenco.

## Restart List per ogni sezione

È possibile riavviare un elenco per ogni sezione utilizzando la proprietà [IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/). Si noti che questa opzione è supportata solo nei formati di documento RTF, DOC e DOCX. Questa opzione verrà scritta su DOCX solo se OoxmlCompliance è superiore a Ecma376.

Il seguente esempio di codice mostra come creare un elenco e riavviarlo per ogni sezione:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}

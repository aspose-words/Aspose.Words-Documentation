---
title: Lavorare con i collegamenti ipertestuali in C#
second_title: Aspose.Words per .NET
articleTitle: Aggiungi o modifica collegamenti ipertestuali
linktitle: Aggiungi o modifica collegamenti ipertestuali
description: "Come aggiungere un collegamento ipertestuale al tuo documento in C# utilizzando Aspose.Words per .NET."
type: docs
weight: 50
url: /it/net/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Un collegamento ipertestuale nei documenti Microsoft Word è il campo `HYPERLINK`. In Aspose.Words, i collegamenti ipertestuali vengono implementati tramite la classe [FieldHyperlink](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldhyperlink/).

## Inserisci un collegamento ipertestuale

Utilizzare il metodo [InsertHyperlink](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/inserthyperlink/) per inserire un collegamento ipertestuale nel documento. Questo metodo accetta tre parametri:

1. Testo del collegamento da visualizzare nel documento
2. Destinazione del collegamento (URL o nome di un segnalibro all'interno del documento)
3. Parametro booleano che dovrebbe essere true se il `URL` è il nome di un segnalibro all'interno di un documento

Il metodo **InsertHyperlink** aggiunge sempre apostrofi all'inizio e alla fine dell'URL

{{% alert color="primary" %}}

Tieni presente che devi specificare la formattazione del carattere per il testo visualizzato del collegamento ipertestuale utilizzando esplicitamente la proprietà `Font`.

{{% /alert %}}

L'esempio di codice seguente mostra come inserire un collegamento ipertestuale in un documento utilizzando [DocumentBuilder](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## Sostituisci o modifica i collegamenti ipertestuali

Il collegamento ipertestuale nei documenti Microsoft Word è un campo. Un campo in un documento Word, come abbiamo detto prima, è una struttura complessa composta da più nodi che includono inizio campo, codice campo, separatore campo, risultato campo e fine campo. I campi possono essere nidificati, contenere contenuti avanzati e estendersi su più paragrafi o sezioni in un documento.

Per sostituire o modificare i collegamenti ipertestuali, è necessario trovare i collegamenti ipertestuali nel documento e sostituire il loro testo, gli URL o entrambi.

L'esempio di codice seguente mostra come trovare tutti i collegamenti ipertestuali nel documento di Word e modificarne il `URL` e il nome visualizzato:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}

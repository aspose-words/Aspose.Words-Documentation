---
title: Lavorare con i collegamenti ipertestuali
second_title: Aspose.Words per Python via .NET
articleTitle: Aggiungi o modifica collegamenti ipertestuali
linktitle: Aggiungi o modifica collegamenti ipertestuali
description: "Aggiungi, sostituisci o modifica un collegamento ipertestuale in un documento utilizzando Python."
type: docs
weight: 50
url: /it/python-net/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Un collegamento ipertestuale nei documenti Microsoft Word è il campo `HYPERLINK`. In Aspose.Words, i collegamenti ipertestuali vengono implementati tramite la classe [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/).

## Inserimento di un collegamento ipertestuale

Utilizzare il metodo [insert_hyperlink](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_hyperlink/) per inserire un collegamento ipertestuale nel documento. Questo metodo accetta tre parametri:

1. Testo del collegamento da visualizzare nel documento
2. Destinazione del collegamento (URL o nome di un segnalibro all'interno del documento)
3. Parametro booleano che dovrebbe essere true se il `URL` è il nome di un segnalibro all'interno di un documento

Il metodo **InsertHyperlink** aggiunge sempre apostrofi all'inizio e alla fine dell'URL.

{{% alert color="primary" %}}

Tieni presente che devi specificare la formattazione del carattere per il testo visualizzato del collegamento ipertestuale utilizzando esplicitamente la proprietà `Font`.

{{% /alert %}}

L'esempio di codice seguente mostra come inserire un collegamento ipertestuale in un documento utilizzando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHyperlink.py" >}}

## Sostituisci o modifica i collegamenti ipertestuali

Il collegamento ipertestuale nei documenti Microsoft Word è un campo. Un campo in un documento Word è una struttura complessa composta da più nodi che includono inizio campo, codice campo, separatore campo, risultato campo e fine campo. I campi possono essere nidificati, contenere contenuti avanzati e estendersi su più paragrafi o sezioni in un documento

Per sostituire o modificare i collegamenti ipertestuali, è necessario trovare i collegamenti ipertestuali nel documento e sostituire il loro testo, gli URL o entrambi.

L'esempio di codice seguente mostra come trovare tutti i collegamenti ipertestuali nel documento di Word e modificarne il `URL` e il nome visualizzato:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ReplaceHyperlinks.py" >}}

---
title: Lavorare con i collegamenti ipertestuali in C++
second_title: Aspose.Words per C++
articleTitle: Aggiungere o modificare collegamenti ipertestuali
linktitle: Aggiungere o modificare collegamenti ipertestuali
description: "Come aggiungere un collegamento ipertestuale nel documento utilizzando Aspose.Words per C++."
type: docs
weight: 180
url: /it/cpp/working-with-hyperlinks/
---

Un collegamento ipertestuale nei documenti Microsoft Word è il campo `HYPERLINK`. In Aspose.Words, i collegamenti ipertestuali vengono implementati tramite la classe [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/).

## Inserimento di un collegamento ipertestuale

Utilizzare il metodo [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/) per inserire un collegamento ipertestuale nel documento. Questo metodo accetta tre parametri:

1. Testo del link da visualizzare nel documento
2. Destinazione del collegamento (URL o nome di un segnalibro all'interno del documento)
3. Parametro booleano che dovrebbe essere true se `URL` è un nome di un segnalibro all'interno del documento

Il metodo **InsertHyperlink** aggiunge sempre apostrofi all'inizio e alla fine dell'URL.

{{% alert color="primary" %}}

Si noti che è necessario specificare la formattazione del carattere per il testo visualizzato collegamento ipertestuale in modo esplicito utilizzando la proprietà `Font`.

{{% /alert %}}

L'esempio di codice seguente mostra come inserire un collegamento ipertestuale in un documento utilizzando [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Sostituire o modificare i collegamenti ipertestuali

Il collegamento ipertestuale nei documenti Microsoft Word è un campo. Un campo in un documento Word è una struttura complessa composta da più nodi che includono inizio campo, codice campo, separatore campo, risultato campo e fine campo. I campi possono essere annidati, contenere contenuti ricchi e spaziare più paragrafi o sezioni in un documento.

La classe `FieldHyperlink` implementa il campo `HYPERLINK`.

L'esempio di codice seguente mostra come trovare tutti i collegamenti ipertestuali nel documento Word e cambia il loro `URL` e il nome visualizzato:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}

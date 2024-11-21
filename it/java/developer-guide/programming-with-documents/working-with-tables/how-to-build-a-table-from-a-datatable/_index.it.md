---
title: Come Costruire un Tavolo da un `DataTable` in Java
second_title: Aspose.Words per Java
articleTitle: Costruisci una tabella da un `DataTable`
linktitle: Costruisci una tabella da un `DataTable`
description: "Esempio di tabella dei documenti di riempimento da database esterno utilizzando Java."
type: docs
weight: 130
url: /it/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

Spesso la tua applicazione tirerà i dati da un database e lo memorizza sotto forma di un **DataTable**. Si può desiderare di inserire facilmente questi dati nel documento come una nuova tabella e applicare rapidamente la formattazione all'intera tabella.

{{% alert color="primary" %}}

Si noti che il modo preferito di inserire i dati da un **DataTable** in una tabella di documento è utilizzando [Mail Merge con le regioni](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). La tecnica presentata in questo articolo è suggerita solo se non siete in grado di creare un modello adatto in anticipo per unire i dati con, in altre parole, se avete bisogno di tutto per accadere programmaticamente.

{{% /alert %}}

Utilizzo Aspose.Words, è possibile recuperare facilmente i dati da un database e memorizzarlo come una tabella:

1. Creare un nuovo [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) oggetto sul tuo [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Avviare una nuova tabella utilizzando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. Se vogliamo inserire i nomi di ciascuna delle colonne dalle nostre **DataTable** come una riga di intestazione quindi iterare attraverso ogni colonna di dati e scrivere i nomi delle colonne in una riga nella tabella.
1. Iterate attraverso ogni **DataRow** nel **DataTable**:
   1. Iterate attraverso ogni oggetto nel **DataRow**.
   1. Inserire l'oggetto nel documento utilizzando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Il metodo utilizzato dipende dal tipo di oggetto inserito ad esempio [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) per testo e [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) per un array byte che rappresenta un'immagine.
   1. Alla fine del trattamento della riga di dati anche terminare la riga creata dal [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) utilizzando [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. Una volta tutte le righe dalle **DataTable** sono stati elaborati finire il tavolo chiamando [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. Infine, possiamo impostare lo stile della tabella desiderato utilizzando una delle proprietÃ della tabella appropriate come [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) applicare automaticamente la formattazione all'intera tabella.
   I seguenti dati nei nostri **DataTable** viene utilizzato in questo esempio:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Il seguente esempio di codice mostra come eseguire l'algoritmo di cui sopra in Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

Il metodo può quindi essere facilmente chiamato utilizzando il vostro **DocumentBuilder** e dati.

Il seguente esempio di codice mostra come importare i dati da un `DataTable` e inseriscilo in una nuova tabella nel documento:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

La tabella mostrata nell'immagine qui sotto è prodotta eseguendo il codice sopra.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)

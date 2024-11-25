---
title: Come costruire una tabella da un `DataTable` in Java
second_title: Aspose.Words per Java
articleTitle: Costruire una tabella da un `DataTable`
linktitle: Costruire una tabella da un `DataTable`
description: "Esempio di riempimento tabella documento da database esterno utilizzando Java."
type: docs
weight: 130
url: /it/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

Spesso l'applicazione estrae i dati da un database e li memorizza sotto forma di **DataTable**. È possibile inserire facilmente questi dati nel documento come nuova tabella e applicare rapidamente la formattazione all'intera tabella.

{{% alert color="primary" %}}

Si noti che il modo preferito di inserire i dati da un **DataTable** in una tabella documento è utilizzando [Mail Merge con Regioni](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). La tecnica presentata in questo articolo è suggerita solo se non si è in grado di creare un modello adatto in anticipo per unire i dati, in altre parole, se si richiede che tutto avvenga a livello di programmazione.

{{% /alert %}}

Utilizzando Aspose.Words, è possibile recuperare facilmente i dati da un database e memorizzarli come tabella:

1. Crea un nuovo oggetto [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) sul tuo [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Inizia una nuova tabella usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. Se vogliamo inserire i nomi di ciascuna delle colonne dal nostro **DataTable** come riga di intestazione, scorrere ciascuna colonna di dati e scrivere i nomi delle colonne in una riga nella tabella.
1. Scorrere ogni **DataRow** nel **DataTable**:
   1. Scorrere ogni oggetto nel **DataRow**.
   1. Inserire l'oggetto nel documento usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Il metodo utilizzato dipende dal tipo di oggetto inserito, ad esempio [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) per il testo e [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) per un array di byte che rappresenta un'immagine.
   1. Al termine dell'elaborazione della riga di dati termina anche la riga creata da [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) utilizzando [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. Una volta che tutte le righe di **DataTable** sono state elaborate, termina la tabella chiamando [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. Infine, possiamo impostare lo stile di tabella desiderato utilizzando una delle proprietà della tabella appropriate come [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) per applicare automaticamente la formattazione all'intera tabella.
   In questo esempio vengono utilizzati i seguenti dati nel nostro **DataTable**:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Il seguente esempio di codice mostra come eseguire l'algoritmo di cui sopra in Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

Il metodo può quindi essere facilmente chiamato usando **DocumentBuilder** e data.

L'esempio di codice seguente mostra come importare i dati da un `DataTable` e inserirli in una nuova tabella nel documento:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

La tabella mostrata nell'immagine qui sotto è prodotta eseguendo il codice sopra.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)

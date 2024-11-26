---
title: Come costruire una tabella da un DataTable in C#
second_title: Aspose.Words per .NET
articleTitle: Costruisci una tabella da un DataTable
linktitle: Costruisci una tabella da un DataTable
description: "Esempio di riempimento della tabella documenti da un database esterno utilizzando C#."
type: docs
weight: 120
url: /it/net/how-to-build-a-table-from-a-datatable/
timestamp: 2024-09-25-11-08-55
---

Spesso la tua applicazione estrarrà i dati da un database e li memorizzerà sotto forma di **DataTable**. Puoi inserire facilmente questi dati nel documento come una nuova tabella e applicare rapidamente la formattazione all'intera tabella.

{{% alert color="primary" %}}

Tieni presente che il modo preferito per inserire dati da un **DataTable** in una tabella di documenti è utilizzare [Mail Merge con le Regioni](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions). La tecnica presentata in questo articolo è suggerita solo se non si riesce a creare in anticipo un modello adatto con cui unire i dati, in altre parole se si richiede che tutto avvenga a livello di programmazione.

{{% /alert %}}

Utilizzando Aspose.Words, puoi facilmente recuperare i dati da un database e archiviarli come tabella:

1. Crea un nuovo oggetto **DocumentBuilder** sul tuo **Document**.
1. Inizia una nuova tabella utilizzando **DocumentBuilder**.
1. Se vogliamo inserire i nomi di ciascuna colonna dal nostro **DataTable** come riga di intestazione, scorrere ciascuna colonna di dati e scrivere i nomi delle colonne in una riga nella tabella.
1. Scorrere ogni **DataRow** nel **DataTable**:
   1. Scorrere ogni oggetto nel **DataRow**.
   1. Inserisci l'oggetto nel documento utilizzando **DocumentBuilder**. Il metodo utilizzato dipende dal tipo di oggetto da inserire, ad esempio **DocumentBuilder.Writeln** per testo e **DocumentBuilder.InsertImage** per un array di byte che rappresenta un'immagine.
   1. Al termine dell'elaborazione del **DataRow** terminare anche la riga creata dal **DocumentBuilder** utilizzando **DocumentBuilder.EndRow**.
1. Una volta elaborate tutte le righe del **DataTable**, termina la tabella chiamando **DocumentBuilder.EndTable**.
1. Infine possiamo impostare lo stile della tabella desiderato utilizzando una delle proprietà della tabella appropriate come **Table.StyleIdentifier** per applicare automaticamente la formattazione all'intera tabella.

Il metodo **ImportTableFromDataTable** accetta un oggetto **DocumentBuilder**, l'**DataTable** contenente i dati e un flag che specifica se l'intestazione della colonna dell'**DataTable** è inclusa nella parte superiore della tabella. Questo metodo crea una tabella da questi parametri utilizzando la posizione e la formattazione correnti del generatore. Fornisce un metodo per importare dati dal `DataTable` e inserirli in una nuova tabella utilizzando DocumentBuilder.

In questo esempio vengono utilizzati i seguenti dati nel nostro **DataTable**:

![how-to-build-a-table-from-a-datatable-aspose-words-net](/words/net/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Il seguente esempio di codice mostra come eseguire l'algoritmo sopra in Aspose.Words:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

Il metodo può quindi essere facilmente richiamato utilizzando il **DocumentBuilder** e i dati.

Il seguente esempio di codice mostra come importare i dati da un `DataTable` e inserirli in una nuova tabella nel documento:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}

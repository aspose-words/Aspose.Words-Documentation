---
title: Lavorare con le proprietà del documento in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con le proprietà del documento
linktitle: Lavorare con le proprietà del documento
description: "Aspose.Words per Java consente di memorizzare alcune informazioni utili sul documento, ad esempio API e il numero di versione o la data autorizzata, nelle proprietà predefinite o personalizzate del documento."
type: docs
weight: 10
url: /it/java/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Le proprietà del documento consentono di memorizzare alcune informazioni utili sul documento. Queste proprietà possono essere divise in due gruppi:

* Sistema o built-in che contengono valori come titolo del documento, nome dell'autore, statistiche del documento e altri.
* Definito dall'utente o personalizzato, fornito come coppie nome-valore in cui l'utente può definire sia il nome che il valore.

È utile sapere che le informazioni su API e il numero di versione sono scritte direttamente nei documenti di output. Ad esempio, quando si converte un documento in PDF, Aspose.Words riempie il campo "Applicazione" con "Aspose.Words" e il campo "PDF Produttore" con "Aspose.Words per Java YY.M. N", dove *YY.M.N* è la versione di Aspose.Words utilizzata per la conversione. Per maggiori dettagli, vedere [Nome del generatore o del produttore incluso nei documenti di output](/words/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Si noti che è **cannot direct** Aspose.Words per modificare o rimuovere queste informazioni dai documenti di output.

{{% /alert %}}

## Accedere alle proprietà del documento

Per accedere alle proprietà del documento in Aspose.Words utilizzare:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) per ottenere proprietà incorporate.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) per ottenere proprietà personalizzate.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

La classe [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) consente di ottenere il nome, il valore e il tipo di una proprietà del documento. [Valore]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value restituisce un oggetto, ma esiste una serie di metodi che consentono di ottenere il valore della proprietà convertito in un tipo specifico. Dopo aver appreso il tipo di proprietà, è possibile utilizzare uno dei metodi **DocumentProperty.ToXXX**, ad esempio **DocumentProperty.** [ToString](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) e **DocumentProperty.** [ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), per ottenere il valore del tipo appropriato.

L'esempio di codice seguente mostra come enumerare tutte le proprietà predefinite e personalizzate in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

In Microsoft Word, è possibile accedere alle proprietà del documento utilizzando il menu "File → Proprietà".

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Aggiungere o rimuovere le proprietà del documento

Non è possibile aggiungere o rimuovere le proprietà predefinite del documento utilizzando Aspose.Words. Puoi solo modificare o aggiornare i loro valori.

Per aggiungere proprietà personalizzate del documento con Aspose.Words, utilizzare il metodo [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean), passando il nuovo nome della proprietà e il valore del tipo appropriato. Il metodo restituisce l'oggetto **DocumentProperty** appena creato.

Per rimuovere le proprietà personalizzate, utilizzare il metodo [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String), passandogli il nome della proprietà da rimuovere o il metodo [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) per rimuovere la proprietà per indice. È inoltre possibile rimuovere tutte le proprietà utilizzando il metodo [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear).

Il seguente esempio di codice controlla se una proprietà personalizzata con un nome specificato esiste in un documento e aggiunge alcune altre proprietà personalizzate del documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

L'esempio di codice seguente mostra come rimuovere una proprietà documento personalizzata:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Aggiorna le proprietà del documento incorporate

Aspose.Words non aggiorna automaticamente le proprietà del documento, come fa Microsoft Word con alcune proprietà, ma fornisce un metodo per aggiornare alcune proprietà statistiche predefinite del documento. Chiamare il metodo [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) per ricalcolare e aggiornare le seguenti proprietà:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Creare una nuova proprietà personalizzata collegata al contenuto

Aspose.Words fornisce il metodo [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) per creare una nuova proprietà documento personalizzata collegata al contenuto. Questa proprietà restituisce l'oggetto proprietà appena creato o null se [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) non è valido.

L'esempio di codice seguente mostra come configurare un collegamento a una proprietà personalizzata:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Ottieni variabili documento

È possibile ottenere una raccolta di variabili del documento utilizzando la proprietà [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables). I nomi e i valori delle variabili sono stringhe.

L'esempio di codice seguente mostra come enumerare le variabili del documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Rimuovere le informazioni personali dal documento

Se si desidera condividere un documento Word con altre persone, è possibile rimuovere le informazioni personali come il nome dell'autore e la società. A tale scopo, utilizzare la proprietà [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) per impostare il flag che indica che Microsoft Word rimuoverà tutte le informazioni dell'utente da commenti, revisioni e proprietà del documento al momento del salvataggio del documento.

{{% alert color="primary" %}}

L'impostazione di questa opzione non rimuove effettivamente le informazioni personali durante l'elaborazione di un documento in Aspose.Words e influisce solo sul comportamento Microsoft Word.

{{% /alert %}}

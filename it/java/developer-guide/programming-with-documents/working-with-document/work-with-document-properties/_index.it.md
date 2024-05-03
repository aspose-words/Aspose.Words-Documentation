---
title: Lavorare con le proprietà dei documenti Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con le proprietà dei documenti
linktitle: Lavorare con le proprietà dei documenti
description: "Aspose.Words per Java consente di memorizzare alcune informazioni utili sul documento, come API e numero di versione o autorizzato Date, in proprietà documentali integrate o personalizzate."
type: docs
weight: 10
url: /it/java/work-with-document-properties/
---

Le proprietà dei documenti permettono di memorizzare alcune informazioni utili sul documento. Queste proprietà possono essere divise in due gruppi:

* Sistema o incorporato che contengono valori come titolo di documento, nome dell'autore, statistiche di documento e altri.
* # Definito dall'utente o personalizzato, fornito come coppie di valori di nome in cui l'utente può definire sia il nome che il valore.

È utile sapere che le informazioni su API e il numero di versione è scritto direttamente ai documenti di uscita. Ad esempio, dopo la conversione di un documento in PDF, Aspose.Words riempie nel campo "Applicazione" con "Aspose.Words", e il campo "Produttore PDF" con "Aspose.Words per Java YY.M.N. dove *YY.M.N* è la versione di Aspose.Words usato per la conversione. Per maggiori dettagli, vedere [Nome generatore o produttore incluso in documenti di uscita](/words/it/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Nota che **non può dirigere** Aspose.Words per modificare o rimuovere queste informazioni dai documenti di output.

{{% /alert %}}

## Proprietà del documento di accesso

Per accedere alle proprietà dei documenti Aspose.Words uso:

* # [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) per ottenere proprietà integrate.

* # [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) per ottenere proprietà personalizzate.

**BuiltInDocumentProperties** e **CustomDocumentProperties** sono collezioni di [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) oggetti. Questi oggetti possono essere ottenuti attraverso la proprietà dell'indice per nome o per indice.

**BuiltInDocumentProperties** fornisce inoltre l'accesso alle proprietà documentali attraverso una serie di proprietà inserite che restituiscono i valori del tipo appropriato. **CustomDocumentProperties** consente di aggiungere o rimuovere le proprietà del documento da un documento.

The [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) classe consente di ottenere il nome, il valore e il tipo di proprietà di un documento. [Valore]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value) messaggio un oggetto, ma vi è una serie di metodi che permettono di ottenere il valore della proprietà convertito in un tipo specifico. Dopo aver capito che tipo di proprietà è, è possibile utilizzare uno dei {0} i metodi, vieni {1}[ToString]](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) e **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), ottenere il valore del tipo appropriato.

Il seguente esempio di codice mostra come enumerate tutte le proprietà integrate e personalizzate in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file template di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

In Microsoft Word, è possibile accedere alle proprietà dei documenti utilizzando il menu "File → Properties".

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Aggiungere o rimuovere Proprietà del documento

Non è possibile aggiungere o rimuovere le proprietà del documento incorporato utilizzando Aspose.Words. È possibile modificare o aggiornare i propri valori.

Per aggiungere proprietà documentali personalizzate con Aspose.Words, utilizzare [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) metodo, passando il nuovo nome della proprietà e il valore del tipo appropriato. Il metodo restituisce il nuovo creato **DocumentProperty** oggetto.

Per rimuovere le proprietà personalizzate, utilizzare [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) metodo, passando il nome della proprietà per rimuovere, o il [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) metodo per rimuovere la proprietà per indice. È inoltre possibile rimuovere tutte le proprietà utilizzando [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) metodo.

Il seguente esempio di codice verifica se una proprietà personalizzata con un dato nome esiste in un documento e aggiunge alcune proprietà di documento più personalizzate:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file template di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Il seguente esempio di codice mostra come rimuovere una proprietà di documento personalizzata:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Aggiornamento Proprietà del documento integrato

Aspose.Words non aggiorna automaticamente le proprietà del documento, come Microsoft Word fa con alcune proprietà, ma fornisce un metodo per aggiornare alcune proprietà dei documenti integrati statisticamente. Chiama il [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) metodo per ricalcolare e aggiornare le seguenti proprietà:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Creare una nuova proprietà personalizzata collegato al contenuto

Aspose.Words fornisce [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) metodo per creare una nuova proprietà documentale personalizzata legata al contenuto. Questa proprietà restituisce l'oggetto di proprietà appena creato o null se il [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) è invalido.

Il seguente esempio di codice mostra come configurare un link a una proprietà personalizzata:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Ottieni Variabili di Documento

È possibile ottenere una raccolta di variabili di documento utilizzando la [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) proprieta'. I nomi e i valori variabili sono stringhe.

Il seguente esempio di codice mostra come enumerare variabili di documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file template di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Rimuovere i dati personali dal documento

Se si desidera condividere un documento di Word con altre persone, si può desiderare di rimuovere le informazioni personali come il nome dell'autore e la società. Per fare questo utilizzare [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) proprietà per impostare la bandiera indicando che Microsoft Word rimuoverà tutte le informazioni dell'utente da commenti, revisioni e proprietà del documento al momento del salvataggio del documento.

{{% alert color="primary" %}}

Impostare questa opzione non rimuove effettivamente le informazioni personali durante l'elaborazione di un documento in Aspose.Words e colpisce solo il Microsoft Word comportamento.

{{% /alert %}}

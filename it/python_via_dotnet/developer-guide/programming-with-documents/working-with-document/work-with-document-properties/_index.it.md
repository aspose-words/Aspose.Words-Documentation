---
title: Lavora con le proprietà del documento
second_title: Aspose.Words per Python via .NET
articleTitle: Lavora con le proprietà del documento
linktitle: Lavora con le proprietà del documento
description: "Aspose.Words per Python consente di memorizzare alcune informazioni utili sul documento, come API e numero di versione o Date autorizzato, nelle proprietà del documento integrate o personalizzate."
type: docs
weight: 10
url: /it/python-net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Le proprietà del documento consentono di memorizzare alcune informazioni utili sul documento. Queste proprietà possono essere divise in due gruppi:

* Sistema o built-in che contiene valori come titolo del documento, nome dell'autore, statistiche del documento e altri.
* Definito dall'utente o personalizzato, fornito come coppie nome-valore in cui l'utente può definire sia il nome che il valore.

È utile sapere che le informazioni su API e il numero di versione vengono scritte direttamente nei documenti di output. Ad esempio, durante la conversione di un documento in PDF, Aspose.Words compila il campo "Applicazione" con "Aspose.Words" e il campo "Produttore PDF" con "Aspose.Words per .NET YY.MN", dove *YY.M.N* è la versione di Aspose.Words utilizzata per la conversione. Per ulteriori dettagli, vedere [Nome del generatore o del produttore incluso nei documenti di output](/words/it/python-net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Tieni presente che puoi **non può dirigere** Aspose.Words per modificare o rimuovere queste informazioni dai documenti di output.

{{% /alert %}}

## Accedi alle proprietà del documento

Per accedere alle proprietà del documento in Aspose.Words utilizzare:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) per ottenere proprietà integrate.

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) per ottenere proprietà personalizzate.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) e [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) sono raccolte di oggetti [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/). Questi oggetti possono essere ottenuti tramite la proprietà indicizzatore per nome o per indice.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) fornisce inoltre l'accesso alle proprietà del documento tramite una serie di proprietà immesse che restituiscono valori del tipo appropriato. [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) consente di aggiungere o rimuovere proprietà del documento da un documento.

La classe [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) consente di ottenere il nome, il valore e il tipo di una proprietà del documento. [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) restituisce un oggetto, ma esiste una serie di metodi che consente di convertire il valore della proprietà in un tipo specifico. Dopo aver appreso il tipo della proprietà, è possibile utilizzare uno dei metodi **DocumentProperty.to_XXX**, ad esempio **Proprietàdocumento.\_\_str\_\_** e [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/), per ottenere il valore del tipo appropriato.

L'esempio di codice seguente mostra come enumerare tutte le proprietà integrate e personalizzate in un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

In Microsoft Word, puoi accedere alle proprietà del documento utilizzando il menu "File → Proprietà".

<img src="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" alt="lavorare con-document-properties-1.png" style="width:400px"/>

## Aggiungi o rimuovi proprietà del documento

Non è possibile aggiungere o rimuovere proprietà del documento integrate utilizzando Aspose.Words. Puoi solo modificare o aggiornare i loro valori.

Per aggiungere proprietà personalizzate al documento con Aspose.Words, utilizzare il metodo [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/), passando il nome della nuova proprietà e il valore del tipo appropriato. Il metodo restituisce l'oggetto [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) appena creato.

Per rimuovere proprietà personalizzate, utilizzare il metodo [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/), passandogli il nome della proprietà da rimuovere, oppure il metodo [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/) per rimuovere la proprietà in base all'indice. Puoi anche rimuovere tutte le proprietà utilizzando il metodo [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/).

Il seguente esempio di codice controlla se in un documento esiste una proprietà personalizzata con un determinato nome e aggiunge alcune altre proprietà personalizzate del documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

L'esempio di codice seguente mostra come rimuovere una proprietà del documento personalizzata:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## Aggiorna le proprietà del documento integrate

Aspose.Words non aggiorna automaticamente le proprietà del documento, come fa Microsoft Word con alcune proprietà, ma fornisce un metodo per aggiornare alcune proprietà statistiche integrate del documento. Chiama il metodo [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/) per ricalcolare e aggiornare le seguenti proprietà:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## Crea una nuova proprietà personalizzata collegata al contenuto

Aspose.Words fornisce il metodo [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) per creare una nuova proprietà del documento personalizzata collegata al contenuto. Questa proprietà restituisce l'oggetto proprietà appena creato oppure null se l'**collegamento_fonte** non è valido.

L'esempio di codice seguente mostra come configurare un collegamento a una proprietà personalizzata:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## Ottieni variabili del documento

Puoi ottenere una raccolta di variabili del documento utilizzando la proprietà [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/). I nomi e i valori delle variabili sono stringhe.

Il seguente esempio di codice mostra come aggiungere e accedere alle variabili del documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Rimuovere le informazioni personali dal documento

Se desideri condividere un documento Word con altre persone, potresti voler rimuovere informazioni personali come il nome dell'autore e l'azienda. Per fare ciò, utilizzare la proprietà [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/) per impostare il flag che indica che Microsoft Word rimuoverà tutte le informazioni dell'utente da commenti, revisioni e proprietà del documento al momento del salvataggio del documento.

L'esempio di codice seguente mostra come rimuovere le informazioni personali:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

L'impostazione di questa opzione non rimuove effettivamente le informazioni personali durante l'elaborazione di un documento in Aspose.Words e influisce solo sul comportamento Microsoft Word.

{{% /alert %}}

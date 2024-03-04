---
title: Lavora con le proprietà del documento in C#
second_title: Aspose.Words per .NET
articleTitle: Lavora con le proprietà del documento
linktitle: Lavora con le proprietà del documento
description: "Aspose.Words per .NET consente di archiviare alcune informazioni utili sul documento, come API e numero di versione o Date autorizzato, nelle proprietà del documento integrate o personalizzate utilizzando C#."
type: docs
weight: 10
url: /it/net/work-with-document-properties/
---

Le proprietà del documento consentono di memorizzare alcune informazioni utili sul documento. Queste proprietà possono essere divise in due gruppi:

* Sistema o built-in che contiene valori come titolo del documento, nome dell'autore, statistiche del documento e altri.
* Definito dall'utente o personalizzato, fornito come coppie nome-valore in cui l'utente può definire sia il nome che il valore.

È utile sapere che le informazioni su API e il numero di versione vengono scritte direttamente nei documenti di output. Ad esempio, durante la conversione di un documento in PDF, Aspose.Words compila il campo "Applicazione" con "Aspose.Words" e il campo "Produttore PDF" con "Aspose.Words per .NET YY.MN", dove *YY.M.N* è la versione di Aspose.Words utilizzata per la conversione. Per ulteriori dettagli, vedere [Nome del generatore o del produttore incluso nei documenti di output](/words/it/net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Tieni presente che puoi **non può dirigere** Aspose.Words per modificare o rimuovere queste informazioni dai documenti di output.

{{% /alert %}}

## Accedi alle proprietà del documento

Per accedere alle proprietà del documento in Aspose.Words utilizzare:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/it/net/aspose.words/document/builtindocumentproperties/) per ottenere proprietà integrate.

* [CustomDocumentProperties](https://reference.aspose.com/words/it/net/aspose.words/document/customdocumentproperties/) per ottenere proprietà personalizzate.

**BuiltInDocumentProperties** e **CustomDocumentProperties** sono raccolte di oggetti [DocumentProperty](https://reference.aspose.com/words/it/net/aspose.words.properties/documentproperty/). Questi oggetti possono essere ottenuti tramite la proprietà indicizzatore per nome o per indice.

**BuiltInDocumentProperties** fornisce inoltre l'accesso alle proprietà del documento tramite una serie di proprietà immesse che restituiscono valori del tipo appropriato. **CustomDocumentProperties** consente di aggiungere o rimuovere proprietà del documento da un documento.

La classe [DocumentProperty](https://reference.aspose.com/words/it/net/aspose.words.properties/documentproperty/) consente di ottenere il nome, il valore e il tipo di una proprietà del documento. [Value](https://reference.aspose.com/words/it/net/aspose.words.properties/documentproperty/value/) restituisce un oggetto, ma esiste una serie di metodi che consente di convertire il valore della proprietà in un tipo specifico. Dopo aver appreso il tipo della proprietà, è possibile utilizzare uno dei metodi **DocumentProperty.ToXXX**, ad esempio **DocumentProperty.**[ToString](https://reference.aspose.com/words/it/net/aspose.words.properties/documentproperty/tostring/) e **DocumentProperty.**[ToInt](https://reference.aspose.com/words/it/net/aspose.words.properties/documentproperty/toint/), per ottenere il valore del tipo appropriato.

L'esempio di codice seguente mostra come enumerare tutte le proprietà integrate e personalizzate in un documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

In Microsoft Word, puoi accedere alle proprietà del documento utilizzando il menu "File → Proprietà".

<img src="/words/net/work-with-document-properties/work-with-document-properties-1.png" alt="lavorare con-document-properties-1.png" style="width:400px"/>

## Aggiungi o rimuovi proprietà del documento

Non è possibile aggiungere o rimuovere proprietà del documento integrate utilizzando Aspose.Words. Puoi solo modificare o aggiornare i loro valori.

Per aggiungere proprietà personalizzate al documento con Aspose.Words, utilizzare il metodo [Add](https://reference.aspose.com/words/it/net/aspose.words.properties/customdocumentproperties/add/#add/), passando il nome della nuova proprietà e il valore del tipo appropriato. Il metodo restituisce l'oggetto **DocumentProperty** appena creato.

Per rimuovere proprietà personalizzate, utilizzare il metodo [Remove](https://reference.aspose.com/words/it/net/aspose.words.properties/documentpropertycollection/remove/), passandogli il nome della proprietà da rimuovere, oppure il metodo [RemoveAt](https://reference.aspose.com/words/it/net/aspose.words.properties/documentpropertycollection/remove/at) per rimuovere la proprietà in base all'indice. Puoi anche rimuovere tutte le proprietà utilizzando il metodo [Clear](https://reference.aspose.com/words/it/net/aspose.words.properties/documentpropertycollection/clear/).

Il seguente esempio di codice controlla se in un documento esiste una proprietà personalizzata con un determinato nome e aggiunge alcune altre proprietà personalizzate del documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

L'esempio di codice seguente mostra come rimuovere una proprietà del documento personalizzata:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## Aggiorna le proprietà del documento integrate

Aspose.Words non aggiorna automaticamente le proprietà del documento, come fa Microsoft Word con alcune proprietà, ma fornisce un metodo per aggiornare alcune proprietà statistiche integrate del documento. Chiama il metodo [UpdateWordCount](https://reference.aspose.com/words/it/net/aspose.words/document/updatewordcount/#updatewordcount/) per ricalcolare e aggiornare le seguenti proprietà:

* [Characters](https://reference.aspose.com/words/it/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/it/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/it/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/it/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/it/net/aspose.words.properties/builtindocumentproperties/lines/)

## Crea una nuova proprietà personalizzata collegata al contenuto

Aspose.Words fornisce il metodo [AddLinkToContent](https://reference.aspose.com/words/it/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) per creare una nuova proprietà del documento personalizzata collegata al contenuto. Questa proprietà restituisce l'oggetto proprietà appena creato oppure null se l'[LinkSource](https://reference.aspose.com/words/it/net/aspose.words.properties/documentproperty/linksource/) non è valido.

L'esempio di codice seguente mostra come configurare un collegamento a una proprietà personalizzata:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## Ottieni variabili del documento

Puoi ottenere una raccolta di variabili del documento utilizzando la proprietà [Variables](https://reference.aspose.com/words/it/net/aspose.words/document/variables/). I nomi e i valori delle variabili sono stringhe.

L'esempio di codice seguente mostra come enumerare le variabili del documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Rimuovere le informazioni personali dal documento

Se desideri condividere un documento Word con altre persone, potresti voler rimuovere informazioni personali come il nome dell'autore e l'azienda. Per fare ciò, utilizzare la proprietà [RemovePersonalInformation](https://reference.aspose.com/words/it/net/aspose.words/document/removepersonalinformation/) per impostare il flag che indica che Microsoft Word rimuoverà tutte le informazioni dell'utente da commenti, revisioni e proprietà del documento al momento del salvataggio del documento.

L'esempio di codice seguente mostra come rimuovere le informazioni personali:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

L'impostazione di questa opzione non rimuove effettivamente le informazioni personali durante l'elaborazione di un documento in Aspose.Words e influisce solo sul comportamento Microsoft Word.

{{% /alert %}}

---
title: Sostituisci i campi con Testo Java
second_title: Aspose.Words per Java
articleTitle: Sostituire i campi con testo statico
linktitle: Sostituire i campi con testo statico
description: "Scopri come sostituire i campi con il testo in Java. Sostituire i campi con dati statici usando Java API."
type: docs
weight: 37
url: /it/java/replace-fields/
timestamp: 2024-01-27-14-07-04
---

La sostituzione dei campi è spesso necessaria quando si desidera salvare il documento come copia statica. Ad esempio, quando si invia come allegato in una e-mail. La conversione di campi come `DATE` o `TIME` in testo statico consentirà al documento di visualizzare la stessa data di quando è stato inviato. Inoltre, in alcune situazioni, potrebbe essere necessario rimuovere i campi condizionali `IF` dal documento e sostituirli con il risultato di testo più recente. Ad esempio, convertendo il risultato del campo `IF` in testo statico in modo che non modifichi più dinamicamente il suo valore quando i campi nel documento vengono aggiornati.

Il diagramma seguente mostra come il campo `IF` è memorizzato in un documento:

* il testo è circondato dai nodi di campo speciali - [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) e [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* il nodo [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) separa il testo all'interno del campo nel codice del campo e nel risultato del campo
* il codice del campo definisce il comportamento generale del campo, mentre il risultato del campo mantiene il risultato più recente quando questo campo viene aggiornato utilizzando Microsoft Word o Aspose.Words
* il risultato del campo è ciò che viene memorizzato nel campo e visualizzato nel documento quando viene visualizzato

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

La struttura può anche essere vista sotto in forma gerarchica usando il progetto demo **"DocumentExplorer"**, che viene fornito con il programma di installazione **Aspose.Words**.

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## Campi che non possono essere sostituiti da testo

La sostituzione di un campo con testo statico non funziona correttamente per alcuni campi in un'intestazione o in un piè di pagina.

Ad esempio, il tentativo di convertire il campo `PAGE` in un'intestazione o piè di pagina in testo statico comporterà la visualizzazione dello stesso valore in tutte le pagine. Questo perché intestazioni e piè di pagina vengono ripetuti su più pagine e, quando rimangono come campi, vengono gestiti in modo particolare in modo da visualizzare il risultato corretto per ogni pagina.

Tuttavia, nell'intestazione, il campo `PAGE` si traduce bene in esecuzione statica del testo. Questa esecuzione di testo verrà valutata come se fosse l'ultima pagina della sezione, il che farà sì che qualsiasi campo `PAGE` nell'intestazione visualizzi l'ultima pagina su tutte le pagine.

Il seguente esempio di codice mostra come sostituire il campo con il risultato più recente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## Convertire alcuni tipi di campo in parti specifiche del documento

Poiché il metodo **ConvertFieldsToStaticText** accetta due parametri: le proprietà [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) e l'enumerazione [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/), è possibile passare qualsiasi nodo composito a questo metodo. Ciò consente ai campi di essere convertiti in testo statico solo in parti specifiche del documento.

Ad esempio, è possibile passare un oggetto [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) e convertire i campi del tipo specificato dall'intero documento in testo statico, oppure è possibile passare un oggetto [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) di una sezione e convertire solo i campi trovati in quel corpo.

{{% alert color="primary" %}}

Quando si passa un nodo a livello di blocco come [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), tenere presente che in alcuni casi i campi possono estendersi su più paragrafi. Se ciò accade, si consiglia di passare il genitore del composito per evitare questo.

{{% /alert %}}

L'enumerazione [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) passata al metodo **ConvertFieldsToStaticText** specifica il tipo di campi da convertire in testo statico. Qualsiasi altro tipo di campo trovato nel documento rimarrà invariato.

L'esempio di codice seguente mostra come selezionare campi di un tipo specifico- *targetFieldType* in un nodo specifico - *compositeNode* e quindi convertirli in testo statico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

L'esempio di codice seguente mostra come convertire tutti i campi `IF` in un documento in testo statico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

L'esempio di codice seguente mostra come convertire tutti i campi `PAGE` in un corpo di un documento in testo statico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

L'esempio di codice seguente mostra come convertire tutti i campi `IF` nell'ultimo paragrafo in testo statico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}

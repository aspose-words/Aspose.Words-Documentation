---
title: Sostituisci campi con testo Java
second_title: Aspose.Words per Java
articleTitle: Sostituisci i campi con testo statico
linktitle: Sostituisci i campi con testo statico
description: "Scopri come sostituire i campi con il testo in Java. Sostituire i campi con i dati statici utilizzando Java API."
type: docs
weight: 37
url: /it/java/replace-fields/
---

Sostituzione campi è spesso richiesto quando si desidera salvare il documento come copia statica. Ad esempio, quando si invia come allegato in una e-mail. Campi di conversione come `DATE` o `TIME` a testo statico permetterà al documento di visualizzare la stessa data di quando è stato inviato. Inoltre, in alcune situazioni, potrebbe essere necessario rimuovere il condizionale `IF` campi dal documento e sostituirli con il risultato del testo più recente invece. Ad esempio, convertire il risultato del `IF` campo al testo statico in modo che non cambierà più dinamicamente il suo valore quando i campi nel documento vengono aggiornati.

Il diagramma seguente mostra come il `IF` campo è memorizzato in un documento:

* il testo è circondato dai nodi di campo speciali – [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) e [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) nodo separa il testo all'interno del campo nel codice di campo e il risultato del campo
* il codice di campo definisce il comportamento generale del campo, mentre il risultato del campo mantiene il risultato più recente quando questo campo viene aggiornato utilizzando Microsoft Word o Aspose.Words
* il risultato del campo è quello che viene memorizzato nel campo e visualizzato nel documento quando visualizzato

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

La struttura può essere vista anche di seguito in forma gerarchica utilizzando il progetto demo **“DocumentExplorer”**, che spedisce con **Aspose.Words** installatore.

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## Campi che non possono essere sostituiti da Testo

La sostituzione di un campo con testo statico non funziona correttamente per alcuni campi in un'intestazione o un piè di pagina.

Per esempio, cercando di convertire il `PAGE` campo in un intestazione o piè di pagina a testo statico si tradurrà nello stesso valore visualizzato su tutte le pagine. Questo perché intestazioni e piè di pagina vengono ripetuti in più pagine, e quando rimangono come campi, vengono gestiti in modo particolare in modo da visualizzare il risultato corretto per ogni pagina.

Tuttavia, nell'intestazione, `PAGE` campo si traduce bene alla corsa statica del testo. Questa esecuzione di testo sarà valutata come se fosse l'ultima pagina nella sezione, che causerà qualsiasi `PAGE` campo nell'intestazione per visualizzare l'ultima pagina su tutte le pagine.

Il seguente esempio di codice mostra come sostituire il campo con il suo risultato più recente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## Convertire alcuni tipi di campo in parti specifiche del documento

Dal **ConvertFieldsToStaticText** metodo accetta due parametri – il [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) proprietà e [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) enumerazione, è possibile passare qualsiasi nodo composito a questo metodo. Questo consente di convertire i campi in testo statico solo in parti specifiche del documento.

Per esempio, si può passare un [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) oggetti e converti i campi del tipo specificato dall'intero documento al testo statico, oppure puoi passare un [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) oggetto di una sezione e convertire solo i campi trovati in quel corpo.

{{% alert color="primary" %}}

Quando si passa un nodo a livello di blocco come un [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), essere consapevoli che in alcuni casi, i campi possono attraversare più paragrafi. Se questo accade si consiglia di passare il genitore del composito invece di evitare questo.

{{% /alert %}}

The [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) enumerazione passata alla **ConvertFieldsToStaticText** metodo specifica quale tipo di campi dovrebbe essere convertito in testo statico. Qualsiasi altro tipo di campo trovato nel documento rimarrà invariato.

Il seguente esempio di codice mostra come selezionare i campi di un tipo specifico – *targetFieldType* in un nodo specifico – *compositeNode* e poi convertirli in testo statico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

Il seguente esempio di codice mostra come convertire tutti `IF` campi in un documento a testo statico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

Il seguente esempio di codice mostra come convertire tutti `PAGE` campi in un corpo di un documento al testo statico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

Il seguente esempio di codice mostra come convertire tutti `IF` campi nell'ultimo paragrafo al testo statico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}

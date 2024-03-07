---
title: Sostituisci i campi C#
second_title: Aspose.Words per .NET
articleTitle: Sostituisci i campi con testo statico
linktitle: Sostituisci i campi con testo statico
description: "Scopri come sostituire i campi con testo in C#. Sostituisci i campi con dati statici utilizzando .NET API."
type: docs
weight: 37
url: /it/net/replace-fields/
---

La sostituzione dei campi è spesso necessaria quando desideri salvare il documento come copia statica. Ad esempio, quando si invia come allegato in un'e-mail. La conversione di campi come `DATE` o `TIME` in testo statico consentirà al documento di visualizzare la stessa data di quando è stato inviato. Inoltre, in alcune situazioni, potrebbe essere necessario rimuovere i campi `IF` condizionali dal documento e sostituirli invece con il risultato testuale più recente. Ad esempio, convertendo il risultato del campo `IF` in testo statico in modo che non cambi più dinamicamente il suo valore quando i campi nel documento vengono aggiornati.

Il diagramma seguente mostra come viene archiviato il campo `IF` in un documento:

* il testo è circondato dai nodi dei campi speciali – [FieldStart](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldstart/) e [FieldEnd](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldend)
* il nodo [FieldSeparator](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldseparator/) separa il testo all'interno del campo nel codice del campo e nel risultato del campo
* il codice del campo definisce il comportamento generale del campo, mentre il risultato del campo conserva il risultato più recente quando questo campo viene aggiornato utilizzando Microsoft Word o Aspose.Words
* il risultato del campo è ciò che viene memorizzato nel campo e visualizzato nel documento quando visualizzato

![update-remove-a-field-aspose-words](/words/net/replace-fields/updating-and-removing-a-field-1.png)

La struttura può essere vista anche di seguito in forma gerarchica utilizzando [progetto dimostrativo *"DocumentExplorer"*](https://github.com/aspose-words/Aspose.Words-for-.NET)*.*

![update-remove-a-field-aspose-words-2](/words/net/replace-fields/updating-and-removing-a-field-2.png)

## Campi che non possono essere sostituiti da testo

La sostituzione di un campo con testo statico non funziona correttamente per alcuni campi in un'intestazione o un piè di pagina.

Ad esempio, tentando di convertire il campo `PAGE` in un'intestazione o un piè di pagina in testo statico, verrà visualizzato lo stesso valore su tutte le pagine. Questo perché intestazioni e piè di pagina vengono ripetuti su più pagine e, quando rimangono come campi, vengono gestiti in modo particolare in modo da visualizzare il risultato corretto per ogni pagina.

Tuttavia, nell'intestazione, il campo `PAGE` si traduce bene in una sequenza di testo statica. Questa sequenza di testo verrà valutata come se fosse l'ultima pagina della sezione, il che farà sì che qualsiasi campo `PAGE` nell'intestazione visualizzi l'ultima pagina su tutte le pagine.

L'esempio di codice seguente mostra come sostituire il campo con il risultato più recente:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UnlinkFields.cs" >}}

## Converti determinati tipi di campi in parti specifiche del documento

Poiché il metodo **ConvertFieldsToStaticText** accetta due parametri: le proprietà [CompositeNode](https://reference.aspose.com/words/it/net/aspose.words/compositenode/) e l'enumerazione [FieldType](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldtype/), è possibile passare qualsiasi nodo composito a questo metodo. Ciò consente di convertire i campi in testo statico solo in parti specifiche del documento.

Ad esempio, puoi passare un oggetto [Document](https://reference.aspose.com/words/it/net/aspose.words/document/) e convertire i campi del tipo specificato dall'intero documento in testo statico, oppure puoi passare un oggetto [Body](https://reference.aspose.com/words/it/net/aspose.words/body/) di una sezione e convertire solo i campi trovati in quel corpo.

{{% alert color="primary" %}}

Quando passi un nodo a livello di blocco come un [Paragraph](https://reference.aspose.com/words/it/net/aspose.words/paragraph/), tieni presente che in alcuni casi i campi possono estendersi su più paragrafi. Se ciò accade, si consiglia di passare invece il genitore del composto per evitarlo.

{{% /alert %}}

L'enumerazione [FieldType](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldtype/) passata al metodo **ConvertFieldsToStaticText** specifica quale tipo di campi devono essere convertiti in testo statico. Qualsiasi altro tipo di campo trovato nel documento rimarrà invariato.

Il seguente esempio di codice mostra come selezionare campi di un tipo specifico – *targetFieldType* in un nodo specifico – *compositeNode* e poi convertirli in testo statico:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

L'esempio di codice seguente mostra come convertire tutti i campi `IF` in un documento in testo statico:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Linked%20fields.docx).

{{% /alert %}}

L'esempio di codice seguente mostra come convertire tutti i campi `PAGE` nel corpo di un documento in testo statico:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInBody-ConvertFieldsInBody.cs" >}}

Il seguente esempio di codice mostra come convertire tutti i campi `IF` nell'ultimo paragrafo in testo statico:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.cs" >}}

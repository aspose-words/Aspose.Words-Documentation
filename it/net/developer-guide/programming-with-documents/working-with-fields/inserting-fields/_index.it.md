---
title: Inserisci campi in C#
second_title: Aspose.Words per .NET
articleTitle: Inserisci campi
linktitle: Inserisci campi
description: "Come inserire campi in un documento utilizzando C#: impara diversi modi con esempi di codice."
type: docs
weight: 20
url: /it/net/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

Esistono diversi modi per inserire campi in un documento:

*utilizzando [DocumentBuilder](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/)
*utilizzando [FieldBuilder](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldbuilder/)
*utilizzando [Aspose.Words Document Object Model (DOM)](/words/it/net/aspose-words-document-object-model/)

In questo articolo esamineremo ciascun modo in modo più dettagliato e analizzeremo come inserire determinati campi utilizzando queste opzioni.

## Inserimento di campi in un documento utilizzando DocumentBuilder

In Aspose.Words il metodo [InsertField](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/insertfield/) viene utilizzato per inserire nuovi campi in un documento. Il primo parametro accetta il codice completo del campo da inserire. Il secondo parametro è facoltativo e consente di impostare manualmente il risultato del campo. Se non viene fornito il campo viene aggiornato automaticamente. È possibile passare null o vuoto a questo parametro per inserire un campo con un valore di campo vuoto. Se non sei sicuro della particolare sintassi del codice di campo, crea prima il campo in Microsoft Word e passa a visualizzarne il codice di campo.

{{% alert color="primary" %}}

Se il codice di campo ha un parametro contenente uno spazio, è necessario racchiuderlo tra segni vocali. In caso contrario, il campo sia in Microsoft Word che in Aspose.Words potrebbe non funzionare come previsto poiché il parametro viene considerato da entrambi come troncato.

{{% /alert %}}

Il seguente esempio di codice mostra come inserire un campo di unione in un documento utilizzando **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

La stessa tecnica viene utilizzata per inserire campi nidificati all'interno di altri campi.

Il seguente esempio di codice mostra come inserire campi nidificati all'interno di un altro campo utilizzando **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}

### Specificare la lingua a livello di campo

Un identificatore di lingua è un'abbreviazione numerica internazionale standard per la lingua di un paese o di una regione geografica. Con Aspose.Words è possibile specificare le impostazioni locali a livello di campo utilizzando la proprietà [LocaleId](https://reference.aspose.com/words/it/net/aspose.words.fields/field/localeid/), che ottiene o imposta l'ID delle impostazioni locali del campo.

L'esempio di codice seguente mostra come utilizzare questa opzione:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}

### Inserisci campo non digitato/vuoto

Se vuoi inserire campi non tipizzati/vuoti ({}) proprio come consente Microsoft Word, puoi utilizzare il metodo [InsertField](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/insertfield/) con il parametro [FieldType.FieldNone](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldtype/). Per inserire un campo in un documento Word, puoi premere la combinazione di tasti "Ctrl + F9".

L'esempio di codice seguente mostra come inserire un campo vuoto nel documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}

## Inserimento di campi in un documento utilizzando FieldBuilder
Il modo alternativo per inserire campi in Aspose.Words è la classe [FieldBuilder](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldbuilder/). Fornisce un'interfaccia fluida per specificare le opzioni di campo e i valori degli argomenti come testo, nodi o anche campi nidificati.

Il seguente esempio di codice mostra come inserire un campo in un documento utilizzando **FieldBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder.cs" >}}

## Inserimento di campi utilizzando DOM

Puoi anche inserire vari tipi di campi utilizzando [Aspose.Words Document Object Model (DOM)](/words/it/net/aspose-words-document-object-model/). In questa sezione vedremo alcuni esempi.

### Inserimento di un campo Unisci in un documento utilizzando DOM

Il campo `MERGEFIELD` nel documento Word può essere rappresentato dalla classe [FieldMergeField](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldmergefield/). È possibile utilizzare la classe **FieldMergeField** per eseguire le seguenti operazioni:

- specificare il nome del campo di unione
- specificare la formattazione del campo di unione
- specificare il testo che si trova tra il separatore di campo e la fine del campo di unione
- specificare il testo da inserire dopo il campo unione se il campo non è vuoto
- specificare il testo da inserire prima del campo unione se il campo non è vuoto

{{% alert color="primary" %}}

Per maggiori dettagli vedere la classe [FieldMergeField](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldmergefield/) API.

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere il campo `MERGE` utilizzando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}

### Inserimento del campo `ADDRESSBLOCK` Mail Merge in un documento utilizzando DOM

Il campo `ADDRESSBLOCK` viene utilizzato per inserire un blocco di indirizzi mail merge nel documento Word. Il campo `ADDRESSBLOCK` nel documento Word può essere rappresentato dalla classe [FieldAddressBlock](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldaddressblock/). È possibile utilizzare la classe **FieldAddressBlock** per eseguire le seguenti operazioni:

- specificare se includere nel campo il nome del paese/regione
- specificare se formattare l'indirizzo in base al paese/regione del destinatario come definito da POST*CODE (Universal Postal Union 2006)
- specificare il nome del paese/regione escluso
- specificare il formato del nome e dell'indirizzo
- specificare l'ID della lingua utilizzata per formattare l'indirizzo

{{% alert color="primary" %}}

Per maggiori dettagli vedere la classe [FieldAddressBlock](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldaddressblock/) API.

{{% /alert %}}

Il seguente esempio di codice mostra come aggiungere il campo `ADDRESSBLOCK` Mail Merge utilizzando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}

### Inserimento di un campo `ADVANCE` in un documento senza utilizzare DocumentBuilder

Il campo `ADVANCE` viene utilizzato per spostare il testo successivo all'interno di una riga a sinistra, a destra, in alto o in basso. Il campo `ADVANCE` nel documento Word può essere rappresentato dalla classe [FieldAdvance](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldadvance/). È possibile utilizzare la classe **FieldAdvance** per eseguire le seguenti operazioni:

- specificare il numero di punti di cui deve essere spostato verticalmente il testo che segue il campo dal bordo superiore della pagina
- specificare il numero di punti di cui il testo che segue il campo deve essere spostato orizzontalmente dal bordo sinistro della colonna, cornice o casella di testo
- specificare il numero di punti di cui il testo che segue il campo deve essere spostato a sinistra, a destra, in alto o in basso

{{% alert color="primary" %}}

Per maggiori dettagli vedere la classe [FieldAdvance](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldadvance/) API.

{{% /alert %}}

Il seguente esempio di codice mostra come aggiungere il campo `ADVANCE` utilizzando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}

### Inserimento di un campo `ASK` in un documento senza utilizzare DocumentBuilder

Il campo `ASK` viene utilizzato per richiedere all'utente il testo da assegnare a un segnalibro nel documento Word. Il campo `ASK` nel documento Word può essere rappresentato dalla classe [FieldAsk](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldask/). È possibile utilizzare la classe **FieldAsk** per eseguire le seguenti operazioni:

- specificare il nome del segnalibro
- specificare la risposta utente predefinita (valore iniziale contenuto nella finestra del prompt)
- specificare se la risposta dell'utente deve essere ricevuta una volta per un'operazione mail merge
- specificare il testo del prompt (il titolo della finestra del prompt)

{{% alert color="primary" %}}

Per maggiori dettagli vedere la classe [FieldAsk](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldask/) API.

{{% /alert %}}

Il seguente esempio di codice mostra come aggiungere il campo `ASK` utilizzando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}

### Inserimento di un campo `AUTHOR` in un documento senza utilizzare DocumentBuilder

Il campo `AUTHOR` viene utilizzato per specificare il nome dell'autore del documento dalle proprietà `Document`. Il campo `AUTHOR` nel documento Word può essere rappresentato dalla classe [FieldAuthor](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldauthor/). È possibile utilizzare la classe **FieldAuthor** per eseguire le seguenti operazioni:

- specificare il nome dell'autore del documento

{{% alert color="primary" %}}

Per maggiori dettagli vedere la classe [FieldAuthor](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldauthor/) API.

{{% /alert %}}

Il seguente esempio di codice mostra come aggiungere il campo `AUTHOR` utilizzando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}

### Inserimento di un campo `INCLUDETEXT` in un documento senza utilizzare DocumentBuilder

Il campo `INCLUDETEXT` inserisce il testo e la grafica contenuti nel documento denominato nel codice del campo. È possibile inserire l'intero documento o una parte del documento a cui fa riferimento un segnalibro. Questo campo nel documento di Word è rappresentato da INCLUDETEXT. È possibile utilizzare la classe [FieldIncludeText](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldincludetext/) per eseguire le seguenti operazioni:

- specificare il nome del segnalibro del documento incluso
- specificare l'ubicazione del documento

{{% alert color="primary" %}}

Per maggiori dettagli vedere la classe [FieldIncludeText](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldincludetext/) API.

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere il campo `INCLUDETEXT` utilizzando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}

### Inserimento di un campo `TOA` in un documento senza utilizzare DocumentBuilder

Il campo `TOA` (*Tabella delle autorità*) crea e inserisce una tabella delle autorità. Il campo `TOA` raccoglie le voci contrassegnate dai campi `TA` (*Table of Authorities Entry*). Microsoft Office Word inserisce il campo `TOA` quando si fa clic su *Inserisci tabella delle autorità* nel gruppo **Tabella delle autorità** nella scheda **References**. Quando visualizzi il campo `TOA` nel tuo documento, la sintassi è simile alla seguente:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Per maggiori dettagli vedere la classe [FieldToa](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldtoa/) API.

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere il campo `TOA` utilizzando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}

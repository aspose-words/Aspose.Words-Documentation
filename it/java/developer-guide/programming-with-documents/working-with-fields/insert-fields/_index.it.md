---
title: Inserisci campi in Java
second_title: Aspose.Words per Java
articleTitle: Inserisci campi
linktitle: Inserisci campi
description: "Diversi modi per inserire campi nel documento utilizzando Java."
type: docs
weight: 20
url: /it/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

Esistono diversi modi per inserire campi in un documento:

- usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- usando [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- servendosi [Aspose.Words Modello oggetto documento (DOM)](/words/java/aspose-words-document-object-model/)

In questo articolo, esamineremo ogni modo in modo più dettagliato e analizzeremo come inserire determinati campi utilizzando queste opzioni.

## Inserimento di campi in un documento utilizzando DocumentBuilder

In Aspose.Words il metodo [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) viene utilizzato per inserire nuovi campi in un documento. Il primo parametro accetta il codice di campo completo del campo da inserire. Il secondo parametro è facoltativo e consente di impostare manualmente il risultato del campo. Se questo non viene fornito, il campo viene aggiornato automaticamente. È possibile passare null o empty a questo parametro per inserire un campo con un valore di campo vuoto. Se non si è sicuri della particolare sintassi del codice di campo, creare prima il campo in Microsoft Word e passare a vedere il relativo codice di campo.

{{% alert color="primary" %}}

Se il codice del campo ha un parametro contenente uno spazio, deve essere racchiuso tra i segni vocali. Altrimenti il campo in entrambi Microsoft Word e Aspose.Words potrebbe non funzionare come previsto in quanto il parametro viene trattato da entrambi come troncato.

{{% /alert %}}

Nell'esempio di codice seguente viene illustrato come inserire un campo di unione in un documento utilizzando **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

La stessa tecnica viene utilizzata per inserire campi annidati all'interno di altri campi.

Nell'esempio di codice seguente viene illustrato come inserire campi annidati all'interno di un altro campo utilizzando **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Specificare Locale a livello di campo

Un identificatore di lingua è un'abbreviazione numerica internazionale standard per la lingua in un paese o regione geografica. Con Aspose.Words, è possibile specificare le impostazioni locali a livello di campo utilizzando la proprietà [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId), che ottiene o imposta le impostazioni locali del campo ID.

Il seguente esempio di codice mostra come utilizzare questa opzione:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Inserisci campo non tipizzato / vuoto

Se si desidera inserire campi non tipizzati / vuoti ({}) proprio come Microsoft Word consente, è possibile utilizzare il metodo [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) con il parametro [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/). Per inserire un campo in un documento di Word, è possibile premere la combinazione di tasti "Ctrl + F9".

Il seguente esempio di codice mostra come inserire un campo vuoto nel documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Inserisci `COMPARE` Campo

Il campo `COMPARE` confronta due valori e restituisce il valore numerico 1 se il confronto è vero o 0 se il confronto è falso.

L'esempio di codice seguente mostra come aggiungere campi `COMPARE` usando DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Inserisci `IF` Campo

Il campo `IF` può essere utilizzato per valutare gli argomenti in modo condizionale.

L'esempio di codice seguente mostra come aggiungere campi `IF` usando DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Inserimento di campi in un documento utilizzando FieldBuilder

Il modo alternativo per inserire i campi in Aspose.Words è la classe [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/). Fornisce un'interfaccia fluente per specificare gli switch di campo e i valori degli argomenti come testo, nodi o persino campi nidificati.

L'esempio di codice seguente mostra come inserire un campo in un documento utilizzando **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Inserimento di campi usando DOM

È inoltre possibile inserire vari tipi di campi utilizzando [Aspose.Words Modello oggetto documento (DOM)](/words/java/aspose-words-document-object-model/). In questa sezione, vedremo alcuni esempi.

### Inserimento di un campo di unione in un documento utilizzando DOM

`MERGEFIELD` field in Word document can be represented by the [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) class. You can use **FieldMergeField** class to perform the following operations:

- specificare il nome del campo Unione
- specificare la formattazione del campo Unione
- specificare il testo compreso tra il separatore di campo e la fine del campo di unione
- specificare il testo da inserire dopo il campo Unione se il campo non è vuoto
- specificare il testo da inserire prima del campo Unione se il campo non è vuoto

{{% alert color="primary" %}}

Per ulteriori dettagli, vedere la classe [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) API.

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere il campo `MERGE` usando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Inserimento del campo Mail Merge `ADDRESSBLOCK` in un documento utilizzando DOM

Il campo `ADDRESSBLOCK` viene utilizzato per inserire un blocco di indirizzi Mail Merge in un documento Word. Il campo `ADDRESSBLOCK` nel documento Word può essere rappresentato dalla classe [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/). È possibile utilizzare la classe **FieldAddressBlock** per eseguire le seguenti operazioni:

- specificare se includere il nome del paese / regione nel campo
- specificare se formattare l'indirizzo in base al paese / regione del destinatario come definito da POST * CODE (Unione Postale Universale 2006)
- specificare il nome del paese/regione escluso
- specificare il formato nome e indirizzo
- specificare la lingua ID utilizzata per formattare l'indirizzo

{{% alert color="primary" %}}

Per ulteriori dettagli, vedere la classe [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) API.

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere il campo Mail Merge `ADDRESSBLOCK` usando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Inserimento del campo `ADVANCE` in un documento senza usare DocumentBuilder

Il campo `ADVANCE` viene utilizzato per compensare il testo successivo all'interno di una riga a sinistra, a destra, in alto o in basso. Il campo `ADVANCE` nel documento Word può essere rappresentato dalla classe [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/). È possibile utilizzare la classe **FieldAdvance** per eseguire le seguenti operazioni:

- specificare il numero di punti in base ai quali il testo che segue il campo deve essere spostato verticalmente dal bordo superiore della pagina
- specificare il numero di punti in base ai quali il testo che segue il campo deve essere spostato orizzontalmente dal bordo sinistro della colonna, della cornice o della casella di testo
- specificare il numero di punti in base ai quali il testo che segue il campo deve essere spostato a sinistra, a destra, verso l'alto o verso il basso

{{% alert color="primary" %}}

Per ulteriori dettagli, vedere la classe [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) API.

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere il campo `ADVANCE` usando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Inserimento del campo `ASK` in un documento senza usare DocumentBuilder

Il campo `ASK` viene utilizzato per richiedere all'utente il testo da assegnare a un segnalibro nel documento Word. Il campo `ASK` nel documento Word può essere rappresentato dalla classe [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/). È possibile utilizzare la classe **FieldAsk** per eseguire le seguenti operazioni:

- specificare il nome del segnalibro
- specificare la risposta utente predefinita (valore iniziale contenuto nella finestra del prompt)
- specificare se la risposta dell'utente deve essere ricevuta una volta per un'operazione Mail Merge
- specificare il testo del prompt (il titolo della finestra del prompt)

{{% alert color="primary" %}}

Per ulteriori dettagli, vedere la classe [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) API.

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere il campo `ASK` usando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Inserimento del campo `AUTHOR` in un documento senza usare DocumentBuilder

Il campo `AUTHOR` viene utilizzato per specificare il nome dell'autore del documento dalle proprietà `Document`. Il campo `AUTHOR` nel documento Word può essere rappresentato dalla classe [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/). È possibile utilizzare la classe **FieldAuthor** per eseguire le seguenti operazioni:

- specificare il nome dell'autore del documento

{{% alert color="primary" %}}

Per ulteriori dettagli, vedere la classe [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) API.

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere il campo `AUTHOR` usando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Inserimento del campo `INCLUDETEXT` in un documento senza usare DocumentBuilder

Il campo `INCLUDETEXT` inserisce il testo e la grafica contenuti nel documento denominato nel codice del campo. È possibile inserire l'intero documento o una parte del documento a cui fa riferimento un segnalibro. Questo campo nel documento Word è rappresentato da INCLUDETEXT. È possibile utilizzare la classe [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) per eseguire le seguenti operazioni:

- specificare il nome del segnalibro del documento incluso
- specificare la posizione del documento

{{% alert color="primary" %}}

Per ulteriori dettagli, vedere la classe [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) API.

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere il campo `INCLUDETEXT` usando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Inserimento del campo `TOA` in un documento senza usare DocumentBuilder

Il campo`TOA` (*Table of Authorities*) crea e inserisce una tabella di autorità. Il campo `TOA` raccoglie le voci contrassegnate dai campi `TA` (*Table of Authorities Entry*). Microsoft Office Word inserisce il campo `TOA` quando si fa clic su *Insert Table of Authorities* nel gruppo **Table of Authorities** nella scheda **References**. Quando si visualizza il campo `TOA` nel documento, la sintassi è simile a questa:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Per ulteriori dettagli, vedere la classe [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) API.

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere il campo `TOA` usando DOM a un paragrafo in un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}

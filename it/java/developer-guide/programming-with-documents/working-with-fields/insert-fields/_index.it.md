---
title: Inserisci campi in Java
second_title: Aspose.Words per Java
articleTitle: Inserisci campi
linktitle: Inserisci campi
description: "Diversi modi per inserire i campi nel documento utilizzando Java."
type: docs
weight: 20
url: /it/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

Ci sono diversi modi per inserire i campi in un documento:

- usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- usando [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- usando [Aspose.Words Document Object Model (DOM)](/words/it/java/aspose-words-document-object-model/)

In questo articolo, vedremo ogni modo in modo più dettagliato e analizzare come inserire alcuni campi utilizzando queste opzioni.

## Inserire i campi in un documento utilizzando DocumentBuilder

In Aspose.Words il [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) il metodo viene utilizzato per inserire nuovi campi in un documento. Il primo parametro accetta il codice completo del campo da inserire. Il secondo parametro è facoltativo e consente di impostare manualmente il risultato del campo. Se questo non viene fornito, il campo viene aggiornato automaticamente. È possibile passare nullo o vuoto a questo parametro per inserire un campo con un valore di campo vuoto. Se non sei sicuro della particolare sintassi codice campo, creare il campo in Microsoft Word prima e passare a vedere il suo codice di campo.

{{% alert color="primary" %}}

Se il vostro codice di campo ha un parametro contenente uno spazio allora deve essere racchiuso all'interno di segni di discorso. Altrimenti il campo in entrambi Microsoft Word e Aspose.Words non può funzionare come previsto in quanto il parametro è trattato sia come troncato.

{{% /alert %}}

Il seguente esempio di codice mostra come inserire un campo di fusione in un documento utilizzando **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

La stessa tecnica viene utilizzata per inserire campi nidificati in altri campi.

Il seguente esempio di codice dimostra come inserire i campi nidificato in un altro campo utilizzando **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Specificare Locale a livello di campo

Un identificatore linguistico è un'abbreviazione numerica internazionale standard per la lingua in un paese o in una regione geografica. Con Aspose.Words, è possibile specificare il Locale a livello di campo utilizzando il [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) proprietà, che ottiene o imposta l'ID locale del campo.

Il seguente esempio di codice mostra come utilizzare questa opzione:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Inserire Untyped / Campo vuoto

Se si desidera inserire campi non digitati/vuoti ({}♪ just like Microsoft Word consente, è possibile utilizzare [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) metodo con [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) parametro. Per inserire un campo in un documento di Word, è possibile premere "Ctrl + F9" combinazione di tasti.

Il seguente esempio di codice mostra come inserire un campo vuoto nel documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Inserto `COMPARE` Campo

The `COMPARE` campo confronta due valori e restituisce il valore numerico 1 se il confronto è true o 0 se il confronto è false.

Il seguente esempio di codice mostra come aggiungere `COMPARE` campi utilizzando DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Inserto `IF` Campo

The `IF` campo può essere utilizzato per valutare gli argomenti condizionatamente.

Il seguente esempio di codice mostra come aggiungere `IF` campi utilizzando DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Inserire i campi in un documento utilizzando FieldBuilder

Il modo alternativo per inserire i campi in Aspose.Words è il [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) classe. Fornisce un'interfaccia fluente per specificare gli interruttori di campo e i valori di argomento come testo, nodi o anche campi nidificati.

Il seguente esempio di codice mostra come inserire un campo in un documento utilizzando **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Inserimento di campi utilizzando DOM

È inoltre possibile inserire vari tipi di campi utilizzando [Aspose.Words Document Object Model (DOM)](/words/it/java/aspose-words-document-object-model/). In questa sezione, vedremo alcuni esempi.

### Inserimento fusione Campo in un documento utilizzando DOM

`MERGEFIELD` campo nel documento di Word può essere rappresentato dal [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) classe. È possibile utilizzare **FieldMergeField** classe per eseguire le seguenti operazioni:

- specificare il nome del campo di fusione
- specificare la formattazione del campo di fusione
- specificare il testo che è tra il separatore di campo e l'estremità di campo del campo di fusione
- specificare il testo da inserire dopo il campo di fusione se il campo non è vuoto
- specificare il testo da inserire prima del campo di fusione se il campo non è vuoto

{{% alert color="primary" %}}

Per maggiori dettagli, vedere il [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) classe API.

{{% /alert %}}

Il seguente esempio di codice mostra come aggiungere `MERGE` campo usando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Inserimento Mail Merge `ADDRESSBLOCK` campo in un documento utilizzando DOM

The `ADDRESSBLOCK` campo viene utilizzato per inserire un Mail Merge blocco indirizzo in un documento di Word. `ADDRESSBLOCK` campo nel documento di Word può essere rappresentato dal [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) classe. È possibile utilizzare **FieldAddressBlock** classe per eseguire le seguenti operazioni:

- specificare se includere il nome del paese/regione nel campo
- specificare se formattare l'indirizzo in base al paese/regione del destinatario come definito da POST*CODE (Unione Postale Universale 2006)
- specificare il nome paese/regione esclusi
- specificare il formato nome e indirizzo
- specificare l'ID della lingua utilizzato per formattare l'indirizzo

{{% alert color="primary" %}}

Per maggiori dettagli, vedere il [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) classe API.

{{% /alert %}}

Il seguente esempio di codice mostra come aggiungere Mail Merge `ADDRESSBLOCK` Campo usando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Inserimento `ADVANCE` campo in un documento senza usare DocumentBuilder

The `ADVANCE` campo viene utilizzato per compensare il testo successivo all'interno di una linea a sinistra, destra, su o giù. `ADVANCE` campo nel documento di Word può essere rappresentato dal [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) classe. È possibile utilizzare **FieldAdvance** classe per eseguire le seguenti operazioni:

- specificare il numero di punti con cui il testo che segue il campo deve essere spostato verticalmente dal bordo superiore della pagina
- specificare il numero di punti con cui il testo che segue il campo deve essere spostato orizzontalmente dal bordo sinistro della colonna, cornice o casella di testo
- specificare il numero di punti con cui il testo che segue il campo deve essere spostato a sinistra, a destra, in alto o in basso

{{% alert color="primary" %}}

Per maggiori dettagli, vedere il [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) classe API.

{{% /alert %}}

Il seguente esempio di codice mostra come aggiungere `ADVANCE` Campo usando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Inserimento `ASK` campo in un documento senza usare DocumentBuilder

The `ASK` campo viene utilizzato per richiedere all'utente il testo per assegnare a un segnalibro nel documento di Word. `ASK` campo nel documento di Word può essere rappresentato dal [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) classe. È possibile utilizzare **FieldAsk** classe per eseguire le seguenti operazioni:

- specificare il nome del segnalibro
- specificare la risposta utente predefinita (valore iniziale contenuto nella finestra del prompt)
- specificare se la risposta dell'utente deve essere ricevuta una volta per una Mail Merge operazione
- specificare il testo del prompt (il titolo della finestra del prompt)

{{% alert color="primary" %}}

Per maggiori dettagli, vedere il [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) classe API.

{{% /alert %}}

Il seguente esempio di codice mostra come aggiungere `ASK` Campo usando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Inserimento `AUTHOR` campo in un documento senza usare DocumentBuilder

The `AUTHOR` campo viene utilizzato per specificare il nome dell'autore di Documento dal `Document` proprietà. `AUTHOR` campo nel documento di Word può essere rappresentato dal [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) classe. È possibile utilizzare **FieldAuthor** classe per eseguire le seguenti operazioni:

- specificare il nome dell'autore del documento

{{% alert color="primary" %}}

Per maggiori dettagli, vedere il [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) classe API.

{{% /alert %}}

Il seguente esempio di codice mostra come aggiungere `AUTHOR` Campo usando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Inserimento `INCLUDETEXT` campo in un documento senza usare DocumentBuilder

The `INCLUDETEXT` campo inserisce il testo e la grafica contenuti nel documento denominato nel codice campo. È possibile inserire l'intero documento o una parte del documento di cui a un segnalibro. Questo campo nel documento di Word è rappresentato da INCLUDETEXT. È possibile utilizzare [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) classe per eseguire le seguenti operazioni:

- specificare il nome del segnalibro del documento incluso
- specificare la posizione del documento

{{% alert color="primary" %}}

Per maggiori dettagli, vedere il [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) classe API.

{{% /alert %}}

Il seguente esempio di codice mostra come aggiungere `INCLUDETEXT` campo usando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Inserimento `TOA` campo in un documento senza usare DocumentBuilder

The `TOA` (*Tabella delle autorità*) campo costruisce e inserisce una tabella delle autorità. The `TOA` campi raccoglie le voci segnate da `TA` (*Table of Authority Entry*) campi. Microsoft Office Word inserisce il `TOA` campo quando si fa clic su *Inserisci tabella delle autorità* nel **Tabella delle autorità** gruppo sul **References** scheda. Quando si vede il `TOA` campo nel tuo documento, la sintassi assomiglia a questo:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Per maggiori dettagli, vedere il [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) classe API.

{{% /alert %}}

Il seguente esempio di codice mostra come aggiungere `TOA` campo usando DOM a un paragrafo in un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}

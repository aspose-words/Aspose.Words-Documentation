---
title: Inserire campi in C++
second_title: Aspose.Words per C++
articleTitle: Inserisci campi
linktitle: Inserisci campi
description: "Diversi modi per inserire campi nel documento utilizzando C++."
type: docs
weight: 20
url: /it/cpp/inserting-fields/
---

Esistono diversi modi per inserire campi in un documento:

- usando [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)
- usando [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)
- servendosi [Aspose.Words Modello a oggetti documento (DOM)](/words/cpp/aspose-words-document-object-model/)

In questo articolo, esamineremo ogni modo in modo più dettagliato e analizzeremo come inserire determinati campi utilizzando queste opzioni.

## Inserimento di campi in un documento utilizzando DocumentBuilder

In Aspose.Words il metodo [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) viene utilizzato per inserire nuovi campi in un documento. Il primo parametro accetta il codice di campo completo del campo da inserire. Il secondo parametro è facoltativo e consente di impostare manualmente il risultato del campo. Se questo non viene fornito, il campo viene aggiornato automaticamente. È possibile passare null o empty a questo parametro per inserire un campo con un valore di campo vuoto. Se non si è sicuri della particolare sintassi del codice di campo, creare prima il campo in Microsoft Word e passare a vedere il relativo codice di campo.

{{% alert color="primary" %}}

Se il codice del campo ha un parametro contenente uno spazio, deve essere racchiuso tra i segni vocali. Altrimenti il campo in entrambi Microsoft Word e Aspose.Words potrebbe non funzionare come previsto poiché il parametro viene trattato da entrambi come troncato

{{% /alert %}}

Nell'esempio di codice seguente viene illustrato come inserire un campo di unione in un documento utilizzando **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

La stessa tecnica viene utilizzata per inserire campi annidati all'interno di altri campi.

L'esempio di codice seguente mostra come inserire campi annidati all'interno di un altro campo utilizzando **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### Specificare Locale a livello di campo

Un identificatore di lingua è un'abbreviazione numerica internazionale standard per la lingua in un paese o regione geografica. Con Aspose.Words, è possibile specificare le impostazioni locali a livello di campo utilizzando la proprietà [LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/), che ottiene o imposta l'ID delle impostazioni locali del campo.

Il seguente esempio di codice mostra come utilizzare questa opzione:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### Inserisci campo non tipizzato / vuoto

Se si desidera inserire campi non tipizzati / vuoti ({}) proprio come Microsoft Word consente, è possibile utilizzare il metodo [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield) con il parametro [FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/). Per inserire un campo in un documento Word, è possibile premere la combinazione di tasti "Ctrl + F9".

Il seguente esempio di codice mostra come inserire un campo vuoto nel documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## Inserimento di campi in un documento utilizzando FieldBuilder

Il modo alternativo per inserire i campi in Aspose.Words è la classe [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/). Fornisce un'interfaccia fluente per specificare gli switch di campo e i valori degli argomenti come testo, nodi o persino campi nidificati.

L'esempio di codice seguente mostra come inserire un campo in un documento utilizzando **FieldBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## Inserimento di campi utilizzando DOM

È inoltre possibile inserire vari tipi di campi utilizzando [Aspose.Words Modello a oggetti documento (DOM)](/words/cpp/aspose-words-document-object-model/). In questa sezione, vedremo alcuni esempi.

### Inserimento di un campo di unione in un documento utilizzando DOM

Il campo `MERGEFIELD` nel documento Word può essere rappresentato dalla classe [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/). È possibile utilizzare la classe **FieldMergeField** per eseguire le seguenti operazioni:

- specificare il nome del campo Unione
- specificare la formattazione del campo Unione
- specificare il testo compreso tra il separatore di campo e la fine del campo di unione
- specificare il testo da inserire dopo il campo Unione se il campo non è vuoto
- specificare il testo da inserire prima del campo Unione se il campo non è vuoto

{{% alert color="primary" %}}

Per ulteriori dettagli, vedere l'API di classe [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/).

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere il campo `MERGE` utilizzando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Inserimento del campo Mail Merge Address Block in un documento utilizzando DOM

Il campo `ADDRESSBLOCK` viene utilizzato per inserire un blocco di indirizzi mail merge in un documento Word. Il campo `ADDRESSBLOCK` nel documento Word può essere rappresentato dalla classe [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/). È possibile utilizzare la classe **FieldAddressBlock** per eseguire le seguenti operazioni:

- specificare se includere il nome del paese / regione nel campo
- specificare se formattare l'indirizzo in base al paese/regione del destinatario come definito da POST*CODE (Unione Postale Universale 2006)
- specificare il nome del paese/regione escluso
- specificare il formato nome e indirizzo
- specificare l'ID della lingua utilizzata per formattare l'indirizzo

{{% alert color="primary" %}}

Per ulteriori dettagli, vedere l'API di classe [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/).

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere il campo Mail Merge `ADDRESSBLOCK` utilizzando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Inserimento del campo Advance in un documento senza usare DocumentBuilder

Il campo `ADVANCE` viene utilizzato per compensare il testo successivo all'interno di una riga a sinistra, a destra, in alto o in basso. Il campo `ADVANCE` nel documento Word può essere rappresentato dalla classe [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/). È possibile utilizzare la classe FieldAdvance per eseguire le seguenti operazioni:

- specificare il numero di punti in base ai quali il testo che segue il campo deve essere spostato verticalmente dal bordo superiore della pagina
- specificare il numero di punti in base ai quali il testo che segue il campo deve essere spostato orizzontalmente dal bordo sinistro della colonna, della cornice o della casella di testo
- specificare il numero di punti in base ai quali il testo che segue il campo deve essere spostato a sinistra, a destra, verso l'alto o verso il basso

{{% alert color="primary" %}}

Per ulteriori dettagli, vedere l'API di classe [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/).

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere il campo `ADVANCE` utilizzando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Inserimento di un campo `ASK` in un documento senza usare DocumentBuilder

Il campo `ASK` viene utilizzato per richiedere all'utente il testo da assegnare a un segnalibro nel documento Word. Il campo `ASK` nel documento Word può essere rappresentato dalla classe [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/). È possibile utilizzare la classe **FieldAsk** per eseguire le seguenti operazioni:

- specificare il nome del segnalibro
- specificare la risposta utente predefinita (valore iniziale contenuto nella finestra del prompt)
- specificare se la risposta dell'utente deve essere ricevuta una volta per un'operazione mail merge
- specificare il testo del prompt (il titolo della finestra del prompt)

{{% alert color="primary" %}}

Per ulteriori dettagli, vedere l'API di classe [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask).

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere il campo `ASK` utilizzando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Inserimento di un campo `AUTHOR` in un documento senza usare DocumentBuilder

Il campo `AUTHOR` viene utilizzato per specificare il nome dell'autore del documento dalle proprietà `Document`. Il campo `AUTHOR` nel documento Word può essere rappresentato dalla classe [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/). È possibile utilizzare la classe **FieldAuthor** per eseguire le seguenti operazioni:

- specificare il nome dell'autore del documento

{{% alert color="primary" %}}

Per ulteriori dettagli, vedere l'API di classe [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/).

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere il campo `AUTHOR` utilizzando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Inserimento di un campo `INCLUDETEXT` in un documento senza usare DocumentBuilder

Il campo `INCLUDETEXT` inserisce il testo e la grafica contenuti nel documento denominato nel codice del campo. È possibile inserire l'intero documento o una parte del documento a cui fa riferimento un segnalibro. Questo campo nel documento Word è rappresentato da INCLUDETEXT. È possibile utilizzare la classe [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) per eseguire le seguenti operazioni:

- specificare il nome del segnalibro del documento incluso
- specificare la posizione del documento

{{% alert color="primary" %}}

Per ulteriori dettagli, vedere l'API di classe [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/).

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere il campo `INCLUDETEXT` utilizzando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### Inserimento di un campo `TOA` in un documento senza usare DocumentBuilder

Il campo`TOA` (*Table of Authorities*) crea e inserisce una tabella di autorità. Il campo `TOA` raccoglie le voci contrassegnate da campi `TA` (*Table of Authorities Entry*). Microsoft Office Word inserisce il campo `TOA` quando si fa clic su *Insert Table of Authorities* nel gruppo **Table of Authorities** nella scheda **References**. Quando si visualizza il campo `TOA` nel documento, la sintassi è simile a questa:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Per ulteriori dettagli, vedere l'API di classe [FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/).

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere il campo `TOA` utilizzando DOM a un paragrafo in un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/

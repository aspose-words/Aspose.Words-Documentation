---
title: Lavorare con i campi di forma in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con i campi di forma
linktitle: Lavorare con i campi di forma
description: "Comprendere i campi di forma funzione, lavorare con campi di forma utilizzando Java."
type: docs
weight: 380
url: /it/java/working-with-form-fields/
---

Un documento che contiene vuoti di riempimento (campi) è conosciuto come un modulo. Ad esempio, è possibile creare un modulo di registrazione in Microsoft Word che utilizza elenchi a discesa da cui gli utenti possono selezionare le voci. The `Form` campo è una posizione in cui viene memorizzato un particolare tipo di dati, come un nome o un indirizzo. Campi formali in Microsoft Word includere input di testo, combobox e casella di controllo.

È possibile utilizzare campi di forma nel vostro progetto per "comunicare" con i vostri utenti. Ad esempio, si crea un documento il cui contenuto è protetto, ma solo i campi di forma sono modificabili. Gli utenti possono inserire i dati nei campi del modulo e inviare il documento. La tua applicazione Aspose.Words può recuperare i dati dai campi del modulo e processarlo.

Posizionare i campi dei moduli nel documento tramite il codice è facile. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ha metodi speciali per inserirli, uno per ogni tipo di campo di forma. Ciascuno dei metodi accetta un parametro di stringa che rappresenta il nome del campo del modulo. Il nome può essere una stringa vuota. Se tuttavia si specifica un nome per il campo del modulo, viene creato automaticamente un segnalibro con lo stesso nome.

## Inserisci campi di forma

I campi di forma sono un particolare caso di campi di Word che permette "interazione" con l'utente. Campi formali in Microsoft Word includere casella di testo, casella combinata e casella di controllo.

**DocumentBuilder** fornisce metodi speciali per inserire ogni tipo di campo forma nel documento: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) o [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int).

Il seguente esempio di codice mostra come inserire un campo di forma combobox in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Inserire un input di testo

Utilizzare **inserto Scheda di testo** metodo per inserire una casella di testo nel documento.

Il seguente esempio di codice mostra come inserire un campo del modulo di input di testo in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Inserisci una casella di controllo

Chiamata **Inserto in alluminio** per inserire una casella di controllo nel documento.

Il seguente esempio di codice mostra come inserire un campo del modulo di checkbox in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Inserisci una scatola Combo

Chiamata **insertoComboBox** inserire una combobox nel documento.

Il seguente esempio di codice mostra come inserire un campo di forma Combobox in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Ottenere campi di forma

Una raccolta di campi di forma è rappresentata dal [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) classe che può essere recuperato utilizzando [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) proprieta'. Ciò significa che è possibile ottenere campi formali contenuti in qualsiasi nodo di documento compreso il documento stesso.

Il seguente esempio di codice mostra come ottenere una raccolta di campi di forma:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file campione dei seguenti esempi da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

È possibile ottenere un particolare campo forma dal suo indice o nome.

Il seguente esempio di codice mostra come accedere ai campi del modulo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

The **FormField** proprietà consentono di lavorare con il nome del campo del modulo, il tipo e il risultato.

Il seguente esempio di codice mostra come lavorare con il nome del campo del modulo, il tipo e il risultato:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}

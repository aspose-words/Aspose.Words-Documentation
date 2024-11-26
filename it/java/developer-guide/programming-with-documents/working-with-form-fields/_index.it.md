---
title: Utilizzo dei campi modulo in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con i campi modulo
linktitle: Lavorare con i campi modulo
description: "Comprendere la funzionalità Campi modulo, lavorare con i campi modulo utilizzando Java."
type: docs
weight: 380
url: /it/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Un documento che contiene spazi vuoti di riempimento (campi) è noto come modulo. Ad esempio, è possibile creare un modulo di registrazione in Microsoft Word che utilizza elenchi a discesa da cui gli utenti possono selezionare le voci. Il campo `Form` è un percorso in cui viene memorizzato un particolare tipo di dati, ad esempio un nome o un indirizzo. I campi modulo in Microsoft Word includono input di testo, combobox e checkbox.

È possibile utilizzare i campi modulo nel progetto per "comunicare" con gli utenti. Ad esempio, si crea un documento il cui contenuto è protetto, ma solo i campi modulo sono modificabili. Gli utenti possono inserire i dati nei campi del modulo e inviare il documento. L'applicazione che utilizza Aspose.Words può recuperare i dati dai campi modulo ed elaborarli.

Inserire i campi modulo nel documento tramite codice è facile. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ha metodi speciali per inserirli, uno per ogni tipo di campo modulo. Ciascuno dei metodi accetta un parametro string che rappresenta il nome del campo modulo. Il nome può essere una stringa vuota. Se tuttavia si specifica un nome per il campo modulo, viene creato automaticamente un segnalibro con lo stesso nome.

## Inserisci campi modulo

I campi modulo sono un caso particolare di campi Word che consente "interazione" con l'utente. I campi modulo in Microsoft Word includono casella di testo, casella combinata e checkbox.

**DocumentBuilder**

L'esempio di codice seguente mostra come inserire un campo modulo combobox in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Inserire un input di testo

Utilizzare il metodo **insertTextInput** per inserire una casella di testo nel documento.

L'esempio di codice seguente mostra come inserire un campo modulo di input di testo in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Inserire una casella di controllo

Chiamare **insertCheckBox** per inserire un checkbox nel documento.

L'esempio di codice seguente mostra come inserire un campo modulo checkbox in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Inserire una casella combinata

Chiamare **insertComboBox** per inserire un combobox nel documento.

L'esempio di codice seguente mostra come inserire un campo modulo Combobox in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Ottenere campi modulo

Una raccolta di campi modulo è rappresentata dalla classe [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) che può essere recuperata utilizzando la proprietà [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields). Ciò significa che è possibile ottenere campi modulo contenuti in qualsiasi nodo documento, incluso il documento stesso.

L'esempio di codice seguente mostra come ottenere una raccolta di campi modulo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio dei seguenti esempi da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

È possibile ottenere un particolare campo modulo dal suo indice o nome.

L'esempio di codice seguente mostra come accedere ai campi modulo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

Le proprietà **FormField** consentono di lavorare con nome campo modulo, tipo e risultato.

L'esempio di codice seguente mostra come utilizzare il nome, il tipo e il risultato del campo modulo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}

---
title: Arbeiten mit Formularfeldern in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Formularfeldern
linktitle: Arbeiten mit Formularfeldern
description: "Formfelder verstehen, mit Formularfeldern arbeiten Java."
type: docs
weight: 380
url: /de/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Ein Dokument, das Einfüllrohlinge (Felder) enthält, ist als Formular bekannt. Zum Beispiel können Sie ein Anmeldeformular in erstellen Microsoft Word die Dropdown-Listen verwendet, aus denen Benutzer Einträge auswählen können. Die `Form` Ein Feld ist ein Ort, an dem eine bestimmte Art von Daten, wie ein Name oder eine Adresse, gespeichert wird. Formularfelder in Microsoft Word enthalten Texteingabe, Combobox und Checkbox.

Sie können Formularfelder in Ihrem Projekt zur "Kommunikation" mit Ihren Nutzern verwenden. Zum Beispiel erstellen Sie ein Dokument, dessen Inhalt geschützt ist, aber nur Formularfelder sind editierbar. Die Nutzer können die Daten in den Formularfeldern eingeben und das Dokument einreichen. Ihre Anwendung, die verwendet Aspose.Words Daten aus den Formularfeldern abrufen und verarbeiten.

Die Eingabe von Formularfeldern in das Dokument über den Code ist einfach. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) hat spezielle Verfahren zum Einfügen, eine für jeden Formularfeldtyp. Jedes der Verfahren akzeptiert einen Stringparameter, der den Namen des Formularfeldes repräsentiert. Der Name kann ein leerer String sein. Wenn Sie jedoch einen Namen für das Formularfeld angeben, wird automatisch ein Lesezeichen mit demselben Namen erstellt.

## Formularfelder einfügen

Formularfelder sind ein besonderer Fall von Word-Feldern, die eine "Interaktion" mit dem Benutzer ermöglichen. Formularfelder in Microsoft Word enthalten Textbox, Kombi-Box und Checkbox.

**DocumentBuilder** bietet spezielle Methoden, um jede Art von Formularfeld in das Dokument einzufügen: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) oder [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int).

Das folgende Codebeispiel zeigt, wie ein Combobox Formularfeld in ein Dokument eingefügt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Eingabe eines Textes

Verwenden Sie die **Einsatzbereich Textinput** Verfahren zum Einfügen einer Textbox in das Dokument.

Das folgende Codebeispiel zeigt, wie ein Texteingabeformularfeld in ein Dokument eingefügt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Kontrollkästchen einfügen

Anruf **Zurück zur Übersicht** um ein Kontrollkästchen in das Dokument einzufügen.

Das folgende Codebeispiel zeigt, wie ein Checkbox-Formfeld in ein Dokument eingefügt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Fügen Sie eine Combo Box

Anruf **EinsatzbereichComboBox** eine Kombibox in das Dokument einfügen.

Das folgende Codebeispiel zeigt, wie ein Combobox Formularfeld in ein Dokument eingefügt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Formularfelder erhalten

Eine Sammlung von Formularfeldern wird durch die [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) Klasse, die mit der [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) Eigentum. Dies bedeutet, dass Sie Formularfelder erhalten können, die in einem beliebigen Dokumentknoten einschließlich des Dokuments enthalten sind.

Das folgende Codebeispiel zeigt, wie man eine Sammlung von Formularfeldern erhält:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei der folgenden Beispiele herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Sie können ein bestimmtes Formularfeld mit seinem Index oder Namen erhalten.

Das folgende Codebeispiel zeigt den Zugriff auf Formularfelder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

Die **FormField** Eigenschaften ermöglichen es Ihnen, mit Formularfeldnamen, Typ und Ergebnis zu arbeiten.

Das folgende Codebeispiel zeigt, wie man mit Formularfeldnamen, Typ und Ergebnis arbeitet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}

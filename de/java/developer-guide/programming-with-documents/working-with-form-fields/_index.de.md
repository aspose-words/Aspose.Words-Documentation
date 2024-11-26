---
title: Arbeiten mit Formularfeldern in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Formularfeldern
linktitle: Arbeiten mit Formularfeldern
description: "Grundlegendes zu Formularfeldern, Arbeiten mit Formularfeldern mit Java."
type: docs
weight: 380
url: /de/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Ein Dokument, das ausfüllbare Leerzeichen (Felder) enthält, wird als Formular bezeichnet. Sie können beispielsweise ein Registrierungsformular in Microsoft Word erstellen, das Dropdown-Listen verwendet, aus denen Benutzer Einträge auswählen können. Das Feld `Form` ist ein Speicherort für einen bestimmten Datentyp, z. B. einen Namen oder eine Adresse. Formularfelder in Microsoft Word enthalten Texteingaben, combobox und checkbox.

Sie können Formularfelder in Ihrem Projekt verwenden, um mit Ihren Benutzern zu "kommunizieren". Sie erstellen beispielsweise ein Dokument, dessen Inhalt geschützt ist, aber nur Formularfelder bearbeitet werden können. Die Benutzer können die Daten in die Formularfelder eingeben und das Dokument absenden. Ihre Anwendung, die Aspose.Words verwendet, kann Daten aus den Formularfeldern abrufen und verarbeiten.

Das Einfügen von Formularfeldern in das Dokument per Code ist einfach. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) verfügt über spezielle Methoden zum Einfügen, eine für jeden Formularfeldtyp. Jede der Methoden akzeptiert einen Zeichenfolgenparameter, der den Namen des Formularfelds darstellt. Der Name kann eine leere Zeichenfolge sein. Wenn Sie jedoch einen Namen für das Formularfeld angeben, wird automatisch ein Lesezeichen mit demselben Namen erstellt.

## Formularfelder einfügen

Formularfelder sind ein besonderer Fall von Wortfeldern, die eine "Interaktion" mit dem Benutzer ermöglichen. Formularfelder in Microsoft Word enthalten Textfeld, Kombinationsfeld und checkbox.

**DocumentBuilder**

Das folgende Codebeispiel zeigt, wie Sie ein combobox-Formularfeld in ein Dokument einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Fügen Sie eine Texteingabe ein

Verwenden Sie die Methode **insertTextInput**, um ein Textfeld in das Dokument einzufügen.

Das folgende Codebeispiel zeigt, wie Sie ein Texteingabeformularfeld in ein Dokument einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Kontrollkästchen einfügen

Rufen Sie **insertCheckBox** auf, um eine checkbox in das Dokument einzufügen.

Das folgende Codebeispiel zeigt, wie Sie ein checkbox-Formularfeld in ein Dokument einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Einfügen eines Kombinationsfelds

Rufen Sie **insertComboBox** auf, um eine combobox in das Dokument einzufügen.

Das folgende Codebeispiel zeigt, wie Sie ein Combobox-Formularfeld in ein Dokument einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Formularfelder abrufen

Eine Sammlung von Formularfeldern wird durch die Klasse [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) dargestellt, die mit der Eigenschaft [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) abgerufen werden kann. Dies bedeutet, dass Sie Formularfelder abrufen können, die in jedem Dokumentknoten enthalten sind, einschließlich des Dokuments selbst.

Das folgende Codebeispiel zeigt, wie Sie eine Sammlung von Formularfeldern abrufen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei der folgenden Beispiele herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Sie können ein bestimmtes Formularfeld anhand seines Index oder Namens abrufen.

Das folgende Codebeispiel zeigt, wie auf Formularfelder zugegriffen wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

Mit den **FormField**-Eigenschaften können Sie mit Name, Typ und Ergebnis des Formularfelds arbeiten.

Das folgende Codebeispiel zeigt, wie Sie mit Name, Typ und Ergebnis des Formularfelds arbeiten:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}

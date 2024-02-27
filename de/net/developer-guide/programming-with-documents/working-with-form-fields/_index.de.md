---
title: Arbeiten mit Formularfeldern in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit Formularfeldern
linktitle: Arbeiten mit Formularfeldern
description: "Grundlegendes zur Funktion `Formularfelder` und Arbeiten mit Formularfeldern mithilfe von C#."
type: docs
weight: 380
url: /de/net/working-with-form-fields/
---

Ein Dokument, das ausgefüllte Lücken (Felder) enthält, wird als Formular bezeichnet. Beispielsweise können Sie in Microsoft Word ein Registrierungsformular erstellen, das Dropdown-Listen verwendet, aus denen Benutzer Einträge auswählen können. Das `Form`-Feld ist ein Ort, an dem eine bestimmte Art von Daten, beispielsweise ein Name oder eine Adresse, gespeichert wird. Zu den Formularfeldern in Microsoft Word gehören Texteingabe, Combobox und Kontrollkästchen.

Sie können in Ihrem Projekt Formularfelder verwenden, um mit Ihren Benutzern zu "kommunizieren". Sie erstellen beispielsweise ein Dokument, dessen Inhalt geschützt ist, aber nur Formularfelder bearbeitet werden können. Die Benutzer können die Daten in die Formularfelder eingeben und das Dokument absenden. Ihre Anwendung, die Aspose.Words verwendet, kann Daten aus den Formularfeldern abrufen und verarbeiten.

Das Einfügen von Formularfeldern in das Dokument per Code ist einfach. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) verfügt über spezielle Methoden zum Einfügen, eine für jeden Formularfeldtyp. Jede der Methoden akzeptiert einen String-Parameter, der den Namen des Formularfelds darstellt. Der Name kann eine leere Zeichenfolge sein. Wenn Sie jedoch einen Namen für das Formularfeld angeben, wird automatisch ein Lesezeichen mit demselben Namen erstellt.

## Formularfelder einfügen

Formularfelder sind eine Sonderform von Word-Feldern, die eine "Interaktion" mit dem Benutzer ermöglichen. Zu den Formularfeldern in Microsoft Word gehören Textfelder, Kombinationsfelder und Kontrollkästchen.

**DocumentBuilder** bietet spezielle Methoden zum Einfügen aller Arten von Formularfeldern in das Dokument: [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsertCheckBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcheckbox/) und [InsertComboBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcombobox/). Beachten Sie, dass, wenn Sie einen Namen für das Formularfeld angeben, automatisch ein Lesezeichen mit demselben Namen erstellt wird.

Das folgende Codebeispiel zeigt, wie ein Combobox-Formularfeld in ein Dokument eingefügt wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### Fügen Sie eine Texteingabe ein

Verwenden Sie die **InsertTextInput**-Methode, um ein Textfeld in das Dokument einzufügen.

Das folgende Codebeispiel zeigt, wie ein Texteingabeformularfeld in ein Dokument eingefügt wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### Fügen Sie ein Kontrollkästchen ein

Rufen Sie **InsertCheckBox** auf, um ein Kontrollkästchen in das Dokument einzufügen.

Das folgende Codebeispiel zeigt, wie man ein Kontrollkästchen-Formularfeld in ein Dokument einfügt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### Fügen Sie ein Kombinationsfeld ein

Rufen Sie **InsertComboBox** auf, um eine Combobox in das Dokument einzufügen.

Das folgende Codebeispiel zeigt, wie man ein Combobox-Formularfeld in ein Dokument einfügt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## Formularfelder abrufen

Eine Sammlung von Formularfeldern wird durch die [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/)-Klasse dargestellt, die mithilfe der [FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/)-Eigenschaft abgerufen werden kann. Dies bedeutet, dass Sie Formularfelder erhalten können, die in jedem Dokumentknoten enthalten sind, einschließlich des Dokuments selbst.

{{% alert color="primary" %}}

Sie können die Beispieldatei der folgenden Beispiele von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx) herunterladen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man eine Sammlung von Formularfeldern erhält:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

Sie können ein bestimmtes Formularfeld anhand seines Index oder Namens abrufen.

Das folgende Codebeispiel zeigt, wie auf Formularfelder zugegriffen wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

Mithilfe der **FormField**-Eigenschaften können Sie mit Formularfeldnamen, -typ und -ergebnis arbeiten.

Das folgende Codebeispiel zeigt, wie mit Formularfeldnamen, -typ und -ergebnis gearbeitet wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## Formularfelder formatieren

Die [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/)-Eigenschaft von [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) ermöglicht die Anwendung der Schriftartformatierung auf das **FormField** als Ganzes, einschließlich des Feldwerts.

Das folgende Codebeispiel zeigt, wie Sie die Schriftartformatierung auf das **FormField** anwenden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}

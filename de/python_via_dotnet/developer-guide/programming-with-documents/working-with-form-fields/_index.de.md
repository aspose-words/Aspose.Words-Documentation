---
title: Arbeiten mit Formularfeldern in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit Formularfeldern
linktitle: Arbeiten mit Formularfeldern
description: "Mit Python ein Formularfeld in ein Dokument einfügen, abrufen oder formatieren."
type: docs
weight: 380
url: /de/python-net/working-with-form-fields/
---

Ein Dokument, das ausgefüllte Lücken (Felder) enthält, wird als Formular bezeichnet. Beispielsweise können Sie in Microsoft Word ein Registrierungsformular erstellen, das Dropdown-Listen verwendet, aus denen Benutzer Einträge auswählen können. Das `Form`-Feld ist ein Ort, an dem eine bestimmte Art von Daten, beispielsweise ein Name oder eine Adresse, gespeichert wird. Zu den Formularfeldern in Microsoft Word gehören Texteingabe, Combobox und Kontrollkästchen.

Sie können in Ihrem Projekt Formularfelder verwenden, um mit Ihren Benutzern zu "kommunizieren". Sie erstellen beispielsweise ein Dokument, dessen Inhalt geschützt ist, aber nur Formularfelder bearbeitet werden können. Die Benutzer können die Daten in die Formularfelder eingeben und das Dokument abschicken. Ihre Anwendung, die Aspose.Words verwendet, kann Daten aus den Formularfeldern abrufen und verarbeiten.

Das Einfügen von Formularfeldern in das Dokument per Code ist einfach. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) verfügt über spezielle Methoden zum Einfügen, eine für jeden Formularfeldtyp. Jede der Methoden akzeptiert einen String-Parameter, der den Namen des Formularfelds darstellt. Der Name kann eine leere Zeichenfolge sein. Wenn Sie jedoch einen Namen für das Formularfeld angeben, wird automatisch ein Lesezeichen mit demselben Namen erstellt.

## Formularfelder einfügen

Formularfelder sind eine Sonderform von Word-Feldern, die eine "Interaktion" mit dem Benutzer ermöglichen. Zu den Formularfeldern in Microsoft Word gehören Textfelder, Kombinationsfelder und Kontrollkästchen.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) bietet spezielle Methoden zum Einfügen aller Arten von Formularfeldern in das Dokument: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) und [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/). Beachten Sie, dass, wenn Sie einen Namen für das Formularfeld angeben, automatisch ein Lesezeichen mit demselben Namen erstellt wird.

Das folgende Codebeispiel zeigt, wie man ein Combobox-Formularfeld in ein Dokument einfügt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### Fügen Sie eine Texteingabe ein

Verwenden Sie die [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/)-Methode, um ein Textfeld in das Dokument einzufügen.

Das folgende Codebeispiel zeigt, wie ein Texteingabeformularfeld in ein Dokument eingefügt wird:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### Fügen Sie ein Kontrollkästchen ein

Rufen Sie [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) auf, um ein Kontrollkästchen in das Dokument einzufügen.

Das folgende Codebeispiel zeigt, wie man ein Kontrollkästchen-Formularfeld in ein Dokument einfügt:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### Fügen Sie ein Kombinationsfeld ein

Rufen Sie [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) auf, um eine Combobox in das Dokument einzufügen.

Das folgende Codebeispiel zeigt, wie man ein Combobox-Formularfeld in ein Dokument einfügt:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## Formularfelder abrufen

Eine Sammlung von Formularfeldern wird durch die [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/)-Klasse dargestellt, die mithilfe der [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/)-Eigenschaft abgerufen werden kann. Dies bedeutet, dass Sie Formularfelder erhalten können, die in jedem Dokumentknoten enthalten sind, einschließlich des Dokuments selbst.

{{% alert color="primary" %}}

Sie können die Beispieldatei der folgenden Beispiele von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx) herunterladen.

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

Sie können ein bestimmtes Formularfeld anhand seines Index oder Namens abrufen.

Das folgende Codebeispiel zeigt, wie auf Formularfelder zugegriffen wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

Mithilfe der [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/)-Eigenschaften können Sie mit Formularfeldnamen, -typ und -ergebnis arbeiten.

Das folgende Codebeispiel zeigt, wie mit Formularfeldnamen, -typ und -ergebnis gearbeitet wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## Formularfelder formatieren

Die [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/)-Eigenschaft von [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) ermöglicht die Anwendung der Schriftartformatierung auf den [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) als Ganzes, einschließlich des Feldwerts.

Das folgende Codebeispiel zeigt, wie Sie die Schriftartformatierung auf das **FormField** anwenden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}

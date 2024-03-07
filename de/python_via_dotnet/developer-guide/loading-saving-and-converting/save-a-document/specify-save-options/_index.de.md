---
title: Geben Sie die Speicheroptionen in Python an
second_title: Aspose.Words für Python via .NET
articleTitle: Geben Sie Speicheroptionen an
linktitle: Geben Sie Speicheroptionen an
description: "Steuern Sie den Speichervorgang mithilfe von Python genauer."
type: docs
weight: 10
url: /de/python-net/specify-save-options/
---

Beim Speichern eines Dokuments können Sie einige erweiterte Eigenschaften festlegen. Aspose.Words stellt Ihnen die [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/)-Klasse zur Verfügung, die eine genauere Steuerung des Speichervorgangs ermöglicht. Es gibt Überladungen der [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/)-Methode, die ein [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/)-Objekt akzeptieren – es sollte ein Objekt einer von der [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/)-Klasse abgeleiteten Klasse sein. Jedes Speicherformat verfügt über eine entsprechende Klasse, die Speicheroptionen für dieses Speicherformat enthält. Es gibt beispielsweise [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) zum Speichern im PDF-Format oder [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) zum Speichern als Bild. Dieser Artikel enthält Beispiele für die Arbeit mit einigen von [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) abgeleiteten Optionsklassen.

Das folgende Codebeispiel zeigt, wie Sie die Speicheroptionen festlegen, bevor Sie das Dokument in HTML speichern:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

{{% /alert %}}

Der Artikel beschreibt einige Eigenschaften, die Sie beim Speichern eines Dokuments steuern können.

## Verschlüsseln Sie ein Dokument mit einem Passwort

Verwenden Sie die **Passwort**-Eigenschaft, um ein Kennwort für ein verschlüsseltes Dokument abzurufen oder festzulegen. Verwenden Sie die **Passwort**-Eigenschaft der entsprechenden Klasse, um mit dem ausgewählten Dokumentformat zu arbeiten.

Wenn Sie beispielsweise ein Dokument im DOC- oder DOT-Format speichern, verwenden Sie die [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/)-Eigenschaft der [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/)-Klasse.

Das folgende Codebeispiel zeigt, wie Sie ein Kennwort festlegen, um ein Dokument mit der RC4-Verschlüsselungsmethode zu verschlüsseln:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

Wenn Sie ein Dokument im [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/)-Format speichern, verwenden Sie die [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/)-Eigenschaft der [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/)-Klasse.

Das folgende Codebeispiel zeigt, wie man Docx verschlüsselt mit einem Passwort lädt und speichert:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

Nicht alle Formate unterstützen die Verschlüsselung und die Verwendung der **Passwort**-Eigenschaft.

## Aktualisieren Sie die Dokumenterstellungszeit

Aspose.Words bietet die Möglichkeit, die [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/)-Eigenschaft zu verwenden, um das Erstellungsdatum des Dokuments in UTC abzurufen oder festzulegen. Sie können diesen Wert auch vor dem Speichern mithilfe der [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/)-Option aktualisieren.

Das folgende Codebeispiel zeigt, wie die Dokumenterstellungszeit aktualisiert wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## Zuletzt gespeicherte Eigenschaft aktualisieren

Aspose.Words bietet die Möglichkeit, mithilfe der [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/)-Eigenschaft einen Wert abzurufen oder festzulegen, der bestimmt, ob die [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/)-Eigenschaft vor dem Speichern aktualisiert wird.

Das folgende Codebeispiel zeigt, wie diese Eigenschaft festgelegt und das Dokument gespeichert wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Speichern Sie Schwarzweißbilder im Ein-Bit-pro-Pixel-Format

Zur Steuerung der Bildspeicheroptionen wird die [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)-Klasse verwendet. Beispielsweise können Sie die [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/)-Eigenschaft verwenden, um das Pixelformat für die generierten Bilder festzulegen. Bitte beachten Sie, dass das Pixelformat des Ausgabebildes aufgrund der Arbeit von skia vom eingestellten Wert abweichen kann.

Das folgende Codebeispiel zeigt, wie ein Schwarzweißbild mit einem Bit pro Pixel-Format gespeichert wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}

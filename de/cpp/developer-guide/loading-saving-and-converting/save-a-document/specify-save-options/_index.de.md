---
title: Geben Sie die Speicheroptionen in C++ an
second_title: Aspose.Words für C++
articleTitle: Speicheroptionen angeben
linktitle: Speicheroptionen angeben
description: "Steuern Sie den Speichervorgang genauer."
type: docs
weight: 10
url: /de/cpp/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Beim Speichern eines Dokuments können Sie einige erweiterte Eigenschaften festlegen. Aspose.Words stellt Ihnen die Klasse [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/) zur Verfügung, die eine genauere Steuerung des Speichervorgangs ermöglicht. Es gibt Überladungen der **Save** -Methode, die ein **SaveOptions** –Objekt akzeptieren - es sollte ein Objekt einer Klasse sein, die von der **SaveOptions** -Klasse abgeleitet ist. Jedes Speicherformat hat eine entsprechende Klasse, die Speicheroptionen für dieses Speicherformat enthält, z. B. gibt es [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) zum Speichern im PDF -Format, [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions) zum Speichern im Markdown -Format oder [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) zum Speichern in ein Bild. Dieser Artikel enthält Beispiele für die Arbeit mit einigen von **SaveOptions** abgeleiteten Optionsklassen.

Das folgende Codebeispiel zeigt, wie Sie die Speicheroptionen festlegen, bevor Sie das Dokument in HTML speichern:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Der Artikel beschreibt einige Eigenschaften, die Sie beim Speichern eines Dokuments steuern können.

## Verschlüsseln Sie ein Dokument mit einem Kennwort

Verwenden Sie die Eigenschaft **Password**, um ein Kennwort für ein verschlüsseltes Dokument abzurufen oder festzulegen. Verwenden Sie die Eigenschaft **Password** der entsprechenden Klasse, um mit dem ausgewählten Dokumentformat zu arbeiten.

Wenn Sie beispielsweise ein Dokument im Format DOC oder DOT speichern, verwenden Sie die Eigenschaft [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) der Klasse [DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options).

Das folgende Codebeispiel zeigt, wie Sie ein Kennwort festlegen, um ein Dokument mit der Verschlüsselungsmethode RC4 zu verschlüsseln:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

Verwenden Sie beim Speichern eines Dokuments im Format ODT die Eigenschaft [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/) der Klasse [OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options).

Das folgende Codebeispiel zeigt, wie OpenDocument mit einem Kennwort verschlüsselt geladen und gespeichert wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}

Nicht alle Formate unterstützen die Verschlüsselung und die Verwendung der Eigenschaft **Password**.

## Fortschrittsbenachrichtigungen zum Speichern von Dokumenten anzeigen

Aspose.Words bietet die Möglichkeit, die Eigenschaft [ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/) zu verwenden, um Benachrichtigungen über den Fortschritt der Dokumentenspeicherung zu erhalten.

Es ist jetzt beim Speichern in verfügbar DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, oder TXT-Formate.

## Aktualisieren Sie die Erstellungszeit des Dokuments

Aspose.Words bietet die Möglichkeit, die Eigenschaft [CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/) zu verwenden, um das Erstellungsdatum des Dokuments in UTC abzurufen oder festzulegen. Sie können diesen Wert auch vor dem Speichern mit der Option [UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/) aktualisieren.

Das folgende Codebeispiel zeigt, wie die Erstellungszeit des Dokuments aktualisiert wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp" >}}

## Zuletzt gespeicherte Eigenschaft aktualisieren

Aspose.Words bietet die Möglichkeit, die Eigenschaft [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/) zu verwenden, um einen Wert abzurufen oder festzulegen, der bestimmt, ob die Eigenschaft [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) vor dem Speichern aktualisiert wird.

Das folgende Codebeispiel zeigt, wie Sie diese Eigenschaft festlegen und das Dokument speichern:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## Speichern Sie Schwarzweißbilder mit einem Bit pro Pixel Format

Um die Optionen zum Speichern von Bildern zu steuern, wird die Klasse **ImageSaveOptions** verwendet. Sie können beispielsweise die Eigenschaft [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/) verwenden, um das Pixelformat für die generierten Bilder festzulegen. Bitte beachten Sie, dass das Pixelformat des Ausgabebildes aufgrund der Arbeit von GDI+ vom eingestellten Wert abweichen kann.

Das folgende Codebeispiel zeigt, wie Sie ein Schwarzweißbild mit einem Bit pro Pixel-Format speichern:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}

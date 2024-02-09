---
title: Geben Sie die Speicheroptionen in C# an
second_title: Aspose.Words für .NET
articleTitle: Geben Sie Speicheroptionen an
linktitle: Geben Sie Speicheroptionen an
description: "Steuern Sie den Speichervorgang mithilfe von C# genauer."
type: docs
weight: 10
url: /de/net/specify-save-options/
---

Beim Speichern eines Dokuments können Sie einige erweiterte Eigenschaften festlegen. Aspose.Words stellt Ihnen die [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/)-Klasse zur Verfügung, die eine genauere Steuerung des Speichervorgangs ermöglicht. Es gibt Überladungen der **Save**-Methode, die ein **SaveOptions**-Objekt akzeptieren – es sollte ein Objekt einer von der **SaveOptions**-Klasse abgeleiteten Klasse sein. Jedes Speicherformat verfügt über eine entsprechende Klasse, die Speicheroptionen für dieses Speicherformat enthält. Beispielsweise gibt es [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) zum Speichern im PDF-Format, [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) zum Speichern im Markdown-Format oder [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) zum Speichern in einem Bild. Dieser Artikel enthält Beispiele für die Arbeit mit einigen von **SaveOptions** abgeleiteten Optionsklassen.

Das folgende Codebeispiel zeigt, wie Sie die Speicheroptionen festlegen, bevor Sie das Dokument in HTML speichern:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

{{% /alert %}}

Der Artikel beschreibt einige Eigenschaften, die Sie beim Speichern eines Dokuments steuern können.

## Verschlüsseln Sie ein Dokument mit einem Passwort

Verwenden Sie die **Password**-Eigenschaft, um ein Kennwort für ein verschlüsseltes Dokument abzurufen oder festzulegen. Verwenden Sie die **Password**-Eigenschaft der entsprechenden Klasse, um mit dem ausgewählten Dokumentformat zu arbeiten.

Wenn Sie beispielsweise ein Dokument im DOC- oder DOT-Format speichern, verwenden Sie die [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/)-Eigenschaft der [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/)-Klasse.

Das folgende Codebeispiel zeigt, wie Sie ein Kennwort festlegen, um ein Dokument mit der RC4-Verschlüsselungsmethode zu verschlüsseln:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

Wenn Sie ein Dokument im Odt-Format speichern, verwenden Sie die [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/)-Eigenschaft der [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/)-Klasse.

Das folgende Codebeispiel zeigt, wie man OpenDocument verschlüsselt mit einem Passwort lädt und speichert:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

Nicht alle Formate unterstützen die Verschlüsselung und die Verwendung der **Password**-Eigenschaft.

## Benachrichtigungen zum Speicherfortschritt von Dokumenten anzeigen

Aspose.Words bietet die Möglichkeit, die [ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/)-Eigenschaft zu verwenden, um Benachrichtigungen über den Fortschritt der Dokumentenspeicherung zu erhalten.

Es ist jetzt beim Speichern in den Formaten DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack oder TXT verfügbar.

## Aktualisieren Sie die Dokumenterstellungszeit

Aspose.Words bietet die Möglichkeit, die [CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/)-Eigenschaft zu verwenden, um das Erstellungsdatum des Dokuments in UTC abzurufen oder festzulegen. Sie können diesen Wert auch vor dem Speichern mithilfe der [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/)-Option aktualisieren.

Das folgende Codebeispiel zeigt, wie die Dokumenterstellungszeit aktualisiert wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## Zuletzt gespeicherte Eigenschaft aktualisieren

Aspose.Words bietet die Möglichkeit, mithilfe der [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/)-Eigenschaft einen Wert abzurufen oder festzulegen, der bestimmt, ob die [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/)-Eigenschaft vor dem Speichern aktualisiert wird.

Das folgende Codebeispiel zeigt, wie diese Eigenschaft festgelegt und das Dokument gespeichert wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## Steuern Sie externe Ressourcen beim Speichern eines Dokuments in HTML oder SVG

Um HTML oder SVG in PDF zu konvertieren, rufen Sie einfach die [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/)-Methode auf und geben Sie einen Dateinamen mit der Erweiterung ".PDF" an. Wenn Sie Bilder, CSS usw. aus externen Quellen laden möchten, können Sie [IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/) verwenden.

Das folgende Codebeispiel zeigt, wie man HTML in PDF konvertiert und Bilder aus externen Quellen lädt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## Speichern Sie Schwarzweißbilder im Ein-Bit-pro-Pixel-Format

Zur Steuerung der Bildspeicheroptionen wird die **ImageSaveOptions**-Klasse verwendet. Beispielsweise können Sie die [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/)-Eigenschaft verwenden, um das Pixelformat für die generierten Bilder festzulegen. Bitte beachten Sie, dass das Pixelformat des Ausgabebildes aufgrund der Arbeit von GDI+ vom eingestellten Wert abweichen kann.

Das folgende Codebeispiel zeigt, wie ein Schwarzweißbild mit einem Bit pro Pixel-Format gespeichert wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}

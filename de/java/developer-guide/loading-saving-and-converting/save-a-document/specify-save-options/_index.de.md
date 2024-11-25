---
title: Geben Sie die Speicheroptionen in Java an
second_title: Aspose.Words für Java
articleTitle: Speicheroptionen angeben
linktitle: Speicheroptionen angeben
description: "Legen Sie erweiterte Eigenschaften fest, wenn Sie ein Dokument mit Java speichern, um eine genauere Kontrolle über den Prozess zu erhalten."
type: docs
weight: 20
url: /de/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Beim Speichern eines Dokuments können Sie einige erweiterte Eigenschaften festlegen. Aspose.Words stellt Ihnen die Klasse [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) zur Verfügung, die eine genauere Steuerung des Speichervorgangs ermöglicht. Es gibt Überladungen der **Save** -Methode, die ein **SaveOptions** –Objekt akzeptieren - es sollte ein Objekt einer Klasse sein, die von der **SaveOptions** -Klasse abgeleitet ist. Jedes Speicherformat hat eine entsprechende Klasse, die Speicheroptionen für dieses Speicherformat enthält, z. B. gibt es [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) zum Speichern im PDF -Format, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) zum Speichern im Markdown -Format oder [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) zum Speichern in ein Bild. Dieser Artikel enthält Beispiele für die Arbeit mit einigen von **SaveOptions** abgeleiteten Optionsklassen.

Das folgende Codebeispiel zeigt, wie Sie die Speicheroptionen festlegen, bevor Sie das Dokument in HTML speichern:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Der Artikel beschreibt einige Eigenschaften, die Sie beim Speichern eines Dokuments steuern können.

## Verschlüsseln Sie ein Dokument mit einem Kennwort

Verwenden Sie die Eigenschaft **Password**, um ein Kennwort für ein verschlüsseltes Dokument abzurufen oder festzulegen. Verwenden Sie die Eigenschaft **Password** der entsprechenden Klasse, um mit dem ausgewählten Dokumentformat zu arbeiten.

Wenn Sie beispielsweise ein Dokument im Format DOC oder DOT speichern, verwenden Sie die Eigenschaft [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) der Klasse [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/).

Das folgende Codebeispiel zeigt, wie Sie ein Kennwort festlegen, um ein Dokument mit der Verschlüsselungsmethode RC4 zu verschlüsseln:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

Verwenden Sie beim Speichern eines Dokuments im Format ODT die Eigenschaft [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) der Klasse [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/).

Das folgende Codebeispiel zeigt, wie OpenDocument mit einem Kennwort verschlüsselt geladen und gespeichert wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Nicht alle Formate unterstützen die Verschlüsselung und die Verwendung der Eigenschaft **Password**.

## Fortschrittsbenachrichtigungen zum Speichern von Dokumenten anzeigen

Aspose.Words bietet die Möglichkeit, die Eigenschaft [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) zu verwenden, um Benachrichtigungen über den Fortschritt der Dokumentenspeicherung zu erhalten.

Es ist jetzt beim Speichern in verfügbar DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, oder TXT-Formate.

## Aktualisieren Sie die Erstellungszeit des Dokuments

Aspose.Words bietet die Möglichkeit, die Eigenschaft [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) zu verwenden, um das Erstellungsdatum des Dokuments in UTC abzurufen oder festzulegen. Sie können diesen Wert auch vor dem Speichern mit der Option [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) aktualisieren.

Das folgende Codebeispiel zeigt, wie die Erstellungszeit des Dokuments aktualisiert wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Zuletzt gespeicherte Eigenschaft aktualisieren

Aspose.Words bietet die Möglichkeit, die Eigenschaft [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) zu verwenden, um einen Wert abzurufen oder festzulegen, der bestimmt, ob die Eigenschaft [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) vor dem Speichern aktualisiert wird.

Das folgende Codebeispiel zeigt, wie Sie diese Eigenschaft festlegen und das Dokument speichern:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Speichern Sie Schwarzweißbilder mit einem Bit pro Pixel Format

Um die Optionen zum Speichern von Bildern zu steuern, wird die Klasse **ImageSaveOptions** verwendet. Sie können beispielsweise die Eigenschaft [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) verwenden, um das Pixelformat für die generierten Bilder festzulegen. Bitte beachten Sie, dass das Pixelformat des Ausgabebildes aufgrund der Arbeit von GDI+ vom eingestellten Wert abweichen kann.

Das folgende Codebeispiel zeigt, wie Sie ein Schwarzweißbild mit einem Bit pro Pixel-Format speichern:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}

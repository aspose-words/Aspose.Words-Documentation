---
title: Speicheroptionen angeben Java
second_title: Aspose.Words für Java
articleTitle: Speicheroptionen angeben
linktitle: Speicheroptionen angeben
description: "Setzen Sie erweiterte Eigenschaften bei der Speicherung eines Dokuments mit Java eine genauere Kontrolle über den Prozess."
type: docs
weight: 20
url: /de/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Wenn Sie ein Dokument speichern, können Sie einige erweiterte Eigenschaften festlegen. Aspose.Words bietet Ihnen die [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) Klasse, die eine genauere Kontrolle des Speichervorgangs ermöglicht. Es gibt Überlastungen der **Save** Methode, die eine **SaveOptions** Objekt – es sollte ein Objekt einer von der **SaveOptions** Klasse. Jedes Speicherformat hat eine entsprechende Klasse, die Speicheroptionen für dieses Speicherformat hält, zum Beispiel gibt es [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) zum Speichern in PDF-Format, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) um zu sparen Markdown Format oder [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) zum Speichern auf ein Bild. Dieser Artikel bietet Beispiele für die Arbeit mit einigen Optionen Klassen von **SaveOptions**.

Das folgende Codebeispiel zeigt, wie man die Speicheroptionen vor dem Speichern des Dokuments in HTML einstellt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Der Artikel beschreibt einige Eigenschaften, die Sie beim Speichern eines Dokuments kontrollieren können.

## Verschlüsseln eines Dokuments Mit einem Passwort

Verwenden Sie die **Password** eine Eigenschaft, um ein Passwort für ein verschlüsseltes Dokument zu erhalten oder einzustellen. Verwenden Sie die **Password** Eigenschaft der entsprechenden Klasse, mit dem ausgewählten Dokumentformat zu arbeiten.

Zum Beispiel beim Speichern eines Dokuments auf DOC oder DOT Format, verwenden Sie die [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) Eigentum der [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) Klasse.

Das folgende Codebeispiel zeigt, wie ein Passwort zum Verschlüsseln eines Dokuments mit der RC4-Verschlüsselungsmethode gesetzt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

Wenn Sie ein Dokument im ODT-Format speichern, verwenden Sie das [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) Eigentum der [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) Klasse.

Das folgende Codebeispiel zeigt, wie man OpenDocument mit einem Passwort verschlüsselt laden und speichern kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Nicht alle Formate unterstützen die Verschlüsselung und die Verwendung **Password** Eigentum.

## Dokument speichern Fortschrittsbenachrichtigungen anzeigen

Aspose.Words bietet die Möglichkeit, die [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) Immobilien, um Benachrichtigungen über den Fortschritt der Dokumentenersparnis zu erhalten.

Es ist jetzt verfügbar, wenn Sie DOCX, FlatOpc, DOCM speichern, DOTM. DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack oder TXT Formate.

## Aktualisieren der Dokumenterstellungszeit

Aspose.Words bietet die Möglichkeit, die [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) Eigentum, um das Dokument-Erstellungsdatum in UTC zu erhalten oder einzustellen. Sie können diesen Wert auch vor dem Speichern mit der [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) Option.

Das folgende Codebeispiel zeigt, wie man die Dokument-Erstellungszeit aktualisiert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Zuletzt gespeicherte Objekte aktualisieren

Aspose.Words bietet die Möglichkeit, die [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) Eigenschaft zu erhalten oder einen Wert festlegen, ob [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) die Eigenschaft wird vor dem Speichern aktualisiert.

Das folgende Codebeispiel zeigt, wie Sie diese Eigenschaft einstellen und das Dokument speichern:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Schwarzes und weißes Bild mit einem Bit pro Pixel Format speichern

Zur Steuerung von Bildsparoptionen, die **ImageSaveOptions** Klasse wird verwendet. Zum Beispiel können Sie die [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) Eigenschaft, das Pixelformat für die generierten Bilder einzustellen. Bitte beachten Sie, dass sich das Pixelformat des Ausgabebildes aufgrund der Arbeit von GDI+ vom Sollwert unterscheiden kann.

Das folgende Codebeispiel zeigt, wie man ein schwarzes und weißes Bild mit einem Bit pro Pixelformat speichert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}

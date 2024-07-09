---
title: Dokument in HTML, MHTML oder EPUB umrechnen
second_title: Aspose.Words für Java
articleTitle: Dokument in HTML, MHTML oder EPUB umrechnen
linktitle: Dokument in HTML, MHTML oder EPUB umrechnen
description: "Verwendung Aspose.Words für Java um Dokumente aus Word oder anderen unterstützten Formaten in HTML, MHTML oder EPUB zu konvertieren."
type: docs
weight: 20
url: /de/java/convert-a-document-to-html-mhtml-or-epub/
---

Dokumente in HTML- und MHTML-Flow-layout-Formaten sind auch sehr beliebt und können auf jeder Web-Plattform verwendet werden. Daher ist die Umwandlung von Dokumenten in HTML und MHTML ein wichtiges Merkmal von Aspose.Words.

EPUB (kurz für "Electronic Publication") ist ein HTML-basiertes Format, das häufig für die elektronische Buchverteilung verwendet wird. Dieses Format wird vollständig unterstützt in Aspose.Words für den Export von elektronischen Büchern, die mit den meisten Lesegeräten kompatibel sind.

## Dokument umrechnen

Für einfache Konvertierung in HTML, MHTML oder EPUB, einer der [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) Verfahren Überlastungen werden verwendet. Sie können das Dokument in eine Datei oder einen Stream speichern und das Ausgabedokument explizit speichern oder aus der Dateinamenserweiterung definieren.

Das folgende Beispiel zeigt, wie man DOCX in HTML umwandelt und ein Speicherformat angibt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

Um ein Dokument in MHTML oder EPUB zu konvertieren, verwenden Sie `SaveFormat.MHTML` oder `SaveFormat.EPUB` bzw.

## Dokument mit Rundreise-Informationen umrechnen

Das HTML-Format unterstützt nicht viele Microsoft Word Funktionen, und wenn wir ein Dokumentmodell so nah an das Original wie möglich wiederherstellen müssen, müssen wir zusätzliche Informationen in der HTML-Datei speichern. Solche Informationen werden auch als "Rundreiseinformationen" bezeichnet. Zu diesem Zweck Aspose.Words bietet die Möglichkeit, bei der Speicherung in HTML, MHTML oder EPUB über die [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) Eigentum. Die Speicherung der Rundweginformationen ermöglicht die Wiederherstellung von Dokumenteneigenschaften wie Tabs, Kommentare, Header und Footer während der Ladedokumente der aufgeführten Formate zurück in eine **Document** Objekt.

Der Standardwert ist **true** für HTML und **false** für MHTML und EPUB:

- Wann **true**, die Rundreiseinformationen werden als - aw - * CSS-Eigenschaften der entsprechenden HTML-Elemente exportiert
- Wann **false**, es gibt keine Rundtrip-Informationen in produzierte Dateien ausgegeben werden

Das folgende Codebeispiel zeigt, wie man Rundreiseinformationen bei der Konvertierung eines Dokuments von DOCX in HTML exportiert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertDocumentToHtmlWithRoundtrip/Test%20File%20\(doc\).doc).

{{% /alert %}}

## Speicheroptionen bei der Konvertierung in HTML angeben

Aspose.Words erlaubt die Konvertierung eines Word-Dokuments in HTML mit Standard- oder benutzerdefinierten Speicheroptionen. Nachfolgend werden einige Beispiele für benutzerdefinierte Speicheroptionen beschrieben.

### Geben Sie einen Ordner für Ressourcensparen an

Verwendung Aspose.Words wir können einen physischen Ordner angeben, in dem alle Ressourcen wie Bilder, Schriften und externe CSS gespeichert werden, wenn ein Dokument in HTML umgewandelt wird. Standardmäßig ist dies ein leerer String.

Angabe der [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) Eigenschaft ist der einfachste Weg, den Ordner zu setzen, in dem alle Ressourcen geschrieben werden sollten. Wir können einzelne Eigenschaften wie [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) die Schriftarten in den angegebenen Ordner speichert und [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) die Bilder in einen bestimmten Ordner speichert. Wenn ein relativer Pfad angegeben ist, **FontsFolder** und **ImagesFolder** auf den Ordner, in dem sich die Code-Montage befindet, **ResourceFolder** und [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) verweisen Sie auf den Ausgabeordner, in dem sich das HTML-Dokument befindet.

In diesem Beispiel **ResourceFolder** gibt den relativen Pfad an. Dieser Pfad bezieht sich auf den Ausgabeordner, in dem das HTML-Dokument gespeichert ist. Der Wert des **ResourceFolderAlias** Eigenschaft wird verwendet, um URLs für alle Ressourcen zu erstellen.

Das folgende Codebeispiel zeigt, wie man mit diesen Eigenschaften arbeitet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Verwendung von [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) Eigenschaft, können wir auch den Namen des Ordners angeben, der verwendet wird, um URIs aller in ein HTML-Dokument geschriebenen Ressourcen zu konstruieren. Dies ist der einfachste Weg, um anzugeben, wie URIs für alle Ressourcendateien generiert werden sollen. Die gleichen Informationen können für Bilder und Schriften separat über [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) und [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) Eigenschaften.

Es gibt jedoch keine individuelle Eigenschaft für CSS. Das Verhalten der **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** und **CssStyleSheetFileName** Eigenschaften werden nicht verändert. Anmerkung: **CssStyleSheetFileName** Eigenschaft wird sowohl zur Angabe von Ordnernamen und Dateinamen verwendet.

- Ja. **ResourceFolder** hat niedrigere Priorität als die über **FontsFolder**, **ImagesFolder**, und **CssStyleSheetFileName**. Wenn der Ordner in der **ResourceFolder** existiert nicht, es wird automatisch erstellt.
- Ja. **ResourceFolderAlias** hat eine geringere Priorität als **FontsFolderAlias** und **ImagesFolderAlias**. wenn **ResourceFolderAlias** leer ist, der Wert der **ResourceFolder** Eigenschaft wird verwendet, um Ressourcen-URIs zu erstellen. wenn **ResourceFolderAlias** wird auf " gesetzt." (dot), Ressource URIs enthält nur Dateinamen, ohne einen Pfad anzugeben.

### Export Base64 Encoding Fonts Ressourcen

Aspose.Words bietet die Möglichkeit, anzugeben, ob Fontressourcen in HTML in Base64-Kodierungen eingebettet werden sollen. Um dies auszuführen, verwenden Sie die [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) Eigentum – dies ist eine Erweiterung der [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) Eigentum. Standardmäßig ist sein Wert **false**, und Schriftarten werden in separate Dateien geschrieben. Aber wenn diese Option eingestellt ist **true**, Schriften werden in die CSS des Dokuments in Base64-Kodierung eingebettet. Die **ExportFontsAsBase64** Eigenschaft beeinflusst nur HTML-Format und beeinträchtigt nicht EPUB und MHTML.

Das folgende Codebeispiel zeigt, wie man Base64-codierte Schriftarten in HTML exportiert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## Speicheroptionen bei der Konvertierung in EPUB angeben

Aspose.Words erlaubt die Konvertierung eines Word-Dokuments in das EPUB-Format mit Standard- oder benutzerdefinierten Speicheroptionen. Sie können eine Reihe von Optionen angeben, indem Sie eine Instanz von [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) in der [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) Methode.

Das folgende Codebeispiel zeigt, wie man ein Word-Dokument in EPUB umwandelt, indem man einige benutzerdefinierte Speicheroptionen angibt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## Siehe auch

- [So exportieren Sie Rundreiseinformationen beim Speichern in HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)

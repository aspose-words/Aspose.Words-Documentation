---
title: Konvertieren Sie ein Dokument in C# in HTML, MHTML oder EPUB
second_title: Aspose.Words für .NET
articleTitle: Konvertieren Sie ein Dokument in HTML, MHTML oder EPUB
linktitle: Konvertieren Sie ein Dokument in HTML, MHTML oder EPUB
description: "Konvertieren Sie ein Dokument aus fast jedem Format in HTML oder MHTML sowie in das EPUB-Format mit C#. Sie können auch Speicheroptionen für die Verwaltung des Ausgabedokuments angeben."
type: docs
weight: 20
url: /de/net/convert-a-document-to-html-mhtml-or-epub/
---

Auch Dokumente im HTML- und MHTML-Flow-Layout-Format erfreuen sich großer Beliebtheit und können auf jeder Webplattform verwendet werden. Aus diesem Grund ist die Konvertierung von Dokumenten in HTML und MHTML eine wichtige Funktion von Aspose.Words.

EPUB (kurz für "Electronic Publication") ist ein HTML-basiertes Format, das häufig für den Vertrieb elektronischer Bücher verwendet wird. Dieses Format wird in Aspose.Words vollständig für den Export elektronischer Bücher unterstützt, die mit den meisten Lesegeräten kompatibel sind.

## Konvertieren Sie ein Dokument

Für die einfache Konvertierung in HTML, MHTML oder EPUB wird eine der [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/)-Methodenüberladungen verwendet. Sie können das Dokument in einer Datei oder einem Stream speichern und das Speicherformat des Ausgabedokuments explizit festlegen oder es anhand der Dateinamenerweiterung definieren.

Das folgende Beispiel zeigt, wie Sie DOCX in HTML konvertieren und dabei ein Speicherformat angeben:

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

Um ein Dokument in MHTML oder EPUB zu konvertieren, verwenden Sie `SaveFormat.Mhtml` bzw. `SaveFormat.Epub`.

## Konvertieren Sie ein Dokument mit Roundtrip-Informationen

Das HTML-Format unterstützt viele Microsoft Word-Funktionen nicht und wenn wir ein Dokumentmodell so nah wie möglich am Original wiederherstellen müssen, müssen wir einige zusätzliche Informationen in der HTML-Datei speichern. Solche Informationen werden auch "Round-Trip-Informationen" genannt. Zu diesem Zweck bietet Aspose.Words die Möglichkeit, Roundtrip-Informationen beim Speichern in HTML, MHTML oder EPUB mithilfe der [ExportRoundtripInformation](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/)-Eigenschaft zu exportieren. Durch das Speichern der Roundtrip-Informationen können Dokumenteigenschaften wie Tabulatoren, Kommentare, Kopf- und Fußzeilen wiederhergestellt werden, während Dokumente der aufgelisteten Formate zurück in ein **Document**-Objekt geladen werden.

Der Standardwert ist **true** für HTML und **false** für MHTML und EPUB:

- Bei **true** werden die Roundtrip-Informationen als - aw - * CSS-Eigenschaften der entsprechenden HTML-Elemente exportiert
- Bei **false** gibt es keine Round-Trip-Informationen, die in erzeugte Dateien ausgegeben werden müssen

Das folgende Codebeispiel zeigt, wie Roundtrip-Informationen beim Konvertieren eines Dokuments von DOCX in HTML exportiert werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

{{% /alert %}}

## Geben Sie Speicheroptionen bei der Konvertierung in HTML an

Aspose.Words ermöglicht die Konvertierung eines Word-Dokuments in HTML mithilfe von Standard- oder benutzerdefinierten Speicheroptionen. Im Folgenden werden einige Beispiele für benutzerdefinierte Speicheroptionen beschrieben.

### Geben Sie einen Ordner zum Speichern von Ressourcen an

Mit Aspose.Words können wir einen physischen Ordner angeben, in dem alle Ressourcen wie Bilder, Schriftarten und externes CSS gespeichert werden, wenn ein Dokument in HTML konvertiert wird. Standardmäßig ist dies eine leere Zeichenfolge.

Die Angabe der [ResourceFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolder/)-Eigenschaft ist die einfachste Möglichkeit, den Ordner festzulegen, in den alle Ressourcen geschrieben werden sollen. Wir können einzelne Eigenschaften verwenden, z. B. [FontsFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolder/), das Schriftarten im angegebenen Ordner speichert, und [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolder/), das Bilder in einem angegebenen Ordner speichert. Wenn ein relativer Pfad angegeben wird, verweisen **FontsFolder** und **ImagesFolder** auf den Ordner, in dem sich die Codeassembly befindet, **ResourceFolder** und [CssStyleSheetFileName](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) verweisen auf den Ausgabeordner, in dem sich das HTML-Dokument befindet.

In diesem Beispiel gibt **ResourceFolder** den relativen Pfad an. Dieser Pfad bezieht sich auf den Ausgabeordner, in dem das HTML-Dokument gespeichert wird. Der Wert der **ResourceFolderAlias**-Eigenschaft wird zum Erstellen von URLs für alle Ressourcen verwendet.

Das folgende Codebeispiel zeigt, wie mit diesen Eigenschaften gearbeitet wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

Mithilfe der [ResourceFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/)-Eigenschaft können wir auch den Namen des Ordners angeben, der zum Erstellen der URIs aller in ein HTML-Dokument geschriebenen Ressourcen verwendet wird. Dies ist die einfachste Möglichkeit, anzugeben, wie URIs für alle Ressourcendateien generiert werden sollen. Dieselben Informationen können für Bilder und Schriftarten separat über [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/)- bzw. [FontsFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/)-Eigenschaften angegeben werden.

Es gibt jedoch keine eigene Eigenschaft für CSS. Das Verhalten der **FontsFolder**-, **FontsFolderAlias**-, **ImagesFolder**-, **ImagesFolderAlias**- und **CssStyleSheetFileName**-Eigenschaften wird nicht geändert. Beachten Sie, dass die **CssStyleSheetFileName**-Eigenschaft sowohl zur Angabe des Ordnernamens als auch des Dateinamens verwendet wird.

- **ResourceFolder** hat eine niedrigere Priorität als über **FontsFolder**, **ImagesFolder** und **CssStyleSheetFileName** angegebene Ordner. Wenn der im **ResourceFolder** angegebene Ordner nicht existiert, wird er automatisch erstellt.
- **ResourceFolderAlias** hat eine niedrigere Priorität als **FontsFolderAlias** und **ImagesFolderAlias**. Wenn **ResourceFolderAlias** leer ist, wird der Wert der **ResourceFolder**-Eigenschaft zum Erstellen von Ressourcen-URIs verwendet. Wenn **ResourceFolderAlias** auf "." gesetzt ist. (Punkt) enthalten Ressourcen-URIs nur Dateinamen ohne Angabe eines Pfads.

### Ressourcen für Base64-Kodierungsschriftarten exportieren

Aspose.Words bietet die Möglichkeit anzugeben, ob Schriftartressourcen in Base64-Codierungen in HTML eingebettet werden sollen. Verwenden Sie dazu die [ExportFontsAsBase64](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/)-Eigenschaft – dies ist eine Erweiterung der [ExportFontResources](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontresources/)-Eigenschaft. Standardmäßig ist der Wert **false** und Schriftarten werden in separate Dateien geschrieben. Wenn diese Option jedoch auf **true** gesetzt ist, werden Schriftarten in Base64-Kodierung in das CSS des Dokuments eingebettet. Die **ExportFontsAsBase64**-Eigenschaft betrifft nur das HTML-Format und hat keinen Einfluss auf EPUB und MHTML.

Das folgende Codebeispiel zeigt, wie Base64-codierte Schriftarten nach HTML exportiert werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## Geben Sie Speicheroptionen bei der Konvertierung in EPUB an

Aspose.Words ermöglicht die Konvertierung eines Word-Dokuments in das EPUB-Format mithilfe von Standard- oder benutzerdefinierten Speicheroptionen. Sie können eine Reihe von Optionen angeben, indem Sie eine Instanz von [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) an die [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/)-Methode übergeben.

Das folgende Codebeispiel zeigt, wie man ein Word-Dokument in EPUB konvertiert und dabei einige benutzerdefinierte Speicheroptionen angibt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

{{% /alert %}}

## Siehe auch

- [So exportieren Sie Roundtrip-Informationen beim Speichern in HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)

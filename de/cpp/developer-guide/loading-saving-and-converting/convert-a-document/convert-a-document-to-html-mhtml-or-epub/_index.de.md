---
title: Konvertieren eines Dokuments in HTML, MHTML oder EPUB
second_title: Aspose.Words für C++
articleTitle: Konvertieren eines Dokuments in HTML, MHTML oder EPUB
linktitle: Konvertieren eines Dokuments in HTML, MHTML oder EPUB
description: "Konvertieren Sie ein Dokument von fast jedem Format in HTML oder MHTML sowie in EPUB mit C++. Sie können auch Speicheroptionen für die Verwaltung des Ausgabedokuments angeben."
type: docs
weight: 20
url: /de/cpp/convert-a-document-to-html-mhtml-or-epub/
---

Dokumente in den Formaten HTML und MHTML Flow-Layout sind ebenfalls sehr beliebt und können auf jeder Webplattform verwendet werden. Aus diesem Grund ist die Konvertierung von Dokumenten in HTML und MHTML eine wichtige Funktion von Aspose.Words.

EPUB (kurz für "Elektronische Veröffentlichung") ist ein HTML-basiertes Format, das häufig für den Vertrieb elektronischer Bücher verwendet wird. Dieses Format wird in Aspose.Words vollständig unterstützt, um elektronische Bücher zu exportieren, die mit den meisten Lesegeräten kompatibel sind.

## Ein Dokument konvertieren

Für die einfache Konvertierung in HTML, MHTML oder EPUB wird eine der [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) Methodenüberladungen verwendet. Sie können das Dokument in einer Datei oder einem Stream speichern und das Speicherformat des Ausgabedokuments explizit festlegen oder es über die Dateinamenerweiterung definieren.

Das folgende Beispiel zeigt, wie DOCX in HTML konvertiert wird, indem ein Speicherformat angegeben wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

Um ein Dokument in MHTML oder EPUB zu konvertieren, verwenden Sie `SaveFormat.Mhtml` bzw. `SaveFormat.Epub`.

## Konvertieren eines Dokuments mit Roundtrip-Informationen

Das HTML -Format unterstützt nicht viele Microsoft Word -Funktionen, und wenn wir ein Dokumentmodell so nah wie möglich am Original wiederherstellen müssen, müssen wir einige zusätzliche Informationen in der HTML -Datei speichern. Solche Informationen werden auch als "Round-Trip-Informationen" bezeichnet. Zu diesem Zweck bietet Aspose.Words die Möglichkeit, Roundtrip-Informationen beim Speichern in HTML, MHTML oder EPUB mithilfe der Eigenschaft [ExportRoundtripInformation](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportroundtripinformation/) zu exportieren. Durch das Speichern der Roundtrip-Informationen können Dokumenteigenschaften wie Registerkarten, Kommentare, Kopf- und Fußzeilen wiederhergestellt werden, während Dokumente der aufgelisteten Formate wieder in ein **Document**-Objekt geladen werden.

Der Standardwert ist **true** für HTML und **false** für MHTML und EPUB:

- Bei **true** werden die Roundtrip-Informationen als - aw - * CSS Eigenschaften der entsprechenden HTML Elemente exportiert
- Wenn **false**, gibt es keine Roundtrip-Informationen, die in produzierte Dateien ausgegeben werden sollen

Das folgende Codebeispiel zeigt, wie Roundtrip-Informationen exportiert werden, wenn ein Dokument von DOCX in HTML konvertiert wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Geben Sie bei der Konvertierung in HTML Speicheroptionen an

Aspose.Words ermöglicht die Konvertierung eines Word-Dokuments in HTML mithilfe von Standard- oder benutzerdefinierten Speicheroptionen. Nachfolgend werden einige Beispiele für benutzerdefinierte Speicheroptionen beschrieben.

### Geben Sie einen Ordner zum Speichern von Ressourcen an

Mit Aspose.Words können wir einen physischen Ordner angeben, in dem alle Ressourcen wie Bilder, Schriftarten und externe CSS gespeichert werden, wenn ein Dokument in HTML konvertiert wird. Standardmäßig ist dies eine leere Zeichenfolge.

Die Angabe der Eigenschaft [ResourceFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolder/) ist die einfachste Möglichkeit, den Ordner festzulegen, in den alle Ressourcen geschrieben werden sollen. Wir können einzelne Eigenschaften verwenden, z. B. [FontsFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolder/), mit dem Schriftarten im angegebenen Ordner gespeichert werden, und [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolder/), mit dem Bilder in einem bestimmten Ordner gespeichert werden. Wenn ein relativer Pfad angegeben ist, beziehen sich **FontsFolder** und **ImagesFolder** auf den Ordner, in dem sich die Codeassembly befindet, **ResourceFolder** und [CssStyleSheetFileName](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_cssstylesheetfilename/) auf den Ausgabeordner, in dem sich das HTML-Dokument befindet.

In diesem Beispiel gibt **ResourceFolder** den relativen Pfad an. Dieser Pfad bezieht sich auf den Ausgabeordner, in dem das HTML-Dokument gespeichert ist. Der Wert der Eigenschaft **ResourceFolderAlias** wird verwendet, um URLs für alle Ressourcen zu erstellen.

Das folgende Codebeispiel zeigt, wie Sie mit diesen Eigenschaften arbeiten:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

Mit der Eigenschaft [ResourceFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolderalias/) können wir auch den Namen des Ordners angeben, der zum Erstellen von URIs aller in ein HTML -Dokument geschriebenen Ressourcen verwendet wird. Dies ist die einfachste Möglichkeit anzugeben, wie URIs für alle Ressourcendateien generiert werden soll. Dieselben Informationen können für Bilder und Schriftarten separat über die Eigenschaften [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolderalias/) bzw. [FontsFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolderalias/) angegeben werden.

Es gibt jedoch keine individuelle Eigenschaft für CSS. Das Verhalten des **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** und **CssStyleSheetFileName** Eigenschaften werden nicht geändert. Beachten Sie, dass die Eigenschaft **CssStyleSheetFileName** sowohl für die Angabe des Ordnernamens als auch des Dateinamens verwendet wird.

- **ResourceFolder** hat eine niedrigere Priorität als Ordner, die über **FontsFolder**, **ImagesFolder** und **CssStyleSheetFileName** angegeben wurden. Wenn der in **ResourceFolder** angegebene Ordner nicht existiert, wird er automatisch erstellt.
- **ResourceFolderAlias** hat eine niedrigere Priorität als **FontsFolderAlias** und **ImagesFolderAlias**. Wenn **ResourceFolderAlias** leer ist, wird der Wert der Eigenschaft **ResourceFolder** zum Erstellen der Ressource URIs verwendet. Wenn **ResourceFolderAlias** auf "." (Punkt) gesetzt ist, enthält die Ressource URIs nur Dateinamen ohne Angabe eines Pfads.

### Ressourcen für Base64-kodierende Schriftarten exportieren

Aspose.Words bietet die Möglichkeit anzugeben, ob Schriftressourcen in Base64-Codierungen in HTML eingebettet werden sollen. Verwenden Sie dazu die Eigenschaft [ExportFontsAsBase64](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontsasbase64/) – dies ist eine Erweiterung der Eigenschaft [ExportFontResources](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontresources/). Standardmäßig ist der Wert **false**, und Schriftarten werden in separate Dateien geschrieben. Wenn diese Option jedoch auf **true** gesetzt ist, werden Schriftarten in der Base64-Codierung in die CSS des Dokuments eingebettet. Die Eigenschaft **ExportFontsAsBase64** wirkt sich nur auf das Format HTML aus und nicht auf EPUB und MHTML.

Das folgende Codebeispiel zeigt, wie Base64-codierte Schriftarten nach HTML exportiert werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## Geben Sie bei der Konvertierung in EPUB Speicheroptionen an

Aspose.Words ermöglicht die Konvertierung eines Word-Dokuments in das EPUB -Format mithilfe von Standard- oder benutzerdefinierten Speicheroptionen. Sie können eine Reihe von Optionen angeben, indem Sie eine Instanz von [HtmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/) an die `Save`-Methode übergeben.

Das folgende Codebeispiel zeigt, wie Sie ein Word-Dokument in EPUB konvertieren, indem Sie einige benutzerdefinierte Speicheroptionen angeben:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

---
title: Dokument in HTML konvertieren
second_title: Aspose.Words für Python via .NET
articleTitle: Konvertieren Sie ein Dokument in HTML, MHTML oder EPUB
linktitle: Konvertieren Sie ein Dokument in HTML, MHTML oder EPUB
description: "Konvertieren Sie ein Dokument aus fast jedem Format in HTML oder MHTML sowie in das EPUB-Format mit Python. Sie können auch Speicheroptionen für die Verwaltung des Ausgabedokuments angeben."
type: docs
weight: 20
url: /de/python-net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-01-27-14-07-04
---

Auch Dokumente im HTML- und MHTML-Flow-Layout-Format erfreuen sich großer Beliebtheit und können auf jeder Webplattform verwendet werden. Aus diesem Grund ist die Konvertierung von Dokumenten in HTML und MHTML eine wichtige Funktion von Aspose.Words.

EPUB (kurz für "Electronic Publication") ist ein HTML-basiertes Format, das häufig für den Vertrieb elektronischer Bücher verwendet wird. Dieses Format wird in Aspose.Words vollständig für den Export elektronischer Bücher unterstützt, die mit den meisten Lesegeräten kompatibel sind.

## Konvertieren Sie ein Dokument

Für die einfache Konvertierung in HTML, MHTML oder EPUB wird eine der [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/)-Methodenüberladungen verwendet. Sie können das Dokument in einer Datei oder einem Stream speichern und das Speicherformat des Ausgabedokuments explizit festlegen oder es anhand der Dateinamenerweiterung definieren.

Das folgende Beispiel zeigt, wie Sie DOCX in HTML konvertieren und dabei ein Speicherformat angeben:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

Um ein Dokument in MHTML oder EPUB zu konvertieren, verwenden Sie [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) bzw. [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub).

## Konvertieren Sie ein Dokument mit Roundtrip-Informationen

Das HTML-Format unterstützt viele Microsoft Word-Funktionen nicht und wenn wir ein Dokumentmodell so nah wie möglich am Original wiederherstellen müssen, müssen wir einige zusätzliche Informationen in der HTML-Datei speichern. Solche Informationen werden auch "Round-Trip-Informationen" genannt. Zu diesem Zweck bietet Aspose.Words die Möglichkeit, Roundtrip-Informationen beim Speichern in HTML, MHTML oder EPUB mithilfe der **export_roundtrip_information**-Eigenschaft zu exportieren. Durch das Speichern der Roundtrip-Informationen können Dokumenteigenschaften wie Tabulatoren, Kommentare, Kopf- und Fußzeilen wiederhergestellt werden, während Dokumente der aufgelisteten Formate zurück in ein [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)-Objekt geladen werden.

Der Standardwert ist *True* für HTML und *False* für MHTML und EPUB:

- Bei *True* werden die Roundtrip-Informationen als - aw - * CSS-Eigenschaften der entsprechenden HTML-Elemente exportiert
- Bei *False* gibt es keine Round-Trip-Informationen, die in erzeugte Dateien ausgegeben werden müssen

Das folgende Codebeispiel zeigt, wie Roundtrip-Informationen beim Konvertieren eines Dokuments von DOCX in HTML exportiert werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

{{% /alert %}}

## Geben Sie Speicheroptionen bei der Konvertierung in HTML an

Aspose.Words ermöglicht die Konvertierung eines Word-Dokuments in HTML mithilfe von Standard- oder benutzerdefinierten Speicheroptionen. Im Folgenden werden einige Beispiele für benutzerdefinierte Speicheroptionen beschrieben.

### Geben Sie einen Ordner zum Speichern von Ressourcen an

Mit Aspose.Words können wir einen physischen Ordner angeben, in dem alle Ressourcen wie Bilder, Schriftarten und externes CSS gespeichert werden, wenn ein Dokument in HTML konvertiert wird. Standardmäßig ist dies eine leere Zeichenfolge.

Die Angabe der [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/)-Eigenschaft ist die einfachste Möglichkeit, den Ordner festzulegen, in den alle Ressourcen geschrieben werden sollen. Wir können einzelne Eigenschaften verwenden, z. B. [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), das Schriftarten im angegebenen Ordner speichert, und [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), das Bilder in einem angegebenen Ordner speichert. Wenn ein relativer Pfad angegeben ist, verweisen [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) und [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) auf den Ordner, in dem sich die Codeassembly befindet, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) und [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) verweisen auf den Ausgabeordner, in dem sich das HTML-Dokument befindet.

In diesem Beispiel gibt [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) den relativen Pfad an. Dieser Pfad bezieht sich auf den Ausgabeordner, in dem das HTML-Dokument gespeichert wird. Der Wert der [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/)-Eigenschaft wird zum Erstellen von URLs für alle Ressourcen verwendet.

Das folgende Codebeispiel zeigt, wie mit diesen Eigenschaften gearbeitet wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

Mithilfe der [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/)-Eigenschaft können wir auch den Namen des Ordners angeben, der zum Erstellen der URIs aller in ein HTML-Dokument geschriebenen Ressourcen verwendet wird. Dies ist die einfachste Möglichkeit, anzugeben, wie URIs für alle Ressourcendateien generiert werden sollen. Dieselben Informationen können für Bilder und Schriftarten separat über [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/)- bzw. [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/)-Eigenschaften angegeben werden.

Allerdings gibt es für CSS keine eigene Eigenschaft. Das Verhalten der [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/)-, [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/)-, [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/)-, [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/)- und [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/)-Eigenschaften wird nicht geändert. Beachten Sie, dass die [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/)-Eigenschaft sowohl zur Angabe des Ordnernamens als auch des Dateinamens verwendet wird.

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) hat eine niedrigere Priorität als über [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) und [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) angegebene Ordner. Wenn der im [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) angegebene Ordner nicht existiert, wird er automatisch erstellt.
- [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) hat eine niedrigere Priorität als [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) und [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/). Wenn [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) leer ist, wird der Wert der [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/)-Eigenschaft zum Erstellen von Ressourcen-URIs verwendet. Wenn [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) auf "." gesetzt ist. (Punkt) enthalten Ressourcen-URIs nur Dateinamen ohne Angabe eines Pfads.

### Ressourcen für Base64-Kodierungsschriftarten exportieren

Aspose.Words bietet die Möglichkeit anzugeben, ob Schriftartressourcen in Base64-Codierungen in HTML eingebettet werden sollen. Verwenden Sie dazu die [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/)-Eigenschaft – dies ist eine Erweiterung der [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/)-Eigenschaft. Standardmäßig ist der Wert *False* und Schriftarten werden in separate Dateien geschrieben. Wenn diese Option jedoch auf *True* gesetzt ist, werden Schriftarten in Base64-Kodierung in das CSS des Dokuments eingebettet. Die [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/)-Eigenschaft betrifft nur das HTML-Format und hat keinen Einfluss auf EPUB und MHTML.

Das folgende Codebeispiel zeigt, wie Base64-codierte Schriftarten nach HTML exportiert werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## Geben Sie Speicheroptionen bei der Konvertierung in EPUB an

Aspose.Words ermöglicht die Konvertierung eines Word-Dokuments in das EPUB-Format mithilfe von Standard- oder benutzerdefinierten Speicheroptionen. Sie können eine Reihe von Optionen angeben, indem Sie eine Instanz von [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) an die [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/)-Methode übergeben.

Das folgende Codebeispiel zeigt, wie man ein Word-Dokument in EPUB konvertiert und dabei einige benutzerdefinierte Speicheroptionen angibt:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir + "Rendering.docx")

# Create a new instance of HtmlSaveOptions. This object allows us to set options that control
# How the output document is saved.
saveOptions = aw.saving.HtmlSaveOptions()

# Specify the desired encoding.
saveOptions.encoding = "utf-8"

# Specify at what elements to split the internal HTML at. This creates a new HTML within the EPUB 
# which allows you to limit the size of each HTML part. This is useful for readers which cannot read 
# HTML files greater than a certain size e.g 300kb.
saveOptions.document_split_criteria = aw.saving.DocumentSplitCriteria.HEADING_PARAGRAPH

# Specify that we want to export document properties.
saveOptions.export_document_properties = True

# Specify that we want to save in EPUB format.
saveOptions.save_format = aw.SaveFormat.EPUB

# Export the document as an EPUB file.
doc.save(docs_base.artifacts_dir + "Document.EpubConversion_out.epub", saveOptions)
{{< /highlight >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

{{% /alert %}}


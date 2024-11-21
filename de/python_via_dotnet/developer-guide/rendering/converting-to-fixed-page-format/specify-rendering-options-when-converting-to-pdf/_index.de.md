---
title: Optionen beim Konvertieren in PDF
second_title: Aspose.Words für Python via .NET
articleTitle: Geben Sie beim Konvertieren in PDF Rendering-Optionen an
linktitle: Geben Sie beim Konvertieren in PDF Rendering-Optionen an
description: "Konvertieren Sie ein Dokument mit erweiterten Optionen mit Python in PDF. Verwenden Sie PdfSaveOptions, um das Ergebnis des Speicherns eines Dokuments im PDF-Format zu ändern."
type: docs
weight: 20
url: /de/python-net/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Das PDF-Format ist ein festes Seitenformat, das bei Benutzern sehr beliebt ist und von verschiedenen Anwendungen weitgehend unterstützt wird, da ein PDF-Dokument auf jedem Gerät gleich aussieht. Aus diesem Grund ist die Konvertierung in PDF eine wichtige Funktion von Aspose.Words.

PDF ist ein komplexes Format. Bei der Konvertierung eines Dokuments in PDF sind mehrere Berechnungsschritte erforderlich, einschließlich der Layoutberechnung. Da diese Phasen komplexe Berechnungen umfassen, sind sie zeitaufwändig. Außerdem ist das PDF-Format an sich recht komplex. Es verfügt über eine bestimmte Dateistruktur, ein bestimmtes Grafikmodell und eine bestimmte Schriftarteinbettung. Darüber hinaus verfügt es über einige komplexe Ausgabefunktionen, wie z. B. Dokumentstruktur-Tags, Verschlüsselung, digitale Signaturen und bearbeitbare Formulare.

Die Aspose.Words-Layout-Engine imitiert die Funktionsweise der Seitenlayout-Engine von Microsoft Word. Daher sorgt Aspose.Words dafür, dass PDF-Ausgabedokumente so ähnlich wie möglich aussehen, was Sie in Microsoft Word sehen können. Manchmal ist es notwendig, zusätzliche Optionen anzugeben, die sich auf das Ergebnis der Speicherung eines Dokuments im PDF-Format auswirken können. Diese Optionen können mithilfe der [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/)-Klasse angegeben werden, die die Eigenschaften enthält, die bestimmen, wie die PDF-Ausgabe angezeigt wird.

Nachfolgend finden Sie einige Beispiele für die Verwendung von [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/).

{{% alert color="primary" %}}

Derzeit können Sie auch in den Formaten PDF/A-1 und PDF/A-2 speichern. Beachten Sie, dass beim PDF/A-Format eine Ausgabedatei größer ist als eine normale PDF-Datei.

[PdfCompliance.PDF_A1A](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1a) und [PdfCompliance.PDF_A1B](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1b) sind als veraltet markiert.

Weitere Informationen zu PDF/A finden Sie im nächsten Artikel "Lernen Sie die Funktionen der Konvertierung in PDF/A kennen".

{{% /alert %}}

## Erstellen eines PDF-Dokuments mit ausfüllbaren Formularen

Es ist auch möglich, ausfüllbare Formulare aus einem Microsoft Word-Dokument in ein Ausgabe-PDF zu exportieren, das ausfüllbare Formulare anstelle von reinem Text enthält. Verwenden Sie die [preserve_form_fields](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/preserve_form_fields/)-Eigenschaft, um ein Dokument als PDF mit ausfüllbaren Formularen zu speichern.

Beachten Sie, dass das PDF-Format im Gegensatz zu Microsoft Word über eine begrenzte Anzahl von Optionen für bearbeitbare Formulare verfügt, z. B. Textfelder, Kombinationsfelder und Kontrollkästchen. Microsoft Word bietet mehr Formulartypen, zum Beispiel die Kalenderdatumsauswahl. Im Allgemeinen ist es nicht möglich, das Microsoft Word-Verhalten in PDF vollständig zu imitieren. Daher kann die PDF-Ausgabe in manchen komplexen Fällen von der Darstellung in Microsoft Word abweichen.

Das folgende Codebeispiel zeigt, wie man ein Dokument als PDF mit ausfüllbaren Formularen mit angegebener JPEG-Komprimierung und -Qualität speichert:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-PdfImageComppression.py" >}}

## Dokumentstruktur und benutzerdefinierte Eigenschaften exportieren

Mit der [export_document_structure](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_document_structure/)-Eigenschaft können Sie die Dokumentstruktur in eine PDF-Ausgabe exportieren.

Funktionen zur logischen PDF-Struktur bieten einen Mechanismus zum Integrieren von Informationen zur Dokumentinhaltsstruktur in eine PDF-Datei. Aspose.Words bewahrt Informationen über die Struktur eines Microsoft Word-Dokuments, wie Absätze, Listen, Tabellen, Fußnoten/Endnoten usw.

Das folgende Beispiel zeigt, wie man ein Dokument im PDF-Format speichert und dabei die Dokumentstruktur beibehält:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportDocumentStructure.py" >}}

Mit Aspose.Words können Sie auch benutzerdefinierte Dokumenteigenschaften in PDF exportieren, was im folgenden Beispiel veranschaulicht wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-CustomPropertiesExport.py" >}}

## Exportieren von Gliederungen aus Lesezeichen und Überschriften in Ausgabe-PDF

Wenn Sie Lesezeichen als Umrisse im Ausgabe-PDF exportieren möchten, können Sie die [default_bookmarks_outline_level](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/default_bookmarks_outline_level/)-Eigenschaft verwenden. Diese Eigenschaft gibt die Standardebene in der Dokumentgliederung an, auf der Microsoft Word-Lesezeichen angezeigt werden. Wenn das Dokument Lesezeichen in der Kopf-/Fußzeile des Dokuments enthält, können Sie die [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/)-Eigenschaft auf [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) oder [HeaderFooterBookmarksExportMode.ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#all) setzen, um anzugeben, wie sie in die Ausgabe-PDF exportiert werden. Die Lesezeichen in Kopf-/Fußzeilen werden nicht exportiert, wenn der [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/)-Wert [HeaderFooterBookmarksExportMode.NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#none) ist.

Das folgende Codebeispiel zeigt, wie Lesezeichen aus der ersten Kopf-/Fußzeile eines Abschnitts exportiert werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportHeaderFooterBookmarks.py" >}}

Das Ausgabe-PDF dieses Beispiels wird unten angezeigt:

![specify-rendering-options-when-converting-to-pdf_1](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Wenn [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) auf [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) eingestellt ist und das Dokument gerade und ungerade Kopf-/Fußzeilen oder eine andere Kopf-/Fußzeile auf der ersten Seite hat, werden Lesezeichen für die ersten eindeutigen Kopf-/Fußzeilen in einem Abschnitt exportiert.

Mithilfe der [headings_outline_levels](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/headings_outline_levels/)-Eigenschaft können Sie auch Überschriften im Ausgabe-PDF exportieren. Diese Eigenschaft gibt an, wie viele Überschriftenebenen in der Dokumentgliederung enthalten sind.

Das folgende Codebeispiel zeigt, wie Überschriften mit drei Ebenen exportiert werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-SetOutlineOptions.py" >}}

Das Ausgabe-PDF dieses Beispiels ist unten dargestellt:

![specify-rendering-options-when-converting-to-pdf_2](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Eine Lesezeichen- oder Überschriftennavigation kann in verschiedenen PDF-Viewern unterschiedlich aussehen. Darüber hinaus sind in einigen Anwendungen Lesezeichen und Überschriftennavigation in der Benutzeroberfläche nicht verfügbar.

{{% /alert %}}

## Downsampling von Bildern zur Reduzierung der Dokumentgröße

Aspose.Words bietet mithilfe der [downsample_options](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/downsample_options/)-Eigenschaft die Möglichkeit, Bilder herunterzuskalieren, um die Größe der ausgegebenen PDF-Datei zu reduzieren. Downsampling ist standardmäßig in der [downsample_images](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/downsample_images/)-Eigenschaft aktiviert.

Beachten Sie, dass es auch möglich ist, eine bestimmte Auflösung in der [resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution/)-Eigenschaft oder einen Auflösungsschwellenwert in der [resolution_threshold](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution_threshold/)-Eigenschaft festzulegen. Im zweiten Fall, wenn die Bildauflösung unter dem Schwellenwert liegt, wird das Downsampling nicht angewendet.

Das folgende Codebeispiel zeigt, wie die Auflösung von Bildern in einem Ausgabe-PDF-Dokument geändert wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DownsamplingImages.py" >}}

Die Auflösung wird anhand der tatsächlichen Bildgröße auf der Seite berechnet.

## Einbetten von Schriftarten im Adobe PDF-Format

Mit Aspose.Words können Sie außerdem steuern, wie Schriftarten in die resultierenden PDF-Dokumente eingebettet werden. Schriftarten müssen in jedes Adobe PDF-Dokument eingebettet werden, um sicherzustellen, dass das Dokument auf jedem Computer korrekt gerendert werden kann (weitere Einzelheiten zur Schriftwiedergabe finden Sie im Abschnitt [Verwendung von TrueType-Schriftarten](/words/de/python-net/using-truetype-fonts/)). Standardmäßig bettet Aspose.Words eine Teilmenge der im Dokument verwendeten Schriftarten in die generierte PDF-Datei ein. In diesem Fall werden nur die im Dokument verwendeten glyphs (Zeichen) im PDF gespeichert.

### Wann vollständige Schriftarten und wann Teilschriften verwendet werden sollten

Es gibt eine Möglichkeit, eine Option für Aspose.Words anzugeben, um vollständige Schriftarten einzubetten. Weitere Details sowie einige Vor- und Nachteile der einzelnen Einstellungen werden in der folgenden Tabelle beschrieben.

| Modus "Schriftarten einbetten" |  Vorteile | Nachteile |
|  :-  |  :-  |  :-  |
|  `Full`  | Nützlich, wenn Sie die resultierende PDF-Datei später bearbeiten möchten, indem Sie Text hinzufügen oder ändern. Alle Schriftarten sind enthalten, daher sind alle glyphs vorhanden. | Da einige Schriftarten groß sind (mehrere Megabyte), kann das Einbetten ohne Teilmenge zu großen Ausgabedateien führen. |
|  `Subset`  | Die Unterteilung ist nützlich, wenn Sie die Größe der Ausgabedatei kleiner halten möchten. | <p>Der Benutzer kann Text mit der untergeordneten Schriftart im ausgegebenen PDF-Dokument nicht vollständig hinzufügen oder bearbeiten. Dies liegt daran, dass nicht alle glyphs der Schriftart vorhanden sind.</p>

<p>Wenn mehrere PDFs mit untergeordneten Schriftarten gespeichert und zusammengesetzt werden, enthält das kombinierte PDF-Dokument möglicherweise eine Schriftart, die viele unnötige Untergruppen enthält.</p> |

### Vollständige Schriftarten in PDF einbetten

Mit der [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/)-Eigenschaft können Sie angeben, wie Aspose.Words Schriftarten in ein Ausgabe-PDF-Dokument einbettet.

- Um vollständige Schriftarten in das ausgegebene PDF-Dokument einzubetten, setzen Sie [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) auf *True*
- Um Schriftarten beim Speichern als PDF zu unterteilen, setzen Sie [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) auf *False*

Das folgende Beispiel zeigt, wie vollständige Schriftarten in das ausgegebene PDF-Dokument eingebettet werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddAllFonts.py" >}}

Das folgende Beispiel zeigt, wie Aspose.Words so eingestellt wird, dass es Schriftarten in der Ausgabe-PDF-Datei unterteilt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddSubsetFonts.py" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei für diese Beispiele von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

{{% /alert %}}

## So steuern Sie das Einbetten von Kernschriftarten und Windows-Standardschriftarten

Kernschriftarten und Windows-Standardschriftarten sind die "Standard"-Schriftartensätze, die normalerweise auf dem Zielcomputer vorhanden sind oder vom Dokumentenleser bereitgestellt werden und daher nicht in die Ausgabe-PDF eingebettet werden müssen. Indem Sie diese Schriftarten nicht einbetten, können Sie die Größe gerenderter PDF-Dokumente verringern und dennoch die Portabilität beibehalten.

Aspose.Words bietet Optionen zur Auswahl, wie Schriftarten in PDF exportiert werden. Sie können entweder Kern- und Standardschriftarten in das Ausgabe-PDF einbetten oder das Einbetten überspringen und stattdessen Standard-Kern-PDF-Schriftarten oder Systemschriftarten auf dem Zielcomputer verwenden. Die Verwendung einer dieser Optionen führt normalerweise zu einer erheblichen Reduzierung der Dateigröße für von Aspose.Words generierte PDF-Dokumente.

- Da sich diese Optionen gegenseitig ausschließen, sollten Sie jeweils nur eine auswählen.
- Beim Speichern mit PDF/A-1-Konformität müssen alle verwendeten Schriftarten in das PDF-Dokument eingebettet sein. Beim Speichern mit dieser Konformität muss die [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/)-Eigenschaft auf *False* und die [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/)-Eigenschaft auf [PdfFontEmbeddingMode.EMBED_ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_all) festgelegt werden.

### Kernschriftarten einbetten

Die Option zum Einbetten von Core-Schriftarten kann mithilfe der [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/)-Eigenschaft aktiviert oder deaktiviert werden. Wenn true eingestellt ist, werden die folgenden beliebtesten "True Type"-Schriftarten (Base 14-Schriftarten) nicht in das ausgegebene PDF-Dokument eingebettet:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Diese Schriftarten werden durch die entsprechenden Kernschriftarten vom Typ 1 ersetzt, die beim Öffnen der PDF-Datei von einem Reader bereitgestellt werden.

Das folgende Beispiel zeigt, wie Sie Aspose.Words so einstellen, dass das Einbetten von Kernschriftarten vermieden wird und der Leser sie durch PDF-Schriftarten vom Typ 1 ersetzen kann:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-AvoidEmbeddingCoreFonts.py" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei für dieses Beispiel von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

{{% /alert %}}

Da PDF-Viewer Kernschriftarten auf allen unterstützten Plattformen bereitstellen, ist diese Option auch nützlich, wenn eine bessere Dokumentportabilität erforderlich ist. Kernschriftarten sehen jedoch möglicherweise anders aus als Systemschriftarten.

{{% alert color="primary" %}}

Diese Einstellung funktioniert nur für ANSI-Codierungstext (Windows-1252). Das Schreiben eines Nicht-ANSI-Textes in PDF erfordert immer die Einbettung der entsprechenden Schriftarten.

{{% /alert %}}

### Einbetten von Systemschriftarten

Diese Option kann mithilfe von [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) aktiviert oder deaktiviert werden. Wenn diese Eigenschaft auf [PdfFontEmbeddingMode.EMBED_NONSTANDARD](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_nonstandard) gesetzt ist, werden die true-Schriftarten "Arial" und "Times New Roman" nicht in ein PDF-Dokument eingebettet. In diesem Fall verlässt sich der Client-Viewer auf die Schriftarten, die auf dem Betriebssystem des Clients installiert sind. Wenn die [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/)-Eigenschaft auf [PdfFontEmbeddingMode.EMBED_NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_none) gesetzt ist, werden in Aspose.Words keine Schriftarten eingebettet.

Das folgende Beispiel zeigt, wie Sie Aspose.Words so einstellen, dass das Einbetten der Schriftarten Arial und Times New Roman in ein PDF-Dokument übersprungen wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DisableEmbedWindowsFonts.py" >}}

Dieser Modus ist am nützlichsten, wenn Sie Ihre Dokumente auf derselben Plattform anzeigen und dabei das genaue Erscheinungsbild der Schriftarten im Ausgabe-PDF beibehalten möchten.

{{% alert color="primary" %}}

Diese Einstellung funktioniert nur für ANSI-Codierungstext (Windows-1252). Um einen Nicht-ANSI-Text in PDF zu schreiben, muss die entsprechende Schriftart eingebettet sein.

{{% /alert %}}

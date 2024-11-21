---
title: Geben Sie die Renderoptionen beim Konvertieren in PDF an
second_title: Aspose.Words für C++
articleTitle: Geben Sie die Renderoptionen beim Konvertieren in PDF an
linktitle: Geben Sie die Renderoptionen beim Konvertieren in PDF an
description: "Konvertieren Sie ein Dokument mit C++ in PDF mit erweiterten Optionen. Verwenden Sie PdfSaveOptions, um das Ergebnis des Speicherns eines Dokuments in das Format PDF zu ändern."
type: docs
weight: 30
url: /de/cpp/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Das PDF -Format ist ein Festseitenformat, das bei Benutzern sehr beliebt ist und von verschiedenen Anwendungen weitgehend unterstützt wird, da ein PDF -Dokument auf jedem Gerät gleich aussieht. Aus diesem Grund ist die Konvertierung in PDF ein wichtiges Merkmal von Aspose.Words.

PDF ist ein komplexes Format. Bei der Konvertierung eines Dokuments in PDF sind mehrere Berechnungsschritte erforderlich, einschließlich der Layoutberechnung. Da diese Phasen komplexe Berechnungen beinhalten, sind sie zeitaufwändig. Außerdem ist das PDF -Format an sich ziemlich komplex. Es hat eine spezifische Dateistruktur, ein Grafikmodell und eine Schrifteinbettung. Darüber hinaus bietet es einige komplexe Ausgabefunktionen wie Dokumentstruktur-Tags, Verschlüsselung, digitale Signaturen und bearbeitbare Formulare.

Aspose.Words Layout-Engine imitiert die Funktionsweise der Seitenlayout-Engine von Microsoft Word. Daher lässt Aspose.Words PDF Ausgabedokumente so nah wie möglich an dem aussehen, was Sie in Microsoft Word sehen können. Manchmal ist es notwendig, zusätzliche Optionen anzugeben, die sich auf das Ergebnis des Speicherns eines Dokuments im PDF -Format auswirken können. Diese Optionen können durch die Verwendung der Klasse [PdfSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.pdf_save_options-members) angegeben werden, die die Eigenschaften enthält, die bestimmen, wie die Ausgabe von PDF angezeigt wird.

Nachfolgend finden Sie einige Beispiele für die Verwendung von **PdfSaveOptions**.

{{% alert color="primary" %}}

Derzeit können Sie speichern in PDF 1.7, PDF 2.0, PDF/A-1 formate a, PDF/A-1b, PDF/A-2a, PDF/A-2u und PDF/UA-1. Verwenden Sie die [PdfCompliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/)-Aufzählung, um die Konformitätsstufe für PDF-Standards festzulegen. Beachten Sie, dass beim Format PDF/A eine Ausgabedateigröße größer ist als eine normale PDF-Dateigröße.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) und [PdfCompliance.PdfA1b](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) sind als veraltet markiert.

Weitere Informationen zu PDF/A finden Sie im nächsten Artikel "Lernen Sie die Funktionen der Konvertierung in PDF/A kennen".

{{% /alert %}}

## Erstellen eines PDF -Dokuments mit ausfüllbaren Formularen

Es ist auch möglich, ausfüllbare Formulare aus einem Microsoft Word -Dokument in die Ausgabe PDF zu exportieren, die ausfüllbare Formulare anstelle von einfachem Text enthält. Verwenden Sie die Eigenschaft [PreserveFormFields](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_preserveformfields/), um ein Dokument als PDF mit ausfüllbaren Formularen zu speichern.

Beachten Sie, dass das Format PDF im Gegensatz zu Microsoft Word eine begrenzte Anzahl von Optionen für bearbeitbare Formulare enthält, z. B. Textfeld, Kombinationsfeld und Kontrollkästchen. Microsoft Word hat mehr Arten von Formularen, z. B. Kalender-Datumsauswahl. Im Allgemeinen ist es nicht möglich, das Verhalten von Microsoft Word in PDF vollständig nachzuahmen. Daher kann die Ausgabe von PDF in einigen komplexen Fällen von dem abweichen, was Sie in Microsoft Word sehen.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument als PDF mit ausfüllbaren Formularen mit der angegebenen JPEG-Komprimierung und -qualität speichern:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageComppression.h" >}}

## Dokumentstruktur und benutzerdefinierte Eigenschaften exportieren

Mit der Eigenschaft [ExportDocumentStructure](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_exportdocumentstructure/) können Sie die Dokumentstruktur in die Ausgabe PDF exportieren.

PDF-Funktionen für logische Strukturen bieten einen Mechanismus zum Einbinden von Informationen in Bezug auf die Dokumentinhaltsstruktur in eine PDF-Datei. Aspose.Words behält Informationen über die Struktur aus einem Microsoft Word-Dokument bei, z. B. Absätze, Listen, Tabellen, Fußnoten/Endnoten usw.

Das folgende Beispiel zeigt, wie Sie ein Dokument im Format PDF speichern und dabei die Dokumentstruktur beibehalten:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cpp" >}}

Mit Aspose.Words können Sie auch benutzerdefinierte Dokumenteigenschaften nach PDF exportieren, was im folgenden Beispiel veranschaulicht wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cpp" >}}

## Exportieren von Konturen aus Lesezeichen und Überschriften in der Ausgabe PDF

Wenn Sie Lesezeichen als Umrisse in Ausgabe PDF exportieren möchten, können Sie die Eigenschaft [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_defaultbookmarksoutlinelevel/) verwenden. Diese Eigenschaft gibt die Standardebene in der Dokumentgliederung an, auf der Microsoft Word Lesezeichen angezeigt werden. Wenn das Dokument Lesezeichen in der Kopf-/Fußzeile des Dokuments enthält, können Sie die Eigenschaft [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_headerfooterbookmarksexportmode/) auf [First](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) oder [All](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) setzen, um anzugeben, wie sie in Ausgabe PDF exportiert werden. Die Lesezeichen in Kopf-/Fußzeilen werden nicht exportiert, wenn der Wert von **HeaderFooterBookmarksExportMode** [None](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) ist.

Das folgende Codebeispiel zeigt, wie Lesezeichen aus der ersten Kopf- / Fußzeile eines Abschnitts exportiert werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cpp" >}}

Die Ausgabe PDF dieses Beispiels wird unten gezeigt:

![specify-rendering-options-aspose-words-cpp-1](specify-rendering-options-when-converting-to-pdf-1.png)

Wenn **HeaderFooterBookmarksExportMode** auf First gesetzt ist und das Dokument gerade und ungerade Kopf-/Fußzeilen oder eine andere Kopf-/Fußzeile für die erste Seite enthält, werden Lesezeichen für die ersten eindeutigen Kopf-/Fußzeilen in einem Abschnitt exportiert.

Sie können auch Überschriften in der Ausgabe PDF mit der Eigenschaft [HeadingsOutlineLevels](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_headingsoutlinelevels/) exportieren. Diese Eigenschaft gibt an, wie viele Ebenen von Überschriften in der Dokumentgliederung enthalten sind.

Das folgende Codebeispiel zeigt, wie Überschriften mit drei Ebenen exportiert werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cpp" >}}

Die Ausgabe PDF dieses Beispiels ist unten dargestellt:

![specify-rendering-options-aspose-words-cpp-2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Eine Lesezeichen- oder Überschriftennavigation kann in verschiedenen PDF-Viewern unterschiedlich dargestellt werden. Darüber hinaus sind in einigen Anwendungen Lesezeichen und Überschriftennavigation in UI nicht verfügbar.

{{% /alert %}}

## Downsampling von Bildern, um die Dokumentgröße zu reduzieren

Aspose.Words bietet die Möglichkeit, Bilder zu verkleinern, um die Ausgabegröße PDF mithilfe der Eigenschaft [DownsampleOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_downsampleoptions/) zu verringern. Downsampling ist standardmäßig in der Eigenschaft [DownsampleImages](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_downsampleimages/) aktiviert.

Beachten Sie, dass es auch möglich ist, eine bestimmte Auflösung in der Eigenschaft [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolution/) oder einen Auflösungsschwellenwert in der Eigenschaft [ResolutionThreshold](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolutionthreshold/) festzulegen. Im zweiten Fall, wenn die Bildauflösung kleiner als der Schwellenwert ist, wird das Downsampling nicht angewendet.

Das folgende Codebeispiel zeigt, wie Sie die Auflösung von Bildern in einem PDF -Ausgabedokument ändern:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cpp" >}}

Die Auflösung wird entsprechend der tatsächlichen Bildgröße auf der Seite berechnet.

## Einbetten von Schriftarten im Adobe PDF -Format

Mit Aspose.Words können Sie auch steuern, wie Schriftarten in die resultierenden PDF-Dokumente eingebettet werden. Schriftarten müssen in jedes Adobe PDF-Dokument eingebettet sein, um sicherzustellen, dass das Dokument auf jedem Computer korrekt gerendert werden kann (weitere Informationen zum Rendern von Schriftarten finden Sie im Abschnitt [TrueType Schriftarten verwenden](/words/cpp/using-truetype-fonts/)). Standardmäßig bettet Aspose.Words eine Teilmenge der im Dokument verwendeten Schriftarten in das generierte PDF ein. In diesem Fall werden nur die im Dokument verwendeten Glyphen (Zeichen) in PDF gespeichert.

### Wann vollständige Schriftarten und wann Teilmengen verwendet werden sollten

Es gibt eine Möglichkeit, eine Option für Aspose.Words anzugeben, um vollständige Schriftarten einzubetten. Weitere Details sowie einige Vor- und Nachteile jeder Einstellung sind in der folgenden Tabelle beschrieben.

| Modus Schriftarten einbetten | Vorteil | Nachteil |
| :- | :- | :- |
| `Full` | Nützlich, wenn Sie die resultierende PDF später bearbeiten möchten, indem Sie den Text hinzufügen oder ändern. Alle Schriftarten sind enthalten, daher sind alle Glyphen vorhanden. | Da einige Schriftarten groß sind (mehrere Megabyte), kann das Einbetten ohne Teilmenge zu großen Ausgabedateien führen. |
| `Subset` | Teilmengen sind nützlich, wenn Sie die Größe der Ausgabedatei kleiner halten möchten. | <p>Der Benutzer kann den Text mit der untergeordneten Schriftart im Ausgabedokument PDF nicht vollständig hinzufügen oder bearbeiten. Dies liegt daran, dass nicht alle Glyphen der Schriftart vorhanden sind.</p><p>Wenn mehrere PDFs mit untergeordneten Schriftarten gespeichert und zusammengesetzt werden, enthält das kombinierte PDF-Dokument möglicherweise eine Schriftart, die viele unnötige Teilmengen enthält.</p> |

### Vollständige Schriftarten in PDF einbetten

Mit der Eigenschaft [EmbedFullFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_embedfullfonts/) können Sie angeben, wie Aspose.Words Schriftarten in ein PDF Ausgabedokument einbettet.

- Um vollständige Schriftarten in das Ausgabedokument PDF einzubetten, setzen Sie **EmbedFullFonts** auf true
- Um Schriftarten beim Speichern in PDF zu unterteilen, setzen Sie **EmbedFullFonts** auf false

Das folgende Beispiel zeigt, wie vollständige Schriftarten in das Ausgabedokument PDF eingebettet werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cpp" >}}

Das folgende Beispiel zeigt, wie Sie Aspose.Words festlegen, um Schriftarten in der Ausgabe PDF zu unterteilen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cpp" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei für diese Beispiele herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## So steuern Sie das Einbetten von Kernschriftarten und Windows -Standardschriftarten

Kernschriftarten und Windows -Standardschriftarten sind die "Standard" -Schriftarten, die normalerweise auf dem Zielcomputer vorhanden sind oder vom Dokumentenleser bereitgestellt werden. Daher müssen sie nicht in die Ausgabe PDF eingebettet werden. Wenn Sie diese Schriftarten nicht einbetten, können Sie die Größe gerenderter PDF-Dokumente verringern und dennoch die Portabilität beibehalten.

Aspose.Words bietet Optionen zum Auswählen, wie Schriftarten nach PDF exportiert werden. Sie können entweder Kern- und Standardschriftarten in die Ausgabe PDF einbetten oder das Einbetten überspringen und stattdessen Standard-Kernschriftarten PDF oder Systemschriftarten auf dem Zielcomputer verwenden. Die Verwendung einer dieser Optionen führt normalerweise zu einer erheblichen Reduzierung der Dateigröße für PDF-Dokumente, die von Aspose.Words generiert wurden.

- Da sich diese Optionen gegenseitig ausschließen, sollten Sie jeweils nur eine auswählen.
- Beim Speichern mit PDF/A-1-Konformität müssen alle verwendeten Schriftarten mit dem PDF-Dokument eingebettet werden. Beim Speichern mit dieser Übereinstimmung muss die Eigenschaft [UseCoreFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_usecorefonts/) auf false und die Eigenschaft [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_fontembeddingmode/) auf [EmbedAll](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) gesetzt werden

### Einbetten von Kernschriften

Die Option zum Einbetten von Kernschriften kann mithilfe der Eigenschaft `UseCoreFonts` aktiviert oder deaktiviert werden. Wenn es auf true gesetzt ist, werden die folgenden beliebtesten "True Type" -Schriftarten (Basis-14-Schriftarten) nicht in das Ausgabedokument PDF eingebettet:

`Arial`
`Times New Roman`
`Courier New`
`Symbol`

Diese Schriftarten werden durch die entsprechenden Schriftarten des Kerntyps 1 ersetzt, die beim Öffnen von PDF von einem Lesegerät bereitgestellt werden.

Das folgende Beispiel zeigt, wie Sie Aspose.Words festlegen, um das Einbetten von Kernschriftarten zu vermeiden, und den Leser durch PDF -Schriftarten vom Typ 1 ersetzen lassen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cpp" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei für dieses Beispiel herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Da PDF-Viewer Kernschriftarten auf jeder unterstützten Plattform bereitstellen, ist diese Option auch nützlich, wenn eine größere Dokumentenportabilität erforderlich ist. Kernschriftarten können jedoch anders aussehen als Systemschriftarten.

{{% alert color="primary" %}}

Diese Einstellung funktioniert nur für ANSI (Windows-1252) kodierenden Text. Wenn Sie einen Nicht-ANSI -Text in PDF schreiben, müssen immer die entsprechenden Schriftarten eingebettet werden.

{{% /alert %}}

### Einbettung von Systemschriften

Diese Option kann mit der Eigenschaft [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_fontembeddingmode/) aktiviert oder deaktiviert werden. Wenn diese Eigenschaft auf [EmbedNonstandard](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/) gesetzt ist, werden die True Type-Schriftarten "Arial" und "Times New Roman" nicht in ein PDF-Dokument eingebettet. In diesem Fall verlässt sich der Client-Viewer auf die Schriftarten, die auf dem Betriebssystem des Clients installiert sind. Wenn die Eigenschaft **FontEmbeddingMode** auf [EmbedNone](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/) gesetzt ist, betten Aspose.Words keine Schriftarten ein.

Das folgende Beispiel zeigt, wie Sie Aspose.Words festlegen, um das Einbetten von Arial- und Times New Roman-Schriftarten in ein PDF -Dokument zu überspringen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cpp" >}}

Dieser Modus ist am nützlichsten, wenn Sie Ihre Dokumente auf derselben Plattform anzeigen möchten, wobei das genaue Erscheinungsbild der Schriftarten in der Ausgabe PDF erhalten bleibt.

{{% alert color="primary" %}}

Diese Einstellung funktioniert nur für ANSI (Windows-1252) kodierenden Text. Wenn Sie einen Nicht-ANSI -Text in PDF schreiben, muss die entsprechende Schriftart eingebettet sein.

{{% /alert %}}

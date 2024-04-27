---
title: Geben Sie Rendering-Optionen bei der Konvertierung in PDF an
second_title: Aspose.Words für Java
articleTitle: Geben Sie Rendering-Optionen bei der Konvertierung in PDF an
linktitle: Geben Sie Rendering-Optionen bei der Konvertierung in PDF an
description: "Konvertieren Sie ein Dokument in PDF mit erweiterten Optionen. Verwenden Sie PdfSaveOptionen, um das Ergebnis des Speicherns eines Dokuments in das PDF-Format zu ändern. Java."
type: docs
weight: 20
url: /de/java/specify-rendering-options-when-converting-to-pdf/
---

Das PDF-Format ist ein festes Format, das bei Benutzern sehr beliebt ist und von verschiedenen Anwendungen weit unterstützt wird, weil ein PDF-Dokument auf jedem Gerät gleich aussieht. Daher ist die Umwandlung in PDF ein wichtiges Merkmal von Aspose.Words.

PDF ist ein komplexes Format. Es sind mehrere Berechnungsstufen erforderlich, um ein Dokument in PDF umzuwandeln, einschließlich der Layoutberechnung. Da diese Stufen komplexe Berechnungen umfassen, sind sie zeitaufwendig. Auch das PDF-Format ist von selbst ziemlich komplex. Es hat eine bestimmte Dateistruktur, Grafikmodell und Schrifteinbettung. Darüber hinaus verfügt es über eine komplexe Ausgabefunktionalität, wie Dokumentstruktur-Tags, Verschlüsselung, digitale Signaturen und editierbare Formulare.

Aspose.Words Layout-Engine imitiert die Art der Microsoft Word’s Seite Layout-Engine funktioniert. Daher Aspose.Words macht PDF-Ausgabe-Dokumente so nah wie möglich, was Sie sehen können Microsoft Word. Manchmal ist es notwendig, zusätzliche Optionen anzugeben, die das Ergebnis des Speicherns eines Dokuments in das PDF-Format beeinflussen können. Diese Optionen können durch die Verwendung der [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) Klasse, die die Eigenschaften enthält, die bestimmen, wie die PDF-Ausgabe angezeigt wird.

Einige Beispiele der Verwendung **PdfSaveOptions** sind im Folgenden vorgesehen.

{{% alert color="primary" %}}

Derzeit können Sie PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u und PDF/UA-1 Formate speichern. Verwenden Sie die [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) Aufzählung, um die Einhaltung der PDF-Standards zu bestimmen. Beachten Sie, dass mit dem PDF/A-Format eine Ausgabedateigröße größer ist als eine reguläre PDF-Dateigröße.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) und [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) sind als veraltet gekennzeichnet.

Weitere Informationen zu PDF/A finden Sie im nächsten Artikel "Learn Features of Conversion to PDF/A".

{{% /alert %}}

## PDF erstellen Dokument mit füllbaren Formularen

Es ist auch möglich, aus einer Microsoft Word Dokument in Ausgabe PDF, das füllbare Formulare anstelle eines Klartextes hat. Verwenden Sie die [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) Eigenschaft, ein Dokument als PDF mit ausfüllbaren Formularen zu speichern.

Beachten Sie, dass im Gegensatz zu <span notrans="<span notrans=" Microsoft Word"=""></span>,"> das PDF-Format hat eine begrenzte Anzahl von Optionen für editierbare Formulare, wie Textbox, Kombibox und Checkbox. Microsoft Word hat mehr Arten von Formularen, zum Beispiel Kalender Datum Picker. Im Allgemeinen ist es nicht möglich, vollständig nachzuahmen Microsoft Word Verhalten in PDF. Daher kann in einigen komplexen Fällen die PDF-Ausgabe von dem, was Sie in Microsoft Word.

Das nachfolgende Codebeispiel zeigt, wie man ein Dokument als PDF mit füllbaren Formularen mit spezifizierter Jpeg Kompression und Qualität speichert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## Exportieren von Dokumentenstruktur und benutzerdefinierten Eigenschaften

Die [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) Eigenschaft ermöglicht es Ihnen, Dokumentstruktur auf PDF-Ausgabe zu exportieren.

PDF logische Struktureinrichtungen bieten einen Mechanismus, um Informationen über die Dokumenteninhaltsstruktur in eine PDF-Datei aufzunehmen. Aspose.Words erhält Informationen über die Struktur von Microsoft Word Dokumente wie Absätze, Listen, Tabellen, Fußnoten/Endnoten usw.

Das folgende Beispiel zeigt, wie man ein Dokument im PDF-Format speichert und die Dokumentenstruktur bewahrt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words Sie können die benutzerdefinierten Eigenschaften des Dokuments auch auf PDF exportieren, was durch das folgende Beispiel gezeigt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## Ausführen von Bookmarks und Headings in Output PDF

Wenn Sie Bookmarks als Umrisse in Ausgabe PDF exportieren möchten, können Sie die [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel) Eigentum. Diese Eigenschaft gibt die Standardebene in der Dokumentenumriss, bei der Microsoft Word Bookmarks werden angezeigt. Wenn das Dokument Lesezeichen im Kopf/Fuß des Dokuments enthält, können Sie die [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) Eigentum an [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) oder [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) um anzugeben, wie sie im Output PDF exportiert werden. Die Lesezeichen in Kopf- und Fußzeilen werden nicht exportiert, wenn der Wert **HeaderFooterBookmarksExportMode** ist [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE).

Das folgende Codebeispiel zeigt, wie man Lesezeichen aus dem ersten Header/Fuß eines Abschnitts exportiert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

Die Ausgabe PDF dieses Beispiels ist unten dargestellt:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Wann **HeaderFooterBookmarksExportMode** wird eingestellt [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) und das Dokument hat gleichmäßige und ungerade Kopf- und Fußzeilen oder einen anderen Header/Fußstock, Bookmarks werden für die ersten einzigartigen Kopf- und Fußzeilen in einem Abschnitt exportiert.

Sie können auch Überschriften in der Ausgabe PDF exportieren, mit der [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels) Eigentum. Diese Eigenschaft gibt an, wie viele Überschriften in den Dokumentenumriss aufgenommen werden.

Das nachstehende Codebeispiel zeigt, wie man Rubriken mit drei Ebenen exportiert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

Die Ausgabe PDF dieses Beispiels ist unten dargestellt:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Ein Lesezeichen oder eine Überschriftnavigation kann in verschiedenen PDF-Betrachtern unterschiedliche Erscheinungen haben. Darüber hinaus sind in einigen Anwendungen Lesezeichen und Überschriften-Navigation in UI nicht verfügbar.

{{% /alert %}}

## Downsampling Bilder zur Reduzierung der Dokumentengröße

Aspose.Words bietet die Möglichkeit, Bilder herunterzutasten, um die Ausgabe PDF-Größe zu reduzieren, mit der [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions) Eigentum. Downsampling wird standardmäßig in der [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages) Eigentum.

Beachten Sie, dass es auch möglich ist, eine bestimmte Entschließung in der [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) Eigentum oder eine Auflösungsschwelle in der [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold) Eigentum. Im zweiten Fall, wenn die Bildauflösung kleiner als der Schwellwert ist, gilt Downsampling nicht.

Das folgende Codebeispiel zeigt, wie die Auflösung von Bildern in einem Ausgabe-PDF-Dokument geändert werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

Die Auflösung wird nach der realen Bildgröße auf der Seite berechnet.

## Einbetten von Fonts in Adobe PDF Format

Aspose.Words Sie können auch kontrollieren, wie Schriftarten in die resultierenden PDF-Dokumente eingebettet sind. Fonts müssen in ein beliebiges Adobe PDF-Dokument eingebettet werden, um sicherzustellen, dass das Dokument auf jedem Rechner korrekt wiedergegeben werden kann (siehe weitere Details zur Schriftwiedergabe im Abschnitt [Passwort vergessen?](/words/de/java/using-truetype-fonts/)) Standardmäßig, Aspose.Words eine Untermenge von Schriften, die im Dokument verwendet werden, in das generierte PDF einbettet. In diesem Fall nur die glyphs (Zeichen) im Dokument verwendet werden in PDF gespeichert.

### Wann Volle Schriftarten zu verwenden und wann zu Subset

Es gibt eine Möglichkeit, eine Option für Aspose.Words um ganze Schriften einzubetten. Weitere Einzelheiten sowie einige Vorteile und Nachteile jeder Einstellung sind in der nachfolgenden Tabelle beschrieben.

| Schriftarten-Modus einbetten |  Vorteile | Nachteile |
|  :-  |  :-  |  :-  |
|  `Full`  | Nützlich, wenn Sie das resultierende PDF später bearbeiten möchten, indem Sie den Text hinzufügen oder ändern. Alle Schriftarten sind enthalten, daher alle glyphs vorhanden sind. | Da einige Schriftarten groß sind (mehrere Megabytes), kann die Einbettung ohne Untereinstellung zu großen Ausgabedateien führen. |
|  `Subset`  | Subsetting ist nützlich, wenn Sie die Ausgabedateigröße kleiner halten möchten. | <p>Der Benutzer kann den Text nicht vollständig hinzufügen oder bearbeiten, indem er die subsetted Schriftart im Ausgabe-PDF-Dokument verwendet. Das ist, weil nicht alles glyphs der Schrift sind vorhanden.</p>

<p>Werden mehrere PDFs mit subsetierten Schriftarten gespeichert und zusammengebaut, so kann das kombinierte PDF-Dokument eine Schrift mit vielen unnötigen Teilmengen aufweisen.</p>
 |

### Volle Schriften in PDF einbetten

Die [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) Sie können festlegen, wie Aspose.Words schriftarten in ein Ausgabe-PDF-Dokument einbettet.

- Ja. Um vollständige Schriftarten in das Ausgabe-PDF-Dokument einzubetten, set **EmbedFullFonts** bis true
- Ja. Um Schriftarten beim Speichern auf PDF zu unterbinden, setzen **EmbedFullFonts** bis false

Das folgende Beispiel zeigt, wie man vollständige Schriftarten im Ausgabe-PDF-Dokument einbettet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

Das folgende Beispiel zeigt, wie man Aspose.Words zu Subset-Schriften in der Ausgabe PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

Sie können die Template-Datei für diese Beispiele herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## So steuern Sie die Einbettung von Core Fonts und Windows Standard Schriftarten

Core Schriftarten und Windows Standard-Schriften sind die "Standard"-Schriftsätze, die üblicherweise auf der Zielmaschine vorhanden sind oder vom Dokumentleser bereitgestellt werden, daher müssen sie nicht in die Ausgabe PDF eingebettet werden. Durch die Nichteinbettung dieser Schriften können Sie die Größe der ausgestellten PDF-Dokumente verringern und dennoch die Portabilität beibehalten.

Aspose.Words bietet Optionen zur Auswahl, wie Schriftarten in PDF exportiert werden. Sie können entweder Kern- und Standard-Schriften in die Ausgabe PDF einbetten oder die Einbettung überspringen und stattdessen Standard Core PDF-Schriften oder System-Schriften auf der Zielmaschine verwenden. Die Verwendung einer dieser Optionen führt in der Regel zu einer signifikanten Dateigrößenreduktion für PDF-Dokumente, die von Aspose.Words.

- Da diese Optionen sich gegenseitig ausschließen, sollten Sie nur eine zu einer Zeit wählen.
- Beim Speichern mit PDF/A-1 müssen alle verwendeten Schriftarten mit dem PDF-Dokument eingebettet werden. Wenn Sie mit dieser Compliance speichern, [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) Eigentum muss eingestellt werden false und [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) Eigentum muss eingestellt werden [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Einbettung Core Fonts

Die Option zum Einbetten von Core-Schriften kann aktiviert oder deaktiviert werden, indem die [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) Eigentum. Wenn es eingestellt ist true, Die folgenden beliebtesten Schriftarten "True Type" (Base 14 Schriftarten) sind nicht im Ausgabe-PDF-Dokument eingebettet:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Diese Schriften werden durch die entsprechenden Core Type 1 Schriften ersetzt, die beim Öffnen des PDF von einem Lesegerät bereitgestellt werden.

Das nachfolgende Beispiel zeigt, wie Aspose.Words um die Einbettung von Kernfonts zu vermeiden und den Leser mit PDF ersetzen zu lassen Typ 1 Schriftarten:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

Sie können die Template-Datei für dieses Beispiel herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Da PDF-Viewer auf jeder unterstützten Plattform Kernfonts bereitstellen, ist diese Option auch dann sinnvoll, wenn eine größere Dokumentportabilität erforderlich ist. Jedoch können Kern-Fonts anders aussehen als System-Fonts.

{{% alert color="primary" %}}

Diese Einstellung funktioniert nur für ANSI (Windows-1252) Kodierung Text. Das Schreiben eines Nicht-ANSI-Textes an PDF erfordert immer die entsprechenden Schriftarten, die eingebunden werden sollen.

{{% /alert %}}

### Embedding System Fonts

Diese Option kann aktiviert oder deaktiviert werden, indem die [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) Eigentum. Wenn diese Eigenschaft eingestellt wird [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), die "Arial" und "Zeiten Neu Roman" true Schriftarten werden nicht in ein PDF-Dokument eingebettet. In diesem Fall setzt der Client-Viewer auf die Schriften, die auf dem Client-Betriebssystem installiert sind. Wenn **FontEmbeddingMode** Eigentum wird eingestellt [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words keine Schriften einbetten.

Das folgende Beispiel zeigt, wie man Aspose.Words die Einbettung von Arial und Times New Roman Schriften in ein PDF-Dokument zu überspringen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

Dieser Modus ist am nützlichsten, wenn Sie Ihre Dokumente auf derselben Plattform anzeigen möchten und das genaue Erscheinungsbild der Schriftarten im Ausgabe-PDF beibehalten möchten.

{{% alert color="primary" %}}

Diese Einstellung funktioniert nur für ANSI (Windows-1252) Kodierung Text. Das Schreiben eines Nicht-ANSI-Textes an PDF erfordert die Einbindung der entsprechenden Schriftart.

{{% /alert %}}

---
title: Konvertieren Sie Word in C# in PDF
second_title: Aspose.Words für .NET
articleTitle: Konvertieren Sie ein Dokument in PDF
linktitle: Konvertieren Sie ein Dokument in PDF
description: "Konvertieren Sie ein Dokument mit C# in PDF. Konvertieren Sie DOCX in PDF C#. Es werden verschiedene Eingabeformate unterstützt, darunter Word-, OpenOffice-, Bild- und eBook-Formate."
type: docs
weight: 10
url: /de/net/convert-a-document-to-pdf/
timestamp: 2024-09-25-11-08-55
---

Die Fähigkeit, Dokumente einfach und zuverlässig von einem Format in ein anderes zu konvertieren, ist eine Schlüsselfunktion von Aspose.Words. Eines der beliebtesten Formate für die Konvertierung ist PDF – ein Format mit festem Layout, das das ursprüngliche Erscheinungsbild eines Dokuments beim Rendern auf verschiedenen Plattformen beibehält. Der Begriff "Rendering" wird in Aspose.Words verwendet, um den Prozess der Konvertierung eines Dokuments in ein Dateiformat zu beschreiben, das paginiert ist oder das Konzept von Seiten hat.

## Konvertieren Sie ein Word-Dokument in PDF

Die Konvertierung von Word in PDF ist ein ziemlich komplexer Prozess, der mehrere Berechnungsschritte erfordert. Die Aspose.Words-Layout-Engine ahmt die Funktionsweise der Seitenlayout-Engine von Microsoft Word nach und sorgt dafür, dass PDF-Ausgabedokumente so nah wie möglich an dem aussehen, was Sie in Microsoft Word sehen können.

Mit Aspose.Words können Sie ein Dokument programmgesteuert aus Word-Formaten wie DOC oder DOCX in PDF konvertieren, ohne Microsoft Office zu verwenden. In diesem Artikel wird erläutert, wie Sie diese Konvertierung durchführen.

{{% alert color="primary" %}}

Beachten Sie, dass die Anzahl der Seiten in einem Dokument die Konvertierungszeit beeinflusst.

{{% /alert %}}

### Konvertieren Sie DOCX oder DOC in PDF

Die Konvertierung vom DOC- oder DOCX-Dokumentformat in das PDF-Format in Aspose.Words ist sehr einfach und kann mit nur zwei Codezeilen durchgeführt werden, die:

1. Laden Sie Ihr Dokument mithilfe eines seiner Konstruktoren in ein [Document](https://reference.aspose.com/words/de/net/aspose.words/document/)-Objekt, indem Sie den Dokumentnamen mit seiner Formaterweiterung angeben.
1. Rufen Sie eine der [Document.Save](https://reference.aspose.com/words/de/net/aspose.words/document/save/#save/)-Methoden für das **Document**-Objekt auf und geben Sie das gewünschte Ausgabeformat als PDF an, indem Sie einen Dateinamen mit der Erweiterung ".PDF" eingeben.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument mithilfe der [Save](https://reference.aspose.com/words/de/net/aspose.words/document/save/)-Methode von DOCX in PDF konvertieren:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

{{% alert color="primary" %}}

Manchmal ist es notwendig, zusätzliche Optionen anzugeben, die sich auf das Ergebnis der Speicherung eines Dokuments als PDF auswirken können. Diese Optionen können mithilfe der [PdfSaveOptions](https://reference.aspose.com/words/de/net/aspose.words.saving/pdfsaveoptions/)-Klasse angegeben werden, die Eigenschaften enthält, die bestimmen, wie die PDF-Ausgabe angezeigt wird.

Beachten Sie, dass Sie mit derselben Technik jedes Dokument im Flow-Layout-Format in das PDF-Format konvertieren können.

{{% /alert %}}

### Konvertieren Sie in verschiedene PDF-Standards

Aspose.Words stellt die [PDFCompliace](https://reference.aspose.com/words/de/net/aspose.words.saving/pdfcompliance/)-Aufzählung bereit, um die Konvertierung von DOC oder DOCX in verschiedene PDF-Formatstandards (z. B. PDF 1.7, PDF 1.5 usw.) zu unterstützen.

Das folgende Codebeispiel zeigt, wie ein Dokument mithilfe von [PdfSaveOptions](https://reference.aspose.com/words/de/net/aspose.words.saving/pdfsaveoptions/) unter Einhaltung von PDF17 in PDF 1.7 konvertiert wird:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## Konvertieren Sie Bilder in PDF

Die Konvertierung in PDF ist nicht durch Microsoft Word-Dokumentformate eingeschränkt. Jedes von Aspose.Words unterstützte Format, einschließlich programmgesteuert erstellter, kann auch in PDF konvertiert werden. Wir können beispielsweise einseitige Bilder wie JPEG, PNG, BMP, EMF oder WMF sowie mehrseitige Bilder wie TIFF und GIF in PDF konvertieren.

Das folgende Codebeispiel zeigt, wie JPEG- und TIFF-Bilder in PDF konvertiert werden:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

Damit dieser Code funktioniert, müssen Sie Ihrem Projekt Verweise auf Aspose.Words und `System.Drawing` hinzufügen.

## Reduzieren Sie die PDF-Ausgabegröße

Beim Speichern als PDF können Sie angeben, ob Sie die Ausgabe optimieren möchten. Dazu müssen Sie das [OptimizeOutput](https://reference.aspose.com/words/de/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/)-Flag auf true setzen. Anschließend werden überflüssige verschachtelte Leinwände und leere Leinwände entfernt und benachbarte glyph-Dateien mit derselben Formatierung werden verkettet.

Das folgende Codebeispiel zeigt, wie die Ausgabe optimiert wird:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

Die Verwendung der **OptimizeOutput**-Eigenschaft kann sich auf die Genauigkeit der Inhaltsanzeige auswirken.

{{% /alert %}}

## Siehe auch

– Der Artikel [Rendern](/words/de/net/rendering/) für weitere Informationen zu den Formaten mit fester Seite und Flow-Layout
- Der Artikel [Konvertieren in das Fixed-Page-Format](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) für weitere Informationen zum Seitenlayout
– Der Artikel [Geben Sie beim Konvertieren in PDF Rendering-Optionen an](/words/de/net/specify-rendering-options-when-converting-to-pdf/) für weitere Informationen zur Verwendung der `PdfSaveOptions`-Klasse
- Der Artikel [Lernen Sie die Funktionen der Konvertierung in PDF/A und PDF/UA kennen](/words/de/net/learn-features-of-conversion-to-pdf-a-pdf-ua/) beschreibt, welcher PDF-Standard und das relevante ISO für PDF-Standards Aspose.Words unterstützen
- Der Artikel [Welcher PDF-Standard ist besser zu wählen?](/words/de/net/which-pdf-standard-is-better-to-choose/), um zu ermitteln, welche PDF-Standards für welche Fälle sinnvoll sind

- Der Artikel [Arbeiten mit PDF/A oder PDF/UA](/words/de/net/working-with-pdfa-or-pdfua/) beschreibt die Anforderungen an den Dokumentinhalt in den Formaten PDF/A und PDF/UA – hauptsächlich die Anforderungen an die Struktur und Schriftarten

- Der Artikel [Warnungen zu Barrierefreiheitsproblemen beim Speichern in PDF/A und PDF/UA](/words/de/net/warnings-when-saving-to-pdfa-and-pdfua/) beschreibt, welche Anforderungen an die Barrierefreiheit von Inhalten PDF/A und PDF/UA stellen

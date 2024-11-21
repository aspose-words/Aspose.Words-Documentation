---
title: Konvertieren Sie ein Dokument in Python in PDF
second_title: Aspose.Words für Python via .NET
articleTitle: Konvertieren Sie ein Dokument in PDF
linktitle: Konvertieren Sie ein Dokument in PDF
description: "Konvertieren Sie ein Dokument mit Python in PDF. Es werden verschiedene Eingabeformate unterstützt, darunter Word-, OpenOffice-, Bild- und eBook-Formate."
type: docs
weight: 10
url: /de/python-net/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
---

Die Fähigkeit, Dokumente einfach und zuverlässig von einem Format in ein anderes zu konvertieren, ist eine Schlüsselfunktion von Aspose.Words. Eines der beliebtesten Formate für die Konvertierung ist PDF – ein Format mit festem Layout, das das ursprüngliche Erscheinungsbild eines Dokuments beim Rendern auf verschiedenen Plattformen beibehält. Der Begriff "Rendering" wird in Aspose.Words verwendet, um den Prozess der Konvertierung eines Dokuments in ein Dateiformat zu beschreiben, das paginiert ist oder das Konzept von Seiten hat.

## Konvertieren Sie ein Word-Dokument in PDF {#convert-a-word-document-to-pdf}

Die Konvertierung von Word in PDF ist ein ziemlich komplexer Prozess, der mehrere Berechnungsschritte erfordert. Die Aspose.Words-Layout-Engine ahmt die Funktionsweise der Seitenlayout-Engine von Microsoft Word nach und sorgt dafür, dass PDF-Ausgabedokumente so nah wie möglich an dem aussehen, was Sie in Microsoft Word sehen können.

Mit Aspose.Words können Sie ein Dokument programmgesteuert aus Word-Formaten wie DOC oder DOCX in PDF konvertieren, ohne Microsoft Office zu verwenden. In diesem Artikel wird erläutert, wie Sie diese Konvertierung durchführen.

{{% alert color="primary" %}}

Beachten Sie, dass die Anzahl der Seiten in einem Dokument die Konvertierungszeit beeinflusst.

{{% /alert %}}

### Konvertieren Sie DOC oder DOCX in PDF {#convert-doc-or-docx-to-pdf}

Die Konvertierung vom DOC- oder DOCX-Dokumentformat in das PDF-Format in Aspose.Words ist sehr einfach und kann mit nur zwei Codezeilen durchgeführt werden, die:

1. Laden Sie Ihr Dokument mithilfe eines seiner Konstruktoren in ein [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)-Objekt, indem Sie den Dokumentnamen mit seiner Formaterweiterung angeben.
1. Rufen Sie eine der [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/)-Methoden für das [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)-Objekt auf und geben Sie das gewünschte Ausgabeformat als PDF an, indem Sie einen Dateinamen mit der Erweiterung ".PDF" eingeben.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument mithilfe der [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/#str)-Methode von DOCX in PDF konvertieren:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "docx-to-pdf.py" >}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

{{% alert color="primary" %}}

Manchmal ist es notwendig, zusätzliche Optionen anzugeben, die sich auf das Ergebnis der Speicherung eines Dokuments als PDF auswirken können. Diese Optionen können mithilfe der [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/)-Klasse angegeben werden, die Eigenschaften enthält, die bestimmen, wie die PDF-Ausgabe angezeigt wird.

Beachten Sie, dass Sie mit derselben Technik jedes Dokument im Flow-Layout-Format in das PDF-Format konvertieren können.

{{% /alert %}}

### Konvertieren Sie in verschiedene PDF-Standards {#convert-to-various-pdf-standards}

Aspose.Words stellt die [PdfCompliace](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/)-Enumeration zur Unterstützung der Konvertierung von DOC oder DOCX in verschiedene PDF-Formatstandards (z. B. PDF 1.7, PDF 1.5 usw.) bereit.

Das folgende Codebeispiel zeigt, wie ein Dokument mithilfe von [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) und [PDF17](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf17)-Konformität in PDF 1.7 konvertiert wird:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "conversion-to-pdf17.py" >}}

## Konvertieren Sie Bilder in PDF

Die Konvertierung in PDF ist nicht durch Microsoft Word-Dokumentformate eingeschränkt. Jedes von Aspose.Words unterstützte Format, auch programmgesteuert erstellte, kann ebenfalls in PDF konvertiert werden. Wir können beispielsweise einseitige Bilder wie JPEG, PNG, BMP, EMF oder WMF sowie mehrseitige Bilder wie TIFF und GIF in PDF konvertieren.

Das folgende Codebeispiel zeigt, wie JPEG- und TIFF-Bilder in PDF konvertiert werden:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "image-to-pdf.py" >}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "convert-image-to-pdf.py" >}}

Damit dieser Code funktioniert, müssen Sie Ihrem Projekt Verweise auf Aspose.Words und `aspose.pydrawing` hinzufügen.

## Reduzieren Sie die PDF-Ausgabegröße

Beim Speichern als PDF können Sie angeben, ob Sie die Ausgabe optimieren möchten. Dazu müssen Sie das [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/)-Flag auf true setzen. Anschließend werden überflüssige verschachtelte Leinwände und leere Leinwände entfernt und benachbarte glyph-Dateien mit derselben Formatierung werden verkettet.

{{% alert color="primary" %}}

Die Verwendung der **OptimizeOutput**-Eigenschaft kann sich auf die Genauigkeit der Inhaltsanzeige auswirken.

{{% /alert %}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "optimize-output.py" >}}

## Reduzieren Sie die PDF-Ausgabegröße

Beim Speichern als PDF können Sie angeben, ob Sie die Ausgabe optimieren möchten. Dazu müssen Sie das [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/)-Flag auf true setzen. Anschließend werden überflüssige verschachtelte Leinwände und leere Leinwände entfernt und benachbarte glyph-Dateien mit derselben Formatierung werden verkettet.

{{% alert color="primary" %}}

Die Verwendung der **OptimizeOutput**-Eigenschaft kann sich auf die Genauigkeit der Inhaltsanzeige auswirken.

{{% /alert %}}

## Siehe auch

– Der Artikel [Rendern](/words/de/python-net/rendering/) für weitere Informationen zu den Formaten mit fester Seite und Flow-Layout
- Der Artikel [Konvertieren in das Fixed-Page-Format](/words/python-net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) für weitere Informationen zum Seitenlayout
– Der Artikel [Geben Sie beim Konvertieren in PDF Rendering-Optionen an](/words/de/python-net/specify-rendering-options-when-converting-to-pdf/) für weitere Informationen zur Verwendung der [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/)-Klasse

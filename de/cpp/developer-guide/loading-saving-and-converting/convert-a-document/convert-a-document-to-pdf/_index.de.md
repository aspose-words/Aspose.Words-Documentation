---
title: Konvertieren Sie ein Dokument in PDF in C++
second_title: Aspose.Words für C++
articleTitle: Konvertieren eines Dokuments in PDF
linktitle: Konvertieren eines Dokuments in PDF
description: "Konvertieren Sie ein Dokument mit C++ in PDF. Es werden verschiedene Eingabeformate unterstützt, darunter Word-, OpenOffice -, Bild- und eBook -Formate."
type: docs
weight: 10
url: /de/cpp/convert-a-document-to-pdf/
timestamp: 2024-10-21-08-52-03
---

Die Fähigkeit, Dokumente einfach und zuverlässig von einem Format in ein anderes zu konvertieren, ist ein Schlüsselmerkmal von Aspose.Words. Eines der beliebtesten Formate für die Konvertierung ist PDF – ein Format mit festem Layout, das das ursprüngliche Erscheinungsbild eines Dokuments während des Renderns auf verschiedenen Plattformen beibehält. Der Begriff "Rendern" wird in Aspose.Words verwendet, um den Prozess der Konvertierung eines Dokuments in ein Dateiformat zu beschreiben, das paginiert ist oder das Konzept von Seiten hat.

## Konvertieren Sie ein Word-Dokument in PDF {#convert-a-word-document-to-pdf}

Die Konvertierung von Word nach PDF ist ein ziemlich komplexer Prozess, der mehrere Berechnungsschritte erfordert. Aspose.Words Layout-Engine ahmt die Funktionsweise der Seitenlayout-Engine von Microsoft Word nach, sodass PDF Ausgabedokumente so nah wie möglich an dem aussehen, was Sie in Microsoft Word sehen können.

Mit Aspose.Words können Sie ein Dokument programmgesteuert vom Format DOC oder DOCX in PDF konvertieren, ohne Microsoft Office zu verwenden. In diesem Artikel wird erläutert, wie Sie diese Konvertierung durchführen.

{{% alert color="primary" %}}

Beachten Sie, dass die Anzahl der Seiten in einem Dokument die Konvertierungszeit beeinflusst.

{{% /alert %}}

### Umwandlung von DOCX oder DOC in PDF {#converting-doc-or-docx-to-pdf}

Die Konvertierung vom DOC - oder DOCX -Dokumentformat in das PDF -Format in Aspose.Words ist sehr einfach und kann mit nur zwei Codezeilen durchgeführt werden, die:

1. Laden Sie Ihr Dokument mit einem seiner Konstruktoren in ein [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) -Objekt, indem Sie den Dokumentnamen mit seiner Formaterweiterung angeben.
1. Rufen Sie eine der [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) -Methoden für das **Document**-Objekt auf und geben Sie das gewünschte Ausgabeformat als PDF an, indem Sie einen Dateinamen mit dem "eingeben.PDF" Erweiterung.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument mit der Methode `Save` von DOCX in PDF konvertieren:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

Manchmal ist es notwendig, zusätzliche Optionen anzugeben, die sich auf das Ergebnis des Speicherns eines Dokuments als PDF auswirken können. Diese Optionen können durch die Verwendung der Klasse [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) angegeben werden, die Eigenschaften enthält, die bestimmen, wie die Ausgabe von PDF angezeigt wird.

Beachten Sie, dass Sie mit derselben Technik jedes Dokument im Flow-Layout-Format in das PDF -Format konvertieren können.

{{% /alert %}}

### Konvertierung in verschiedene PDF Standards {#converting-to-various-pdf-standards}

Aspose.Words stellt die [PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/)-Aufzählung bereit, um die Konvertierung von DOC oder DOCX in verschiedene PDF-Formatstandards (z. B.) zu unterstützen PDF 1.7, PDF 1.5, usw.).

Das folgende Codebeispiel zeigt, wie Sie ein Dokument mit [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) unter Einhaltung von PDF17 in PDF 1.7 konvertieren:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## Bilder in PDF {#convert-an-image-to-pdf} umwandeln

Die Konvertierung in PDF ist nicht durch Microsoft Word-Dokumentformate eingeschränkt. Jedes von Aspose.Words unterstützte Format, einschließlich programmgesteuert erstellter Formate, kann auch in PDF konvertiert werden. Zum Beispiel können wir einseitige Bilder konvertieren, wie zum Beispiel JPEG, PNG, BMP, EMF, oder WMF sowie mehrseitige Bilder wie TIFF und GIF bis PDF.

Das folgende Codebeispiel zeigt, wie JPEG - und TIFF -Bilder in PDF konvertiert werden:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

Damit dieser Code funktioniert, müssen Sie Ihrem Projekt Verweise auf Aspose.Words und `System.Drawing` hinzufügen.

## Siehe auch

- Beitrag [Rendering](/words/cpp/rendering/) weitere Informationen zu den Formaten Fixed Page und Flow Layout
- Beitrag [Konvertierung in das Festseitenformat](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) weitere Informationen zum Seitenlayout
- Beitrag [Geben Sie die Renderoptionen beim Konvertieren in PDF an](/words/cpp/specify-rendering-options-when-converting-to-pdf/) weitere Informationen zur Verwendung der Klasse `PdfSaveOptions`

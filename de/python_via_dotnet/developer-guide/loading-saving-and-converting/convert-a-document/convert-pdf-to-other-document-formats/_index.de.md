---
title: Konvertieren Sie PDF in andere Dokumentformate
second_title: Aspose.Words für Python via .NET
articleTitle: Konvertieren Sie PDF in andere Dokumentformate
linktitle: Konvertieren Sie PDF in andere Dokumentformate
type: docs
description: "Konvertieren Sie PDF-Dateien mithilfe von `Python.Words` in Word-Formate wie DOCX, DOC, Bildformate wie JPG oder PNG oder andere von Aspose unterstützte Formate."
keywords: convert pdf to other formats python
weight: 45
url: /de/python-net/convert-pdf-to-other-document-formats/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words kann sogar ein so komplexes Format wie PDF laden. Dies eröffnet neue Möglichkeiten: Es ist möglich, PDF in Word oder andere Formate zu konvertieren, die den Anwendern bei der Lösung vieler Anwendungsprobleme einen großen Vorsprung verschaffen.

## Konvertieren Sie PDF in andere Formate {#convert-pdf-to-other-formats}

Die beliebteste Konvertierung von PDF ist die Konvertierung in Microsoft Word-Formate wie DOCX, DOC sowie Bildformate wie JPG oder PNG. Vor diesem Hintergrund erfolgt die Konvertierung eines Dokuments von einem Format in ein anderes auf die gewohnte Weise.

Das folgende Codebeispiel zeigt, wie man ein Dokument von PDF in DOCX konvertiert:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## Geben Sie beim Importieren von PDF-{#specify-load-options-when-importing-pdf} Ladeoptionen an

Aspose.Words stellt Ihnen die [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/)-Klasse zur Verfügung, die eine genauere Kontrolle darüber ermöglicht, wie PDF-Dokumente geladen werden.

Die meisten Eigenschaften erben oder überladen Eigenschaften, die bereits in der [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/)-Klasse vorhanden sind. Darüber hinaus werden für das PDF-Format eine Reihe von Eigenschaften angegeben. Beispielsweise können Sie mit den [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/)- und [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/)-Eigenschaften den Seitenbereich definieren, der aus einem PDF-Dokument geladen werden soll, und mit den [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/)-Eigenschaften steuern, ob Bilder beim Laden von PDF übersprungen werden sollen. Ein weiterer unterstützter Parameter ist der [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), der für passwortgeschützte Dokumente bereitgestellt werden muss.

## Unterstützte PDF-Inhalte {#supported-pdf-content}

Das PDF2Word-Plugin unterstützt derzeit die folgenden Datentypen:

* Textabsätze
* Bilder
* Tabellen
* Listen
* Kopf-und Fußzeilen
* Fußnoten
* Seitenzahlen
* Von rechts nach links geschriebener Text (mit einigen Einschränkungen)
* Durchsuchbare PDFs (Bilder auf der Vorderseite werden zugunsten von Hintergrundtext entfernt)

## Geplante Funktionen {#planned-features}

Einige Funktionen befinden sich noch in der frühen Entwicklung oder sind in der Entwicklungs-Roadmap enthalten:

* Inhaltsverzeichnis
* OCR für durchsuchbare und nicht durchsuchbare PDFs
* Fortschrittsbericht
* Mehrspaltiger Text
* Mathematische Formeln
* Weitere automatische Felder (außer `PAGE` und NUMPAGES)

## Ausnahmen beim Laden von PDFs

Bei der Konvertierung eines PDF-Dokuments kann eine der folgenden Ausnahmen auftreten:

|  Ausnahme |  Beschreibung |
|  --------------------------------  |  ------------------------------------------------------------  |
|   *FileLoadException*               |  Eine PDF-Datei kann aus irgendeinem Grund nicht verarbeitet werden.<br /> {{% alert color="primary" %}}Sie können das Problem mithilfe der [Technische Unterstützung](/words/de/python-net/technical-support/).{{% /alert %}}-Datei dem Entwicklungsteam zur detaillierten Untersuchung melden |
|   *DrmProtectedFileException*       |  Eine PDF-Datei ist durch Adobe DRM geschützt und kann nicht von Pdf2Word dekodiert werden |
|   *PasswordProtectedFileException*  |  Für ein passwortgeschütztes PDF muss das korrekte Passwort angegeben werden |



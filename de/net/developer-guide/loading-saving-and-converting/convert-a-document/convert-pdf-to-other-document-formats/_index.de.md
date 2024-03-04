---
title: Konvertieren Sie PDF in andere Dokumentformate in C#
second_title: Aspose.Words für .NET
articleTitle: Konvertieren Sie PDF in andere Dokumentformate
linktitle: Konvertieren Sie PDF in andere Dokumentformate
type: docs
description: "Konvertieren Sie PDF-Dateien mithilfe von C# in Word-Formate wie DOCX, DOC, Bildformate wie JPG oder PNG oder andere von Aspose.Words unterstützte Formate."
keywords: convert pdf to other formats c#
weight: 45
url: /de/net/convert-pdf-to-other-document-formats/
---

Aspose.Words kann sogar ein so komplexes Format wie PDF laden. Dies eröffnet neue Möglichkeiten: Es ist möglich, PDF in Word oder andere Formate zu konvertieren, die den Anwendern bei der Lösung vieler Anwendungsprobleme einen großen Vorsprung verschaffen.

## Voraussetzungen

* Verweis auf das Aspose.Words-Paket ***ODER*** zu Aspose.Words.Pdf2Word.dll hinzugefügt.
* Mindestens .NET Framework 4.6.1 oder .NET Standard 2.0. Durch die Kompatibilität mit .NET Standard werden auch Ziele wie .NET Core 2.x oder 3.0, .NET 5 und Xamarin unterstützt.

## Konvertieren Sie PDF in verschiedene {#convert-pdf-to-other-formats}-Formate

Die beliebteste Konvertierung von PDF ist die Konvertierung in Microsoft Word-Formate wie DOCX, DOC sowie Bildformate wie JPG oder PNG. Vor diesem Hintergrund erfolgt die Konvertierung eines Dokuments von einem Format in ein anderes auf die gewohnte Weise.

Das folgende Codebeispiel zeigt, wie man ein Dokument von PDF in DOCX konvertiert:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToDocx.cs" >}}

## Geben Sie beim Importieren von PDF-{#specify-load-options-when-importing-pdf} Ladeoptionen an

Aspose.Words stellt Ihnen die [PdfLoadOptions](https://reference.aspose.com/words/de/net/aspose.words.loading/pdfloadoptions/)-Klasse zur Verfügung, die eine genauere Kontrolle darüber ermöglicht, wie PDF-Dokumente geladen werden.

Die meisten Eigenschaften erben oder überladen Eigenschaften, die bereits in der `LoadOptions`-Klasse vorhanden sind. Darüber hinaus werden für das PDF-Format eine Reihe von Eigenschaften angegeben. Beispielsweise können Sie die [PageCount](https://reference.aspose.com/words/de/net/aspose.words.loading/pdfloadoptions/pagecount/)- und [PageIndex](https://reference.aspose.com/words/de/net/aspose.words.loading/pdfloadoptions/pageindex/)-Eigenschaften verwenden, um den Seitenbereich zu definieren, der aus einem PDF-Dokument geladen werden soll, und die [SkipPdfImages](https://reference.aspose.com/words/de/net/aspose.words.loading/pdfloadoptions/skippdfimages/)-Eigenschaften, um zu steuern, ob Bilder beim Laden von PDF übersprungen werden sollen. Ein weiterer unterstützter Parameter ist der [Password](https://reference.aspose.com/words/de/net/aspose.words.loading/loadoptions/password/), der für [passwortgeschützte Dokumente](/words/net/protect-documents-and-parts-of-documents/) bereitgestellt werden muss.

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

## Zukünftige Funktionen {#planned-features}

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
|  `FileLoadException`               |  Eine PDF-Datei kann aus irgendeinem Grund nicht verarbeitet werden.<br /> {{% alert color="primary" %}}Sie können das Problem mithilfe der [Technische Unterstützung](/words/de/net/technical-support/).{{% /alert %}}-Datei dem Entwicklungsteam zur detaillierten Untersuchung melden |
|  `DrmProtectedFileException`       |  Eine PDF-Datei ist durch Adobe DRM geschützt und kann nicht von Pdf2Word dekodiert werden |
|  `PasswordProtectedFileException`  |  Für ein passwortgeschütztes PDF muss das korrekte Passwort angegeben werden |

## Siehe auch

* [Nuget-Referenz auf Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)


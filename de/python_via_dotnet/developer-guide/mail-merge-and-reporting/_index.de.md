---
title: Mail Merge und Berichterstattung in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Mail Merge und Berichterstattung
linktitle: Mail Merge und Berichterstattung
type: docs
description: "Mail Merge ist eine beliebte Funktion zum schnellen Erstellen von Dokumenten mit Python. Aspose.Words für Python via .NET übernimmt die Standardfunktionalität Mail Merge und entwickelt sie um viele Schritte weiter, wodurch sie zu einer vollwertigen Berichtslösung wird, mit der Sie noch komplexere Dokumente wie Berichte, Kataloge, Inventare und Rechnungen erstellen können."
keywords: "how to use Mail Merge python"
weight: 30
url: /de/python-net/mail-merge-and-reporting/
timestamp: 2024-01-27-14-07-04
---

Mail Merge ist eine beliebte Funktion zum schnellen und einfachen Erstellen von Dokumenten wie Briefen, Etiketten und Umschlägen. Mit Aspose.Words können Sie Dokumente aus Vorlagen mit Mail Merge-Feldern generieren.

Ein Mail Merge-Feld ist ein Feld, das Sie in eine mail merge-Vorlage einfügen können, um bestimmte Werte aus einem Datenquellendatensatz in Ausgabedokumente aufzunehmen. Sie können beispielsweise ein Seriendruckfeld in eine E-Mail-Vorlage einfügen, sodass die Begrüßung den Vornamen des Empfängers anstelle eines generischen "Hallo!". Aspose.Words fügt Daten aus einer externen Quelle, z. B. einer Datenbank oder Datei, in diese Felder ein und formatiert sie. Das resultierende Dokument wird im angegebenen Ordner gespeichert.

Aspose.Words übernimmt die Standardfunktionalität Mail Merge und entwickelt sie um viele Schritte weiter, um daraus eine vollwertige Berichtslösung zu machen, mit der Sie noch komplexere Dokumente wie Berichte, Kataloge, Inventare und Rechnungen erstellen können. Hier sind einige Vorteile der Aspose.Words Reporting-Lösung:

- Berichte in Microsoft Word mit Standardfeldern von Mail Merge entwerfen
- Definieren Sie Bereiche im Dokument, die wachsen, z. B. detaillierte Bestellzeilen (wird derzeit in der Python -Version nicht unterstützt)
- Bilder während einer mail merge einfügen
- Führen Sie benutzerdefinierte Logik aus, steuern Sie die Formatierung oder fügen Sie komplexe Inhalte mit Mail Merge -Ereignishandlern ein (wird derzeit in der Python -Version nicht unterstützt)
- Dokumente mit Daten aus beliebigen Datenquellen ausfüllen (wird derzeit in der Python -Version nicht unterstützt, nur Arrays-Datenquellen werden unterstützt)

{{% alert color="primary" %}}

Das Modul [aspose.words.mailmerging](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/) wird verwendet, um mit Seriendruck zu arbeiten.

{{% /alert %}}

## Mechanismus und Hauptkomponenten einer Mail Merge Operation {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words bietet die Möglichkeit, Dokumente in verschiedenen [supported formats](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) zu laden, und ermöglicht es Benutzern dann, einen Mail Merge-Vorgang auszuführen.

Normalerweise können Sie in einem geladenen Dokument Seriendruckfelder speichern, z. B. ein Dokument im Format DOCX. Es gibt jedoch Formate, in denen solche Felder nicht gespeichert werden, z. B. TXT. Wenn Aspose.Words das Laden solcher Dateiformate unterstützt, können Sie die Seriendruckfelder direkt zum Dokumentmodell hinzufügen, das Dokument in einem praktischen [supported format](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) speichern und den Vorgang Mail Merge ausführen.

Die Operation Mail Merge führt Ihre *mail merge template* und Ihre *data source* zusammen, um individuelle *merged documents* zu generieren.

## Was ist eine Mail Merge Vorlage {#what-is-a-mail-merge-template}

Das Ziel der Anwendung einer mail merge-Operation mithilfe einer Seriendruckvorlage besteht darin, den Prozess der Erstellung eines Dokuments zu vereinfachen.

Es gibt verschiedene Möglichkeiten, eine Zusammenführungsvorlage zu erstellen und zu gestalten. Sie können Microsoft Word verwenden, und die Zusammenführungsvorlage muss keine Microsoft Word -Vorlage sein, dh ein Dokument im Format DOT oder DOTX, es kann ein reguläres Dokument im Format DOC oder DOCX sein. Sie müssen einige spezielle Felder, sogenannte Seriendruckfelder, an Stellen in diese Vorlage einfügen, an denen Daten aus Ihrer Datenquelle später eingefügt werden sollen. Oder Sie können programmgesteuert eine Zusammenführungsvorlage mit der Klasse [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) erstellen.

Die Seriendruckvorlage enthält den Haupttext, der in allen Ausgabedokumenten gleich sein sollte, nachdem Sie den Vorgang Mail Merge ausgeführt haben. Sie können ein beliebiges Format für Ihre Vorlage verwenden, wenn Sie Seriendruckfelder hinzufügen können. Alle Seriendruckfelder in Ihrer Vorlage werden während des Vorgangs Mail Merge aus Ihrer Datenquelle ausgefüllt.

## Datenquellentypen für einen Mail Merge Vorgang {#data-source-types-for-a-mail-merge-operation}

Derzeit akzeptiert Aspose.Words für Python via .NET Mail Merge nur ein Array von Werten als Datenquelle. Andere Typen werden in den zukünftigen Versionen hinzugefügt.

Das folgende Codebeispiel zeigt, wie Sie eine einfache Vorlage erstellen und mit der Mail Merge -Funktionalität mit Daten füllen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-SimpleMailMerge.py" >}}


## Zusammengeführte Dokumente eines Mail Merge Vorgangs {#merged-documents-of-a-mail-merge-operation}

Ein zusammengeführtes Dokument ist das Ergebnis des Vorgangs Mail Merge, wenn Sie die Vorlage mit der Datenquelle zusammenführen. Alle Seriendruckfelder im Seriendruckdokument werden durch tatsächliche Daten aus Ihrer Datenquelle ersetzt.

Die folgende Abbildung zeigt ein Beispiel für die Zusammenführungsvorlage mit zusammengeführten Feldern vor dem Ausführen des Vorgangs Mail Merge.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

Die folgende Abbildung zeigt ein Beispiel für das zusammengeführte Ausgabedokument als Ergebnis der Ausführung der Operation Mail Merge.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## Siehe auch

- [Arbeiten mit Mail Merge Vorlagen in Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)

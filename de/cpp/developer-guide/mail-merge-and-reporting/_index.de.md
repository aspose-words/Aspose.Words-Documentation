---
title: Mail Merge und Berichterstattung in C++
second_title: Aspose.Words für C++
articleTitle: Mail Merge und Berichterstattung
linktitle: Mail Merge und Berichterstattung
type: docs
description: "Mail Merge ist eine beliebte Funktion zum schnellen Erstellen von Dokumenten mit C++. Aspose.Words für C++ nimmt die Standardfunktionalität mail merge und bringt sie um viele Schritte voran und verwandelt sie in eine vollwertige Berichtslösung, mit der Sie noch komplexere Dokumente wie Berichte, Kataloge, Inventare und Rechnungen erstellen können."
keywords: "how to use mail merge c++"
weight: 30
url: /de/cpp/mail-merge-and-reporting/
---

Mail Merge ist eine beliebte Funktion zum schnellen und einfachen Erstellen von Dokumenten wie Briefen, Etiketten und Umschlägen. Mit Aspose.Words können Sie Dokumente aus Vorlagen mit mail merge-Feldern generieren.

Ein mail merge-Feld ist ein Feld, das Sie in eine mail merge-Vorlage einfügen können, um bestimmte Werte aus einem Datenquellendatensatz in Ausgabedokumente aufzunehmen. Sie können beispielsweise ein Seriendruckfeld in eine E-Mail-Vorlage einfügen, sodass die Begrüßung den Vornamen des Empfängers anstelle eines generischen "Hallo!". Aspose.Words fügt Daten aus einer externen Quelle, z. B. einer Datenbank oder Datei, in diese Felder ein und formatiert sie. Das resultierende Dokument wird im angegebenen Ordner gespeichert.

Aspose.Words übernimmt die Standardfunktionalität mail merge und entwickelt sie um viele Schritte weiter, um daraus eine vollwertige Berichtslösung zu machen, mit der Sie noch komplexere Dokumente wie Berichte, Kataloge, Inventare und Rechnungen erstellen können. Hier sind einige Vorteile der Aspose.Words Reporting-Lösung:

- Berichte in Microsoft Word mit Standardfeldern von mail merge entwerfen
- Definieren Sie Bereiche im Dokument, die wachsen, z. B. detaillierte Auftragszeilen
- Bilder während einer mail merge einfügen
- Führen Sie beliebige benutzerdefinierte Logik aus, steuern Sie die Formatierung oder fügen Sie komplexe Inhalte mit mail merge -Ereignishandlern ein
- Dokumente mit Daten aus beliebigen Datenquellen ausfüllen

{{% alert color="primary" %}}

Der Namespace [Aspose.Words.MailMerging](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/) wird verwendet, um mit Seriendruck zu arbeiten.

{{% /alert %}}

## Mechanismus und Hauptkomponenten von Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words bietet die Möglichkeit, Dokumente in verschiedenen [supported formats](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) zu laden, und ermöglicht es Benutzern dann, einen mail merge-Vorgang auszuführen.

Normalerweise können Sie in einem geladenen Dokument Seriendruckfelder speichern, z. B. ein Dokument im Format DOCX. Es gibt jedoch Formate, in denen solche Felder nicht gespeichert werden, z. B. TXT. Wenn Aspose.Words das Laden solcher Dateiformate unterstützt, können Sie die Seriendruckfelder direkt zum Dokumentmodell hinzufügen, das Dokument in einem praktischen [supported format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) speichern und den Vorgang mail merge ausführen.

Die Operation mail merge führt Ihre *mail merge template* und Ihre *data source* zusammen, um individuelle *merged documents* zu generieren.

## Was ist eine Mail Merge Vorlage {#what-is-a-mail-merge-template}

Das Ziel der Anwendung einer mail merge-Operation mithilfe einer Seriendruckvorlage besteht darin, den Prozess der Erstellung eines Dokuments zu vereinfachen.

Es gibt verschiedene Möglichkeiten, eine Zusammenführungsvorlage zu erstellen und zu gestalten. Sie können Microsoft Word verwenden, und die Zusammenführungsvorlage muss keine Microsoft Word -Vorlage sein, dh ein Dokument im Format DOT oder DOTX, es kann ein reguläres Dokument im Format DOC oder DOCX sein. Sie müssen einige spezielle Felder, sogenannte Seriendruckfelder, an Stellen in diese Vorlage einfügen, an denen Daten aus Ihrer Datenquelle später eingefügt werden sollen. Oder Sie können programmgesteuert eine Zusammenführungsvorlage mit der Klasse [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) erstellen.

Die Seriendruckvorlage enthält den Haupttext, der in allen Ausgabedokumenten gleich sein sollte, nachdem Sie den Vorgang mail merge ausgeführt haben. Sie können ein beliebiges Format für Ihre Vorlage verwenden, wenn Sie Seriendruckfelder hinzufügen können. Alle Seriendruckfelder in Ihrer Vorlage werden während des Vorgangs mail merge aus Ihrer Datenquelle ausgefüllt.


## Siehe auch

- [Arbeiten mit mail merge -Vorlagen in Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)

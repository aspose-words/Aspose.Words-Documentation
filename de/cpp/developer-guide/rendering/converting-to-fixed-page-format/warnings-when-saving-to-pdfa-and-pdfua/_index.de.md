---
title: Warnungen beim Speichern auf PDF/A und PDF/UA
second_title: Aspose.Words für C++
articleTitle: Warnungen vor Barrierefreiheitsproblemen beim Speichern in PDF/A und PDF/UA
linktitle: Warnungen vor Barrierefreiheitsproblemen beim Speichern in PDF/A und PDF/UA
description: "PDF/A und PDF/UA stellen Barrierefreiheitsanforderungen in Bezug auf Dokumentinhalte. Beim Speichern in PDF/A oder PDF/UA in C++ und das Problem verstößt gegen die Compliance, wird eine Warnung ausgegeben."
type: docs
weight: 39
url: /de/cpp/warnings-when-saving-to-pdfa-and-pdfua/
---

Die Formate PDF/A und PDF/UA stellen eine Reihe von Barrierefreiheitsanforderungen in Bezug auf Dokumentinhalte, die bei der automatischen Konvertierung von Word nach PDF nicht erfüllt werden können. Diese Anforderungen sind im vorherigen Artikel *"Working with PDF/A or PDF/UA"* beschrieben. Jetzt werden Warnungen für einige dieser Probleme ausgegeben.

Warnungen werden ausgegeben, wenn in einem der Formate PDF/A oder PDF/UA gespeichert wird und das Problem gegen die Compliance verstößt. Beispielsweise wird die Warnung vor fehlendem Dokumenttitel beim Speichern in PDF/UA ausgegeben und beim Speichern in PDF/A nicht.

Alle Warnungen lauten **WarningType.MinorFormattingLoss** und **WarningSource.Pdf**. Hier ist eine Liste der neuen Beschreibungswarnungswerte:

| Beschreibung Warnwert | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "Dokumenttitel fehlt. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument ist nicht vollständig kompatibel." |  | {{< emoticons/tick >}} |
| "Das Dokument enthält Überschriften, deren Ebenen nicht aufeinander folgen. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument ist nicht vollständig kompatibel." |  | {{< emoticons/tick >}} |
| "Das Dokument enthält Formen ohne Alternativtext. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument ist nicht vollständig kompatibel." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Das Dokument enthält Tabellen ohne Alternativtext. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument ist nicht vollständig kompatibel." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Das Dokument enthält Hyperlinks ohne Alternativtext. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument ist nicht vollständig kompatibel." |  | {{< emoticons/tick >}} |
| "Es gibt Tabellen ohne Kopfzeile / Spalte im Dokument. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument ist nicht vollständig kompatibel." |  | {{< emoticons/tick >}} |
| "Das Dokument enthält Unicode PUA -Zeichen. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument ist nicht vollständig kompatibel." | {{< emoticons/tick >}} |  |
| "Das Dokument enthält .notdef Glyphen. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument ist nicht vollständig kompatibel." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
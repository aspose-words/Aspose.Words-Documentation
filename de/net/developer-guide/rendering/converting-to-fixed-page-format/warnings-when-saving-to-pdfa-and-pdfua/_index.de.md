---
title: Warnungen beim Speichern in PDF/A und PDF/UA
second_title: Aspose.Words für .NET
articleTitle: Warnungen zu Barrierefreiheitsproblemen beim Speichern in PDF/A und PDF/UA
linktitle: Warnungen zu Barrierefreiheitsproblemen beim Speichern in PDF/A und PDF/UA
description: "PDF/A und PDF/UA stellen Barrierefreiheitsanforderungen in Bezug auf Dokumentinhalte. Beim Speichern in PDF/A oder PDF/UA in C# und das Problem verstößt gegen die Compliance, wird eine Warnung ausgegeben."
type: docs
weight: 29
url: /de/net/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

Die Formate PDF/A und PDF/UA stellen eine Reihe von Barrierefreiheitsanforderungen in Bezug auf Dokumentinhalte, die bei der automatischen Konvertierung von Word in PDF nicht erfüllt werden können. Diese Anforderungen werden im vorherigen Artikel "Arbeiten mit PDF/A oder PDF/UA"* beschrieben. Für einige dieser Probleme werden nun Warnungen ausgegeben.

Beim Speichern in einem der PDF/A- oder PDF/UA-Formate werden Warnungen ausgegeben und das Problem verstößt gegen die Compliance. Beispielsweise wird die Warnung über fehlende Dokumenttitel beim Speichern in PDF/UA ausgegeben und nicht beim Speichern in PDF/A.

Alle Warnungen beziehen sich auf [WarningType](https://reference.aspose.com/words/de/net/aspose.words/warningtype/)**.MinorFormattingLoss** und [WarningSource](https://reference.aspose.com/words/de/net/aspose.words/warningsource/)**.PDF**. Hier ist eine Liste der neuen Beschreibungswarnungswerte:

|  Beschreibung des Warnwerts |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "Dokumenttitel fehlt. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument wird nicht vollständig konform sein." |                          |   {{< emoticons/tick >}}  |
|  "Das Dokument enthält Überschriften, deren Ebenen nicht aufeinanderfolgend sind. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument ist nicht vollständig konform." |                          |   {{< emoticons/tick >}}  |
|  "Das Dokument enthält Formen ohne Alternativtext. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument ist nicht vollständig konform." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Das Dokument enthält Tabellen ohne Alternativtext. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument ist nicht vollständig konform." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Das Dokument enthält Hyperlinks ohne Alternativtext. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument ist nicht vollständig konform." |                          |   {{< emoticons/tick >}}  |
|  "Das Dokument enthält Tabellen ohne Kopfzeile/-spalte. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument ist nicht vollständig konform." |                          |   {{< emoticons/tick >}}  |
|  "Das Dokument enthält Unicode-PUA-Zeichen. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument wird nicht vollständig konform sein." |   {{< emoticons/tick >}}  |                          |
|  "Das Dokument enthält .notdef glyphs. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument wird nicht vollständig konform sein." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |

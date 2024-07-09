---
title: Warnungen beim Speichern von PDF/A und PDF/UA
second_title: Aspose.Words für Java
articleTitle: Warnhinweise für die Zugänglichkeit bei PDF/A und PDF/UA
linktitle: Warnhinweise für die Zugänglichkeit bei PDF/A und PDF/UA
description: "PDF/A und PDF/UA verhängen Zugänglichkeitsanforderungen im Zusammenhang mit Dokumenteninhalten. Beim Speichern in PDF/A oder PDF/UA Java und das Problem verletzt die Einhaltung, eine Warnung wird ausgegeben."
type: docs
weight: 29
url: /de/java/warnings-when-saving-to-pdfa-and-pdfua/
---

PDF/A- und PDF/UA-Formate stellen eine Reihe von Barrierefreiheitsanforderungen im Zusammenhang mit Dokumenteninhalten vor, die bei der automatischen Umwandlung von Word in PDF nicht erfüllt werden können. Diese Anforderungen werden im vorherigen Artikel *"Working with PDF/A oder PDF/UA"* beschrieben. Jetzt werden Warnungen für einige dieser Probleme ausgegeben.

Warnungen werden beim Speichern in einem der PDF/A- oder PDF/UA-Formate ausgegeben und das Problem verletzt die Einhaltung. Zum Beispiel wird die Warnung über fehlende Dokumenttitel beim Speichern in PDF/UA ausgegeben und nicht beim Speichern in PDF/A ausgegeben.

Alle Warnungen sind von [WarningType](https://reference.aspose.com/words/java/com.aspose.words/warningtype/)**.MinorFormattingLoss** und [WarningSource](https://reference.aspose.com/words/java/com.aspose.words/warningsource/)**. Pdf**. Hier eine Liste der neuen Beschreibung Warnwerte:

|  Beschreibung Warnwert |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "Dokumententitel fehlen. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument wird nicht vollständig konform sein." |                          |   {{< emoticons/tick >}}  |
|  "Das Dokument enthält Rubriken, die nicht aufeinander folgen. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument wird nicht vollständig konform sein." |                          |   {{< emoticons/tick >}}  |
|  "Es gibt Formen ohne Alttext im Dokument. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument wird nicht vollständig konform sein." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Es gibt Tabellen ohne Alttext im Dokument. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument wird nicht vollständig konform sein." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Es gibt Hyperlinks ohne Alttext im Dokument. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument wird nicht vollständig konform sein." |                          |   {{< emoticons/tick >}}  |
|  "Es gibt Tabellen ohne Kopfzeile / Spalte im Dokument. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument wird nicht vollständig konform sein." |                          |   {{< emoticons/tick >}}  |
|  "Das Dokument enthält Unicode PUA Zeichen. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument wird nicht vollständig konform sein." |   {{< emoticons/tick >}}  |                          |
|  "Das Dokument enthält .notdef glyphS. Dies verstößt gegen die Compliance-Anforderungen. Das Ausgabedokument wird nicht vollständig konform sein." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |

---
title: Benutzerdefinierte Formatierung auf Felder anwenden
second_title: Aspose.Words für Java
articleTitle: Benutzerdefinierte Formatierung auf Felder anwenden
linktitle: Benutzerdefinierte Formatierung auf Felder anwenden
description: "Formatieren und bewerten Sie das Feldergebnis mit Java."
type: docs
weight: 40
url: /de/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Manchmal müssen Benutzer benutzerdefinierte Formatierungen auf Felder anwenden. In diesem Artikel werden wir uns einige Beispiele ansehen, wie dies getan werden kann.

Weitere Optionen finden Sie in der vollständigen Liste der Eigenschaften für jeden Feldtyp in der entsprechenden Klasse.

## So wenden Sie eine benutzerdefinierte Formatierung auf das Feldergebnis an

Aspose.Words bietet API für die benutzerdefinierte Formatierung des Feldergebnisses. Sie können die [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) -Schnittstelle implementieren, um zu steuern, wie das Feldergebnis formatiert wird. Sie können den Schalter für das numerische Format, dh \# "#.##", den Schalter für das Datums- / Uhrzeitformat, dh \@ "dd.MM.yyyy", und den Schalter für das Zahlenformat, dh \* Ordinal, anwenden.

Das folgende Codebeispiel zeigt, wie Sie eine benutzerdefinierte Formatierung für das Feldergebnis anwenden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## So bewerten Sie die `IF` -Bedingung

Wenn Sie die Bedingung `IF` nach mail merge auswerten möchten, können Sie die Methode [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) verwenden, die sofort das Ergebnis der Ausdrucksauswertung zurückgibt.

Das folgende Codebeispiel zeigt, wie diese Methode verwendet wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## So wenden Sie eine benutzerdefinierte Formatierung auf das Zeitfeld an

Standardmäßig aktualisiert Aspose.Words das Feld `TIME` mit dem aktuellen Kulturkurzzeitformat. Wenn Sie das Feld `TIME` entsprechend Ihren Anforderungen formatieren möchten, können Sie dies erreichen, indem Sie die Schnittstelle [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) implementieren.

Die folgenden Codebeispiele zeigen, wie Sie benutzerdefinierte Formatierungen auf das Feld `TIME` anwenden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}

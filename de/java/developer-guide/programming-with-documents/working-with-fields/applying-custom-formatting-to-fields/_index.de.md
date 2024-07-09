---
title: Benutzerdefinierte Formatierung auf Felder anwenden
second_title: Aspose.Words für Java
articleTitle: Benutzerdefinierte Formatierung auf Felder anwenden
linktitle: Benutzerdefinierte Formatierung auf Felder anwenden
description: "Felder ausgeben und auswerten Java."
type: docs
weight: 40
url: /de/java/applying-custom-formatting-to-fields/
---

Manchmal müssen Benutzer benutzerdefinierte Formatierung auf Felder anwenden. In diesem Artikel werden wir uns einige Beispiele ansehen, wie dies geschehen kann.

Um mehr Optionen zu erfahren, siehe die vollständige Liste der Eigenschaften für jeden Feldtyp in der entsprechenden Klasse.

## Wie benutzerdefinierte Formatierung auf Feldergebnis anwenden

Aspose.Words bietet API für die individuelle Formatierung des Feldergebnisses. Sie können implementieren [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) Schnittstelle zur Steuerung, wie das Feldergebnis formatiert wird. Sie können numerische Format-Schalter, d.h. \# "#.##", Datum/Zeit-Format-Schalter, d.h. \@ "dd.MM.yyyyy" und Zahlenformat-Schalter, d.h. \* Ordinal anwenden.

Das folgende Codebeispiel zeigt, wie man benutzerdefinierte Formatierung für das Feldergebnis anwendet.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## Wie bewerten Sie? `IF` Zustand

Wenn Sie bewerten möchten `IF` Zustand nach mail merge, Sie können [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) Verfahren, das sofort das Ergebnis der Expressionsauswertung zurückgibt.

Das folgende Codebeispiel zeigt, wie man diese Methode verwendet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Wie benutzerdefinierte Formatierung auf Zeitfeld anwenden

Standardmäßig Aspose.Words Aktualisierung `TIME` Feld mit aktuellem Kultur-Kurzzeitformat. Wenn Sie die `TIME` Feld nach Ihrer Anforderung, können Sie dies erreichen, indem Sie [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) Schnittstelle.

Die folgenden Codebeispiele zeigen, wie man benutzerdefinierte Formatierung auf die `TIME` Feld:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}

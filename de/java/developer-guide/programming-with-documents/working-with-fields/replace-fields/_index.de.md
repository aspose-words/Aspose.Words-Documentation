---
title: Felder mit Text ersetzen Java
second_title: Aspose.Words für Java
articleTitle: Felder mit statischem Text ersetzen
linktitle: Felder mit statischem Text ersetzen
description: "Erfahren Sie, wie Felder durch Text ersetzt werden Java. Felder mit statischen Daten austauschen Java API."
type: docs
weight: 37
url: /de/java/replace-fields/
---

Das Löschen von Feldern ist oft erforderlich, wenn Sie Ihr Dokument als statische Kopie speichern möchten. Zum Beispiel beim Senden als Anhang in einer E-Mail. Umrechnung von Feldern wie `DATE` oder `TIME` auf statischen Text ermöglicht es dem Dokument, das gleiche Datum wie beim Senden anzuzeigen. Auch, in einigen Situationen müssen Sie möglicherweise die Conditional entfernen `IF` Felder aus Ihrem Dokument und ersetzen sie stattdessen mit dem neuesten Textergebnis. Das Ergebnis des `IF` Feld zu statischem Text, so dass es seinen Wert nicht mehr dynamisch ändert, wenn Felder im Dokument aktualisiert werden.

Das folgende Diagramm zeigt, wie die `IF` Feld wird in einem Dokument gespeichert:

* der Text ist von den speziellen Feldknoten umgeben – [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) und [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) node trennt den Text innerhalb des Feldes in den Feldcode und Feldergebnis
* der Feldcode definiert das allgemeine Verhalten des Feldes, während das Feldergebnis das jüngste Ergebnis bei der Aktualisierung dieses Feldes mit Microsoft Word oder Aspose.Words
* das Feldergebnis ist das, was im Feld gespeichert wird und im Dokument angezeigt wird, wenn man betrachtet

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

Die Struktur ist im folgenden auch hierarchisch mit dem Demo-Projekt zu sehen. **“DocumentExplorer”**, die mit dem **Aspose.Words** Installer.

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## Felder, die nicht durch Text ersetzt werden können

Die Wiederholung eines Feldes mit statischem Text funktioniert für einige Felder in einem Header oder Footer nicht richtig.

Zum Beispiel, versuchen, die `PAGE` Ein Feld in einem Header oder Footer zu statischem Text führt dazu, dass der gleiche Wert auf allen Seiten angezeigt wird. Dies liegt daran, dass Kopf- und Fußzeilen über mehrere Seiten wiederholt werden, und wenn sie als Felder verbleiben, werden sie besonders behandelt, so dass sie das richtige Ergebnis für jede Seite anzeigen.

Im Header, der `PAGE` Das Feld übersetzt gut zum statischen Textlauf. Dieser Textlauf wird ausgewertet, als ob er die letzte Seite im Abschnitt war, die jede `PAGE` Feld im Header, um die letzte Seite auf allen Seiten anzuzeigen.

Das folgende Codebeispiel zeigt, wie das Feld durch sein jüngstes Ergebnis ersetzt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## Bestimmte Feldtypen in bestimmten Dokumentteilen umrechnen

Seit **ConvertFieldsToStaticText** Methode akzeptiert zwei Parameter – die [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) Eigenschaften und [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) Aufzählung ist es möglich, jedem Kompositknoten dieses Verfahrens zu übergeben. Dadurch können Felder nur in bestimmten Teilen des Dokuments in statischen Text umgewandelt werden.

Zum Beispiel können Sie eine [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Objekt und Konvertieren von Feldern des angegebenen Typs vom gesamten Dokument in statischen Text, oder Sie können einen [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) Objekt eines Abschnitts und nur die in diesem Körper gefundenen Felder umwandeln.

{{% alert color="primary" %}}

Beim Passieren eines Block-Level-Knotens wie [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), beachten Sie, dass in einigen Fällen Felder über mehrere Absätze hinwegspannen können. Wenn dies geschieht, wird empfohlen, den Elternteil des Verbundes zu übergeben, um dies zu vermeiden.

{{% /alert %}}

Die [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) Aufzählung an die **ConvertFieldsToStaticText** Die Methode gibt an, welche Art von Feldern in statischen Text umgewandelt werden sollen. Jeder andere Feldtyp, der im Dokument gefunden wird, bleibt unverändert.

Das folgende Codebeispiel zeigt, wie Sie Felder eines bestimmten Typs auswählen – *targetFieldType* in einem bestimmten Knoten – *compositeNode* und dann in statischen Text umwandeln:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

Das folgende Codebeispiel zeigt, wie man alle umwandelt `IF` Felder in einem Dokument zum statischen Text:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

Das folgende Codebeispiel zeigt, wie man alle umwandelt `PAGE` Felder in einem Körper eines Dokuments zu statischem Text:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

Das folgende Codebeispiel zeigt, wie man alle umwandelt `IF` Felder im letzten Absatz zum statischen Text:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}

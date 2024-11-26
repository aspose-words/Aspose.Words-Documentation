---
title: Felder durch Text Java ersetzen
second_title: Aspose.Words für Java
articleTitle: Felder durch statischen Text ersetzen
linktitle: Felder durch statischen Text ersetzen
description: "Erfahren Sie, wie Sie Felder in Java durch Text ersetzen. Ersetzen Sie Felder mit statischen Daten, indem Sie Java API verwenden."
type: docs
weight: 37
url: /de/java/replace-fields/
timestamp: 2024-01-27-14-07-04
---

Das Ersetzen von Feldern ist häufig erforderlich, wenn Sie Ihr Dokument als statische Kopie speichern möchten. Zum Beispiel beim Senden als Anhang in einer E-Mail. Wenn Sie Felder wie `DATE` oder `TIME` in statischen Text konvertieren, wird im Dokument dasselbe Datum angezeigt, an dem es gesendet wurde. In einigen Situationen müssen Sie möglicherweise auch die bedingten `IF` -Felder aus Ihrem Dokument entfernen und stattdessen durch das neueste Textergebnis ersetzen. Konvertieren Sie beispielsweise das Ergebnis des Felds `IF` in statischen Text, damit es seinen Wert nicht mehr dynamisch ändert, wenn Felder im Dokument aktualisiert werden.

Das folgende Diagramm zeigt, wie das Feld `IF` in einem Dokument gespeichert wird:

* der Text ist von den speziellen Feldknoten [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) und [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) umgeben
* der Knoten [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) trennt den Text innerhalb des Felds in den Feldcode und das Feldergebnis
* der Feldcode definiert das allgemeine Verhalten des Felds, während das Feldergebnis das neueste Ergebnis beibehält, wenn dieses Feld mit Microsoft Word oder Aspose.Words aktualisiert wird
* das Feldergebnis ist das, was im Feld gespeichert und beim Anzeigen im Dokument angezeigt wird

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

Die Struktur kann auch unten in hierarchischer Form anhand des Demo-Projekts **"DocumentExplorer"**, das mit dem **Aspose.Words** -Installationsprogramm geliefert wird, angezeigt werden.

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## Felder, die nicht durch Text ersetzt werden können

Das Ersetzen eines Felds durch statischen Text funktioniert bei einigen Feldern in einer Kopf- oder Fußzeile nicht ordnungsgemäß.

Wenn Sie beispielsweise versuchen, das Feld `PAGE` in einer Kopf- oder Fußzeile in statischen Text zu konvertieren, wird auf allen Seiten derselbe Wert angezeigt. Dies liegt daran, dass Kopf- und Fußzeilen auf mehreren Seiten wiederholt werden und wenn sie als Felder verbleiben, werden sie speziell behandelt, damit sie für jede Seite das richtige Ergebnis anzeigen.

In der Kopfzeile lässt sich das Feld `PAGE` jedoch gut in eine statische Textfolge übersetzen. Diese Textfolge wird so ausgewertet, als wäre es die letzte Seite im Abschnitt, wodurch jedes `PAGE` -Feld in der Kopfzeile die letzte Seite über alle Seiten anzeigt.

Das folgende Codebeispiel zeigt, wie das Feld durch das neueste Ergebnis ersetzt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## Bestimmte Feldtypen in bestimmten Dokumentteilen konvertieren

Da die **ConvertFieldsToStaticText** -Methode zwei Parameter akzeptiert – die [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) -Eigenschaften und die [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) -Aufzählung, ist es möglich, jeden zusammengesetzten Knoten an diese Methode zu übergeben. Dadurch können Felder nur in bestimmten Teilen des Dokuments in statischen Text konvertiert werden.

Sie können beispielsweise ein [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) -Objekt übergeben und Felder des angegebenen Typs aus dem gesamten Dokument in statischen Text konvertieren, oder Sie können ein [Body](https://reference.aspose.com/words/java/com.aspose.words/body/)-Objekt eines Abschnitts übergeben und nur die in diesem Text gefundenen Felder konvertieren.

{{% alert color="primary" %}}

Beachten Sie beim Übergeben eines Knotens auf Blockebene, z. B. [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), dass sich Felder in einigen Fällen über mehrere Absätze erstrecken können. In diesem Fall wird empfohlen, stattdessen das übergeordnete Element des Verbunds zu übergeben, um dies zu vermeiden.

{{% /alert %}}

Die an die **ConvertFieldsToStaticText** -Methode übergebene [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) -Aufzählung gibt an, welche Art von Feldern in statischen Text konvertiert werden sollen. Jeder andere Feldtyp, der im Dokument gefunden wird, bleibt unverändert.

Das folgende Codebeispiel zeigt, wie Felder eines bestimmten Typs – *targetFieldType* in einem bestimmten Knoten – *compositeNode* ausgewählt und dann in statischen Text konvertiert werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

Das folgende Codebeispiel zeigt, wie alle `IF` -Felder in einem Dokument in statischen Text konvertiert werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

Das folgende Codebeispiel zeigt, wie alle `PAGE` -Felder in einem Textkörper eines Dokuments in statischen Text konvertiert werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

Das folgende Codebeispiel zeigt, wie alle `IF` -Felder im letzten Absatz in statischen Text konvertiert werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}

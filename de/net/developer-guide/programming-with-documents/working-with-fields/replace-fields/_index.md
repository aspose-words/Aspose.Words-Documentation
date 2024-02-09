---
title: Felder ersetzen C#
second_title: Aspose.Words für .NET
articleTitle: Ersetzen Sie Felder durch statischen Text
linktitle: Ersetzen Sie Felder durch statischen Text
description: "Erfahren Sie, wie Sie Felder in C# durch Text ersetzen. Ersetzen Sie Felder mithilfe des .NET-API durch statische Daten."
type: docs
weight: 37
url: /de/net/replace-fields/
---

Das Ersetzen von Feldern ist häufig erforderlich, wenn Sie Ihr Dokument als statische Kopie speichern möchten. Zum Beispiel beim Versenden als Anhang in einer E-Mail. Durch die Konvertierung von Feldern wie `DATE` oder `TIME` in statischen Text wird im Dokument das gleiche Datum angezeigt, an dem es gesendet wurde. In manchen Situationen müssen Sie möglicherweise auch die bedingten `IF`-Felder aus Ihrem Dokument entfernen und sie stattdessen durch das aktuellste Textergebnis ersetzen. Konvertieren Sie beispielsweise das Ergebnis des `IF`-Felds in statischen Text, damit es seinen Wert nicht mehr dynamisch ändert, wenn Felder im Dokument aktualisiert werden.

Das folgende Diagramm zeigt, wie das `IF`-Feld in einem Dokument gespeichert wird:

* Der Text ist von den speziellen Feldknoten [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) und [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend) umgeben
* Der [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/)-Knoten trennt den Text innerhalb des Feldes in den Feldcode und das Feldergebnis
* Der Feldcode definiert das allgemeine Verhalten des Feldes, während das Feldergebnis das aktuellste Ergebnis beibehält, wenn dieses Feld mit Microsoft Word oder Aspose.Words aktualisiert wird
* Das Feldergebnis ist das, was im Feld gespeichert und beim Betrachten im Dokument angezeigt wird

![update-remove-a-field-aspose-words](/words/net/replace-fields/updating-and-removing-a-field-1.png)

Die Struktur ist unten auch in hierarchischer Form anhand des [Demoprojekt *"DocumentExplorer"*](https://github.com/aspose-words/Aspose.Words-for-.NET)*.* ersichtlich

![update-remove-a-field-aspose-words-2](/words/net/replace-fields/updating-and-removing-a-field-2.png)

## Felder, die nicht durch Text ersetzt werden können

Das Ersetzen eines Felds durch statischen Text funktioniert bei einigen Feldern in einer Kopf- oder Fußzeile nicht ordnungsgemäß.

Wenn Sie beispielsweise versuchen, das `PAGE`-Feld in einer Kopf- oder Fußzeile in statischen Text umzuwandeln, wird auf allen Seiten derselbe Wert angezeigt. Dies liegt daran, dass Kopf- und Fußzeilen auf mehreren Seiten wiederholt werden. Wenn sie als Felder verbleiben, werden sie besonders behandelt, damit auf jeder Seite das richtige Ergebnis angezeigt wird.

Im Header lässt sich das `PAGE`-Feld jedoch gut in einen statischen Textlauf übersetzen. Dieser Textlauf wird so ausgewertet, als wäre es die letzte Seite im Abschnitt, was dazu führt, dass in jedem `PAGE`-Feld in der Kopfzeile die letzte Seite aller Seiten angezeigt wird.

Das folgende Codebeispiel zeigt, wie das Feld durch sein neuestes Ergebnis ersetzt wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UnlinkFields.cs" >}}

## Konvertieren Sie bestimmte Feldtypen in bestimmte Dokumentteile

Da die **ConvertFieldsToStaticText**-Methode zwei Parameter akzeptiert – die [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/)-Eigenschaften und die [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/)-Enumeration – ist es möglich, jeden zusammengesetzten Knoten an diese Methode zu übergeben. Dadurch können Felder nur in bestimmten Teilen des Dokuments in statischen Text umgewandelt werden.

Sie können beispielsweise ein [Document](https://reference.aspose.com/words/net/aspose.words/document/)-Objekt übergeben und Felder des angegebenen Typs aus dem gesamten Dokument in statischen Text konvertieren, oder Sie können ein [Body](https://reference.aspose.com/words/net/aspose.words/body/)-Objekt eines Abschnitts übergeben und nur die in diesem Hauptteil gefundenen Felder konvertieren.

{{% alert color="primary" %}}

Beachten Sie beim Übergeben eines Knotens auf Blockebene, z. B. eines [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), dass sich Felder in einigen Fällen über mehrere Absätze erstrecken können. In diesem Fall wird empfohlen, stattdessen das übergeordnete Element des Verbunds zu übergeben, um dies zu vermeiden.

{{% /alert %}}

Die an die **ConvertFieldsToStaticText**-Methode übergebene [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/)-Enumeration gibt an, welche Art von Feldern in statischen Text konvertiert werden sollen. Alle anderen im Dokument gefundenen Feldtypen bleiben unverändert.

Das folgende Codebeispiel zeigt, wie man Felder eines bestimmten Typs – *targetFieldType* – in einem bestimmten Knoten – *compositeNode* – auswählt und sie dann in statischen Text umwandelt:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

Das folgende Codebeispiel zeigt, wie alle `IF`-Felder in einem Dokument in statischen Text konvertiert werden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Linked%20fields.docx) herunterladen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie alle `PAGE`-Felder im Hauptteil eines Dokuments in statischen Text konvertiert werden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInBody-ConvertFieldsInBody.cs" >}}

Das folgende Codebeispiel zeigt, wie alle `IF`-Felder im letzten Absatz in statischen Text konvertiert werden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.cs" >}}

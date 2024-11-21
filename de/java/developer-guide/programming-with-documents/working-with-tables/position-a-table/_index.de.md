---
title: Tabelle Position in Java
second_title: Aspose.Words für Java
articleTitle: Position einer Tabelle
linktitle: Position einer Tabelle
description: "Tabellenposition in Java. Erhalten Sie eine Tischausrichtung, erhalten und setzen Sie schwimmende Tischposition mit Java."
type: docs
weight: 50
url: /de/java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Es gibt Floating-Tabellen und Inline-Tabellen:

* **Inline Tabellen** auf derselben Ebene wie der Text platziert und in einem Textfluss platziert werden, der die Tabelle oben und unten nur umgibt. Inline-Tabellen erscheinen immer zwischen den Absätzen, in denen Sie sie platziert.
* **Schwimmtische** über den Text geschichtet sind, und die Position der Tabelle relativ zum Absatz wird durch den Tischanker bestimmt. Dadurch wird die Position des Schwimmtisches im Dokument durch die vertikalen und horizontalen Positioniereinstellungen beeinflusst.

Manchmal müssen Sie eine Tabelle in einem Dokument auf eine bestimmte Weise positionieren. Dazu müssen Sie die Ausrichtwerkzeuge verwenden und die Eindrücke zwischen der Tabelle und dem umgebenden Text festlegen.

In diesem Artikel werden wir diskutieren, welche Optionen Aspose.Words sorgt für die Positionierung.

## Inline-Tabellenposition angeben

Sie können die Position einer Inline-Tabelle mit der Aspose.Words API und [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) Eigentum. So können Sie die Ausrichtung der Tabelle relativ zur Dokumentseite einstellen.

Das folgende Codebeispiel zeigt, wie die Position einer Inline-Tabelle eingestellt werden kann:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Erhalten Sie Floating Table Alignment

Wenn die Tabellentextumhüllung eingestellt ist **Around**, Sie können die horizontale und vertikale Ausrichtung der Tabelle mit der [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) und [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) Eigenschaften.

Mit **andere Arten von Textumhüllung**, Sie können Inline-Tabellenausrichtung mit der **Alignment** Eigentum.

Das folgende Codebeispiel zeigt, wie man die Ausrichtung der Tabelle erhält:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Erhalten Sie Floating Table Position

 Die Position eines Schwimmtisches wird anhand der folgenden Eigenschaften bestimmt:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) – ein Objekt zur Berechnung der horizontalen Positionierung eines Schwimmtisches
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) – ein Objekt zur Berechnung der vertikalen Positionierung eines Schwimmtisches
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) – absolute horizontale schwimmende Tischposition
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) – absolute vertikale schwimmende Tischposition
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) – Möglichkeit, Überlappung mit anderen schwimmenden Objekten zu ermöglichen/verhindern
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) – Schwimmtisch relativ horizontale Ausrichtung.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) – Schwimmtisch relativ vertikale Ausrichtung.

Das folgende Codebeispiel zeigt, wie man die Position einer schwimmenden Tabelle erhält:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Set Floating Tischposition

Genau wie immer, können Sie die Position eines schwimmenden Tisches mit der gleichen Aspose.Words API.

Es ist wichtig zu wissen, dass die Ausrichtung und der horizontale und vertikale Abstand kombinierte Eigenschaften sind und man das andere zurückstellen kann. Zum Beispiel die Einstellung **RelativeHorizontalAlignment** wird zurückgesetzt **AbsoluteHorizontalDistance** zu seinem Standardwert und umgekehrt. Dasselbe ist true für die vertikale Anordnung.

Das folgende Codebeispiel zeigt, wie die Position einer Floating-Tabelle eingestellt werden kann:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Distanz zwischen Tisch und umgebendem Text

Aspose.Words bietet auch die Möglichkeit, die Entfernungen zwischen Tabellen und umliegenden Texten herauszufinden:

- Ja. [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) – der Wert der Entfernung von oben
- Ja. [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) – der Wert der Wahrnehmungsdistanz
- Ja. [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) – Entfernungswert rechts
- Ja. [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) – Entfernungswert links

Das folgende Codebeispiel zeigt, wie man den Abstand zwischen einer Tabelle und ihrem umgebenden Text erhält:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}

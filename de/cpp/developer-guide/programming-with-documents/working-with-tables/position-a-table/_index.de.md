---
title: Tabellenposition in C++
second_title: Aspose.Words für C++
articleTitle: Einen Tisch positionieren
linktitle: Einen Tisch positionieren
description: "Geben Sie die Tabellenposition in C++ an. Holen Sie sich eine Tabellenausrichtung, holen und setzen Sie die schwebende Tabellenposition mit C++."
type: docs
weight: 50
url: /de/cpp/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Es gibt schwebende Tabellen und Inline-Tabellen:

* **Inline tables** werden auf derselben Ebene wie der Text platziert und in einen Textfluss eingefügt, der nur die Tabelle oben und unten umgibt. Inline-Tabellen werden immer zwischen den Absätzen angezeigt, in denen Sie sie platziert haben.
* **Floating tables** werden über den Text geschichtet, und die Position der Tabelle relativ zum Absatz wird durch den Tabellenanker bestimmt. Aus diesem Grund wird die Position der schwebenden Tabelle im Dokument von den vertikalen und horizontalen Positionierungseinstellungen beeinflusst.

Manchmal müssen Sie eine Tabelle in einem Dokument auf eine bestimmte Weise positionieren. Dazu müssen Sie die Ausrichtungswerkzeuge verwenden und die Einzüge zwischen der Tabelle und dem umgebenden Text festlegen.

In diesem Artikel werden wir diskutieren, welche Optionen Aspose.Words für die Positionierung bietet.

## Inline-Tabellenposition angeben

Sie können die Position einer Inline-Tabelle mit den Eigenschaften Aspose.Words API und [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/) festlegen. So können Sie die Ausrichtung der Tabelle relativ zur Dokumentseite anpassen.

Das folgende Codebeispiel zeigt, wie die Position einer Inline-Tabelle festgelegt wird:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## Holen Sie sich die Ausrichtung des schwebenden Tisches

Wenn der Tabellentextumbruch auf **Around** festgelegt ist, können Sie die horizontale und vertikale Ausrichtung der Tabelle mithilfe der Eigenschaften [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) und [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) ermitteln.

Mit **other types of text wrapping** können Sie die Inline-Tabellenausrichtung mithilfe der Eigenschaft [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/) erhalten.

Das folgende Codebeispiel zeigt, wie die Ausrichtung der Tabelle ermittelt wird:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## Position des schwebenden Tisches ermitteln

 Die Position einer schwebenden Tabelle wird anhand der folgenden Eigenschaften bestimmt:

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) - ein Objekt zur Berechnung der horizontalen Positionierung einer schwebenden Tabelle
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) - ein Objekt zur Berechnung der vertikalen Positionierung einer schwebenden Tabelle
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) - absolute horizontale Position des schwebenden Tisches
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) - absolute vertikale Position des schwebenden Tisches
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) - Option zum Aktivieren / Deaktivieren der Überlappung mit anderen schwebenden Objekten
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) - relative horizontale Ausrichtung der schwebenden Tabelle.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) - relative vertikale Ausrichtung der schwebenden Tabelle.

Das folgende Codebeispiel zeigt, wie Sie die Position einer schwebenden Tabelle ermitteln:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## Position des schwebenden Tisches festlegen

Genau wie beim Abrufen können Sie die Position einer schwebenden Tabelle mit demselben Aspose.Words API festlegen.

Es ist wichtig zu wissen, dass Ausrichtung und horizontaler und vertikaler Abstand kombinierte Eigenschaften sind und eine die andere zurücksetzen kann. Wenn Sie beispielsweise **RelativeHorizontalAlignment** setzen, wird **AbsoluteHorizontalDistance** auf den Standardwert zurückgesetzt und umgekehrt. Gleiches gilt für die vertikale Anordnung.

Das folgende Codebeispiel zeigt, wie die Position einer schwebenden Tabelle festgelegt wird:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## Ermitteln Sie den Abstand zwischen Tabelle und umgebendem Text

Aspose.Words bietet auch die Möglichkeit, die Abstände zwischen Tabellen und umgebenden Texten zu ermitteln:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) – der Wert der Entfernung von oben
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) – der Wert der Wahrnehmungsentfernung
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) - Entfernungswert auf der rechten Seite
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) - Entfernungswert auf der linken Seite

Das folgende Codebeispiel zeigt, wie Sie den Abstand zwischen einer Tabelle und dem umgebenden Text ermitteln:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}

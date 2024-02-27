---
title: Tabellenposition in Python
second_title: Aspose.Words für Python
articleTitle: Positionieren Sie einen Tisch
linktitle: Positionieren Sie einen Tisch
description: "Geben Sie die Tabellenposition in Python an. Erhalten Sie eine Tabellenausrichtung, ermitteln Sie die schwebende Tabellenposition und legen Sie sie mithilfe von Python fest."
type: docs
weight: 50
url: /de/python-net/position-a-table/
---

Es gibt Floating-Tabellen und Inline-Tabellen:

* **Inline-Tabellen** werden auf derselben Ebene wie der Text platziert und in einen Textfluss eingefügt, der nur die Tabelle darüber und darunter umgibt. Inline-Tabellen werden immer zwischen den Absätzen angezeigt, an denen Sie sie platziert haben.
* **Schwebende Tische** werden über den Text gelegt und die Position der Tabelle relativ zum Absatz wird durch den Tabellenanker bestimmt. Aus diesem Grund wird die Position der schwebenden Tabelle im Dokument durch die vertikalen und horizontalen Positionierungseinstellungen beeinflusst.

Manchmal müssen Sie eine Tabelle in einem Dokument auf eine bestimmte Weise positionieren. Dazu müssen Sie die Ausrichtungswerkzeuge verwenden und die Einzüge zwischen der Tabelle und dem umgebenden Text festlegen.

In diesem Artikel besprechen wir, welche Möglichkeiten Aspose.Words zur Positionierung bietet.

## Geben Sie die Position der Inline-Tabelle an

Sie können die Position einer Inline-Tabelle mithilfe der Aspose.Words-API- und der [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/)-Eigenschaft festlegen. So können Sie die Ausrichtung der Tabelle relativ zur Dokumentseite anpassen.

Das folgende Codebeispiel zeigt, wie die Position einer Inline-Tabelle festgelegt wird:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "inline-table-position.py" >}}

## Holen Sie sich die schwebende Tabellenausrichtung

Wenn der Tabellentextumbruch auf **Around** eingestellt ist, können Sie die horizontale und vertikale Ausrichtung der Tabelle mithilfe der [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/)- und [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/)-Eigenschaften ermitteln.

Mit **andere Arten des Textumbruchs** können Sie mithilfe der [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/)-Eigenschaft eine Inline-Tabellenausrichtung erreichen.

Das folgende Codebeispiel zeigt, wie die Ausrichtung der Tabelle ermittelt wird:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-table-position.py" >}}

## Holen Sie sich die schwebende Tischposition

 Die Position einer schwebenden Tabelle wird anhand der folgenden Eigenschaften bestimmt:

* [HorizontalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/horizontal_anchor/) – ein Objekt zur Berechnung der horizontalen Positionierung eines schwebenden Tisches
* [VerticalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/vertical_anchor/) – ein Objekt zur Berechnung der vertikalen Positionierung eines schwebenden Tisches
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_horizontal_distance/) – absolute horizontale schwebende Tischposition
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_vertical_distance/) – absolute vertikale schwebende Tischposition
* [AllowOverlap](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_overlap/) – Option zum Aktivieren/Deaktivieren der Überlappung mit anderen schwebenden Objekten
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) – schwebende Tabelle mit relativer horizontaler Ausrichtung.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) – schwebende Tabelle mit relativer vertikaler Ausrichtung.

Das folgende Codebeispiel zeigt, wie Sie die Position einer schwebenden Tabelle ermitteln:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-floating-table-position.py" >}}

## Legen Sie die schwebende Tischposition fest

Genau wie beim Abrufen können Sie die Position einer schwebenden Tabelle mit demselben Aspose.Words API festlegen.

Es ist wichtig zu wissen, dass Ausrichtung sowie horizontaler und vertikaler Abstand kombinierte Eigenschaften sind und das eine das andere zurücksetzen kann. Wenn Sie beispielsweise **RelativeHorizontalAlignment** festlegen, wird **AbsoluteHorizontalDistance** auf seinen Standardwert zurückgesetzt und umgekehrt. Das Gleiche gilt für true für die vertikale Anordnung.

Das folgende Codebeispiel zeigt, wie die Position einer schwebenden Tabelle festgelegt wird:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "floating-table-position.py" >}}

## Ermitteln Sie den Abstand zwischen der Tabelle und dem umgebenden Text

Aspose.Words bietet auch die Möglichkeit, die Abstände zwischen Tabellen und umgebenden Texten herauszufinden:

- [DistanceTop](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) – der Wert des Abstands von oben
- [DistanceBottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/) – der Wert der Wahrnehmungsentfernung
- [DistanceRight](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/) – Abstandswert rechts
- [DistanceLeft](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/) – Distanzwert links

Das folgende Codebeispiel zeigt, wie Sie den Abstand zwischen einer Tabelle und dem umgebenden Text ermitteln:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "distance-between-table-surrounding-text.py" >}}
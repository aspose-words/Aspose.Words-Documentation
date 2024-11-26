---
title: Tabellenposition in C#
second_title: Aspose.Words für .NET
articleTitle: Positionieren Sie einen Tisch
linktitle: Positionieren Sie einen Tisch
description: "Geben Sie die Tabellenposition in C# an. Erhalten Sie eine Tabellenausrichtung, ermitteln Sie die schwebende Tabellenposition und legen Sie sie mithilfe von C# fest."
type: docs
weight: 50
url: /de/net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Es gibt Floating-Tabellen und Inline-Tabellen:

* **Inline-Tabellen** werden auf derselben Ebene wie der Text platziert und in einen Textfluss eingefügt, der nur die Tabelle darüber und darunter umgibt. Inline-Tabellen werden immer zwischen den Absätzen angezeigt, an denen Sie sie platziert haben.
* **Schwebende Tische** werden über den Text gelegt und die Position der Tabelle relativ zum Absatz wird durch den Tabellenanker bestimmt. Aus diesem Grund wird die Position der schwebenden Tabelle im Dokument durch die vertikalen und horizontalen Positionierungseinstellungen beeinflusst.

Manchmal müssen Sie eine Tabelle in einem Dokument auf eine bestimmte Weise positionieren. Dazu müssen Sie die Ausrichtungswerkzeuge verwenden und die Einzüge zwischen der Tabelle und dem umgebenden Text festlegen.

In diesem Artikel besprechen wir, welche Möglichkeiten Aspose.Words zur Positionierung bietet.

## Geben Sie die Position der Inline-Tabelle an

Sie können die Position einer Inline-Tabelle mithilfe der Aspose.Words-API- und der [Alignment](https://reference.aspose.com/words/de/net/aspose.words.tables/table/alignment/)-Eigenschaft festlegen. So können Sie die Ausrichtung der Tabelle relativ zur Dokumentseite anpassen.

Das folgende Codebeispiel zeigt, wie die Position einer Inline-Tabelle festgelegt wird:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "inline-table-position.cs" >}}

## Holen Sie sich die schwebende Tabellenausrichtung

Wenn der Tabellentextumbruch auf **Around** eingestellt ist, können Sie die horizontale und vertikale Ausrichtung der Tabelle mithilfe der [RelativeHorizontalAlignment](https://reference.aspose.com/words/de/net/aspose.words.tables/table/relativehorizontalalignment/)- und [RelativeVerticalAlignment](https://reference.aspose.com/words/de/net/aspose.words.tables/table/relativeverticalalignment/)-Eigenschaften ermitteln.

Mit **andere Arten des Textumbruchs** können Sie mithilfe der [Alignment](https://reference.aspose.com/words/de/net/aspose.words.tables/table/alignment/)-Eigenschaft eine Inline-Tabellenausrichtung erreichen.

Das folgende Codebeispiel zeigt, wie die Ausrichtung der Tabelle ermittelt wird:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-table-position.cs" >}}

## Holen Sie sich die schwebende Tischposition

 Die Position einer schwebenden Tabelle wird anhand der folgenden Eigenschaften bestimmt:

* [HorizontalAnchor](https://reference.aspose.com/words/de/net/aspose.words.tables/table/horizontalanchor/) – ein Objekt zur Berechnung der horizontalen Positionierung eines schwebenden Tisches
* [VerticalAnchor](https://reference.aspose.com/words/de/net/aspose.words.tables/table/verticalanchor/) – ein Objekt zur Berechnung der vertikalen Positionierung eines schwebenden Tisches
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/de/net/aspose.words.tables/table/absolutehorizontaldistance/) – absolute horizontale schwebende Tischposition
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/de/net/aspose.words.tables/table/absoluteverticaldistance/) – absolute vertikale schwebende Tischposition
* [AllowOverlap](https://reference.aspose.com/words/de/net/aspose.words.tables/table/allowoverlap/) – Option zum Aktivieren/Deaktivieren der Überlappung mit anderen schwebenden Objekten
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/de/net/aspose.words.tables/table/relativehorizontalalignment/) – schwebende Tabelle mit relativer horizontaler Ausrichtung.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/de/net/aspose.words.tables/table/relativeverticalalignment/) – schwebende Tabelle mit relativer vertikaler Ausrichtung.

Das folgende Codebeispiel zeigt, wie Sie die Position einer schwebenden Tabelle ermitteln:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-floating-table-position.cs" >}}

## Legen Sie die schwebende Tischposition fest

Genau wie beim Abrufen können Sie die Position einer schwebenden Tabelle mit demselben Aspose.Words API festlegen.

Es ist wichtig zu wissen, dass Ausrichtung sowie horizontaler und vertikaler Abstand kombinierte Eigenschaften sind und das eine das andere zurücksetzen kann. Wenn Sie beispielsweise **RelativeHorizontalAlignment** festlegen, wird **AbsoluteHorizontalDistance** auf seinen Standardwert zurückgesetzt und umgekehrt. Das Gleiche gilt für true für die vertikale Anordnung.

Das folgende Codebeispiel zeigt, wie die Position einer schwebenden Tabelle festgelegt wird:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "floating-table-position.cs" >}}

## Ermitteln Sie den Abstand zwischen der Tabelle und dem umgebenden Text

Aspose.Words bietet auch die Möglichkeit, die Abstände zwischen Tabellen und umgebenden Texten herauszufinden:

- [DistanceTop](https://reference.aspose.com/words/de/net/aspose.words.tables/table/distancetop/) – der Wert des Abstands von oben
- [DistanceBottom](https://reference.aspose.com/words/de/net/aspose.words.tables/table/distancebottom/) – der Wert der Wahrnehmungsentfernung
- [DistanceRight](https://reference.aspose.com/words/de/net/aspose.words.tables/table/distanceright/) – Abstandswert rechts
- [DistanceLeft](https://reference.aspose.com/words/de/net/aspose.words.tables/table/distanceleft/) – Distanzwert links

Das folgende Codebeispiel zeigt, wie Sie den Abstand zwischen einer Tabelle und dem umgebenden Text ermitteln:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "distance-between-table-surrounding-text.cs" >}}

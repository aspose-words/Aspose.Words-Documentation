---
title: Passen Sie Feldeigenschaften in C# an
second_title: Aspose.Words für .NET
articleTitle: Passen Sie die Feldeigenschaften an
linktitle: Passen Sie die Feldeigenschaften an
description: "Erfahren Sie, wie Sie Feldeigenschaften in C# anpassen. Benennen Sie Zusammenführungsfelder um oder erhalten Sie Ergebnisse für Felder ohne Trennknoten in .NET."
type: docs
weight: 27
url: /de/net/customize-field-properties/
---

Aspose.Words bietet die Möglichkeit, programmgesteuert mit verschiedenen Feldeigenschaften zu interagieren. In diesem Artikel schauen wir uns einige Beispiele an, damit Sie das Grundprinzip der Arbeit mit Feldeigenschaften verstehen. Sie können die vollständige Liste der Eigenschaften für jeden Feldtyp in der entsprechenden Klasse im [Feld-Namespace](https://reference.aspose.com/words/net/aspose.words.fields/) sehen.

## Aktualisierung der Feldeigenschaften

Manchmal müssen Benutzer den Wert einer Feldeigenschaft ändern. Aktualisieren Sie beispielsweise die [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/)-Eigenschaft des `AUTHOR`-Felds oder ändern Sie die [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/)-Eigenschaft des `MERGEFIELD`-Felds.

Das folgende Codebeispiel zeigt, wie Sie Briefvorlagenfelder in einem Word-Dokument umbenennen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## Feldanzeigeergebnis

Aspose.Words bietet eine Eigenschaft zum Abrufen des Feldergebnisses für Felder, die keinen Feldtrennknoten haben. Wir nennen dies "gefälschtes Ergebnis" oder Anzeigeergebnis; MS Word zeigt es im Dokument an, indem es den Feldwert im Handumdrehen berechnet, aber im Dokumentmodell gibt es keinen solchen Wert.

Das folgende Codebeispiel zeigt die Verwendung der [DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/)-Eigenschaft:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}

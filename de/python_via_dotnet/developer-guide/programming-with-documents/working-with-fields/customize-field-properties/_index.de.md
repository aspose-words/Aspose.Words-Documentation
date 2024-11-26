---
title: Passen Sie Feldeigenschaften in Python an
second_title: Aspose.Words für Python via .NET
articleTitle: Passen Sie die Feldeigenschaften an
linktitle: Passen Sie die Feldeigenschaften an
description: "Erfahren Sie, wie Sie Feldeigenschaften in Python anpassen. Benennen Sie Zusammenführungsfelder um oder erhalten Sie Ergebnisse für Felder ohne Trennknoten in Python via .NET."
type: docs
weight: 27
url: /de/python-net/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words bietet die Möglichkeit, programmgesteuert mit verschiedenen Feldeigenschaften zu interagieren. In diesem Artikel schauen wir uns einige Beispiele an, damit Sie das Grundprinzip der Arbeit mit Feldeigenschaften verstehen. Sie können die vollständige Liste der Eigenschaften für jeden Feldtyp in der entsprechenden Klasse im [Felder-Modul](https://reference.aspose.com/words/python-net/aspose.words.fields/) sehen.

## Aktualisierung der Feldeigenschaften

Manchmal müssen Benutzer den Wert einer Feldeigenschaft ändern. Aktualisieren Sie beispielsweise die [author_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/author_name/)-Eigenschaft des `AUTHOR`-Felds oder ändern Sie die [field_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/field_name/)-Eigenschaft des `MERGEFIELD`-Felds.

Das folgende Codebeispiel zeigt, wie Sie Briefvorlagenfelder in einem Word-Dokument umbenennen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

## Feldanzeigeergebnis

Aspose.Words bietet eine Eigenschaft zum Abrufen des Feldergebnisses für Felder, die keinen Feldtrennknoten haben. Wir nennen dies "gefälschtes Ergebnis" oder Anzeigeergebnis; MS Word zeigt es im Dokument an, indem es den Feldwert im Handumdrehen berechnet, aber im Dokumentmodell gibt es keinen solchen Wert.

Das folgende Codebeispiel zeigt die Verwendung der [display_result](https://reference.aspose.com/words/python-net/aspose.words.fields/field/display_result/)-Eigenschaft:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-FieldDisplayResults.py" >}}

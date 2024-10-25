---
title: Feldeigenschaften in C++ anpassen
second_title: Aspose.Words für C++
articleTitle: Feldeigenschaften anpassen
linktitle: Feldeigenschaften anpassen
description: "Erfahren Sie, wie Sie Feldeigenschaften in C++ anpassen. Benennen Sie Seriendruckfelder um oder erhalten Sie Ergebnisse für Felder ohne Trennknoten in C++."
type: docs
weight: 27
url: /de/cpp/customize-field-properties/
---

Aspose.Words bietet die Möglichkeit, programmgesteuert mit verschiedenen Feldeigenschaften zu interagieren. In diesem Artikel werden wir uns einige Beispiele ansehen, damit Sie das Grundprinzip der Arbeit mit Feldeigenschaften verstehen. Sie können die vollständige Liste der Eigenschaften für jeden Feldtyp in der entsprechenden Klasse in [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields) sehen.

## Aktualisierung der Feldeigenschaften

Manchmal müssen Benutzer den Wert einer Feldeigenschaft ändern. Aktualisieren Sie beispielsweise die Eigenschaft [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) des Felds `AUTHOR` oder ändern Sie die Eigenschaft [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) des Felds `MERGEFIELD`.

Das folgende Codebeispiel zeigt, wie Seriendruckfelder in einem Word-Dokument umbenannt werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## Feldanzeige Ergebnis

Aspose.Words stellt eine Eigenschaft bereit, um das Feldergebnis für Felder zu erhalten, die keinen Feldtrennknoten haben. Wir nennen dies "falsches Ergebnis" oder Anzeigeergebnis; Microsoft Word zeigt es im Dokument an, indem der Feldwert im laufenden Betrieb berechnet wird, aber im Dokumentmodell gibt es keinen solchen Wert.

Das folgende Codebeispiel zeigt die Verwendung der Eigenschaft [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}
---
title: Feldeigenschaften anpassen
second_title: Aspose.Words für Java
articleTitle: Feldeigenschaften anpassen
linktitle: Feldeigenschaften anpassen
description: "Erfahren Sie, wie Sie Feldeigenschaften in Java. Fügen Sie Felder um oder erhalten Sie Ergebnisse für Felder ohne Trennknoten in Java."
type: docs
weight: 27
url: /de/java/customize-field-properties/
---

Aspose.Words bietet die Möglichkeit, programmtechnisch mit verschiedenen Feldeigenschaften zu interagieren. In diesem Artikel werden wir einige Beispiele betrachten, so dass Sie das Grundprinzip der Arbeit mit Feldeigenschaften verstehen. Sie können die vollständige Liste der Eigenschaften für jeden Feldtyp in der entsprechenden Klasse sehen.

## Aktualisierung des Feldeigentums

Manchmal müssen Benutzer den Wert einer Feldeigenschaft ändern. Zum Beispiel, aktualisieren Sie die [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) Eigentum der `AUTHOR` Feld oder Änderung [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) Eigentum der `MERGEFIELD` Feld.

Das folgende Codebeispiel zeigt, wie Sie Mergefelder in einem Word-Dokument umbenennen können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Feldanzeige Ergebnis

Aspose.Words bietet eine Eigenschaft, das Feldergebnis für Felder zu erhalten, die keinen Feldtrennerknoten aufweisen. Wir nennen dieses "Fake-Ergebnis" oder Display-Ergebnis; MS Word zeigt es in dem Dokument durch Berechnung des Feldwerts auf der Fliege, aber es gibt keinen solchen Wert im Dokumentmodell.

Das folgende Codebeispiel zeigt die Verwendung [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult) Eigentum:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}

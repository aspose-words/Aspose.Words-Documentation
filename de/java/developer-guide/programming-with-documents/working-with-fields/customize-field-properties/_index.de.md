---
title: Feldeigenschaften anpassen
second_title: Aspose.Words für Java
articleTitle: Feldeigenschaften anpassen
linktitle: Feldeigenschaften anpassen
description: "Erfahren Sie, wie Sie Feldeigenschaften in Java anpassen. Benennen Sie Seriendruckfelder um oder erhalten Sie Ergebnisse für Felder ohne Trennknoten in Java."
type: docs
weight: 27
url: /de/java/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words bietet die Möglichkeit, programmgesteuert mit verschiedenen Feldeigenschaften zu interagieren. In diesem Artikel werden wir uns einige Beispiele ansehen, damit Sie das Grundprinzip der Arbeit mit Feldeigenschaften verstehen. Sie können die vollständige Liste der Eigenschaften für jeden Feldtyp in der entsprechenden Klasse anzeigen.

## Aktualisierung der Feldeigenschaften

Manchmal müssen Benutzer den Wert einer Feldeigenschaft ändern. Aktualisieren Sie beispielsweise die Eigenschaft [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) des Felds `AUTHOR` oder ändern Sie die Eigenschaft [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) des Felds `MERGEFIELD`.

Das folgende Codebeispiel zeigt, wie Seriendruckfelder in einem Word-Dokument umbenannt werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Feldanzeige Ergebnis

Aspose.Words stellt eine Eigenschaft bereit, um das Feldergebnis für Felder zu erhalten, die keinen Feldtrennknoten haben. Wir nennen dies "falsches Ergebnis" oder Anzeigeergebnis; MS Word zeigt es im Dokument an, indem es den Feldwert im laufenden Betrieb berechnet, aber im Dokumentmodell gibt es keinen solchen Wert.

Das folgende Codebeispiel zeigt die Verwendung der Eigenschaft [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}

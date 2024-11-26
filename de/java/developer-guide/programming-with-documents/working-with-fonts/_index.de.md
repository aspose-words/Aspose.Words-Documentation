---
title: Arbeiten mit Schriftarten in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Schriftarten
linktitle: Arbeiten mit Schriftarten
description: "Schriftformatierung in Details mit Java."
type: docs
weight: 230
url: /de/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Eine Schriftart ist eine Reihe von Zeichen mit einer bestimmten Größe, Farbe und einem bestimmten Design. Mit Aspose.Words können Sie mit Schriftarten arbeiten, die verschiedene schriftartbezogene Klassen verwenden, einschließlich der Klasse [Font](https://reference.aspose.com/words/java/com.aspose.words/font/).

## Schriftformatierung

Die aktuelle Schriftformatierung wird durch ein **Font**-Objekt dargestellt, das von der Eigenschaft [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) zurückgegeben wird. Die **Font** -Klasse enthält eine Vielzahl von Schrifteigenschaften, die in Microsoft Word möglich sind.

Das folgende Codebeispiel zeigt, wie Sie die Schriftformatierung festlegen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

Fülleigenschaften sind jetzt auch für Schriftarten verfügbar, um die Füllformatierung von Text festzulegen. Es bietet die Möglichkeit, beispielsweise die Vordergrundfarbe oder die Transparenz der Textfüllung zu ändern.

## Zeilenabstand für Schriftarten abrufen

Der Zeilenabstand einer Schriftart ist der vertikale Abstand zwischen den Grundlinien zweier aufeinanderfolgender Textzeilen. Somit umfasst der Zeilenabstand den Leerraum zwischen den Zeilen zusammen mit der Höhe des Zeichens selbst.

Die Eigenschaft [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) wurde in die Klasse **Font** eingeführt, um diesen Wert zu erhalten, wie im folgenden Beispiel gezeigt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## Schriftart EmphasisMark

Die Klasse **Font** stellt die Eigenschaft [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) zum Abrufen oder Festlegen von EmphasisMark -Aufzählungswerten bereit, die bei der Formatierung angewendet werden sollen.

Das folgende Codebeispiel zeigt, wie die Eigenschaft **EphasisMark** festgelegt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}

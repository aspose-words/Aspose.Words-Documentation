---
title: Arbeiten mit Text in einer Tabelle
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Text in einer Tabelle
linktitle: Arbeiten mit Text in einer Tabelle
description: "Text in einer Tabelle ersetzen Java. Extrahieren Sie Plain Text aus Tabelle oder Zelle mit Java."
type: docs
weight: 60
url: /de/java/extract-text-from-and-replace-text-in-a-table/
---

Wie in früheren Artikeln erwähnt, enthält eine Tabelle in der Regel Klartext, obwohl andere Inhalte wie Bilder oder sogar andere Tabellen in Tabellenzellen platziert werden können.

Das Hinzufügen von Texten oder anderen Inhalten in die Tabelle erfolgt mit den entsprechenden Methoden der [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Klasse und wird in der **"Eine Tabelle erstellen"** Artikel. In diesem Artikel werden wir über die Arbeit mit Text in einer bereits vorhandenen Tabelle sprechen.

## Text in einer Tabelle ersetzen

Die Tabelle, wie jeder andere Knoten in Aspose.Words, Zugang zum [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) Objekt. Mit dem Tabellenbereichsobjekt können Sie Text in einer Tabelle ersetzen.

Die Fähigkeit, spezielle Zeichen beim Austausch zu verwenden, wird derzeit unterstützt, so dass es möglich ist, bestehenden Text durch Multiparagraph Text zu ersetzen. Um dies zu tun, müssen Sie die speziellen Metazeichen verwenden, die in den entsprechenden [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) Methode.

{{% alert color="primary" %}}

Typischerweise sollte der Textersatz auf der Zellebene (pro Zelle) oder auf der Absatzebene erfolgen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man alle Instanzen einer Zeichenfolge in den Zellen einer gesamten Tabelle ersetzt:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## Auszug Plain Text aus einer Tabelle

Verwendung von **Range** Objekt, Sie können auch Methoden auf dem gesamten Tabellenbereich anrufen und die Tabelle als Klartext extrahieren. Um dies zu tun, verwenden Sie die [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text) Eigentum

Das folgende Codebeispiel zeigt, wie man den Textbereich einer Tabelle druckt:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

Die gleiche Technik wird verwendet, um nur den Inhalt aus einzelnen Tabellenzellen zu extrahieren.

Das folgende Codebeispiel zeigt, wie man einen Textbereich von Zeilen- und Tabellenelementen druckt:

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie der Textbereich von Zeilen- und Tabellenelementen gedruckt werden kann.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## Arbeiten mit alternativem Tabellentext

Microsoft Word Tabellen haben eine `table title` und `table description` die eine alternative Textdarstellung der in der Tabelle enthaltenen Informationen liefern.

In Aspose.Words, Sie können auch eine Tabelle Titel und Beschreibung mit der [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) und [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) Eigenschaften. Diese Eigenschaften sind für DOCX-Dokumente aussagekräftig, die dem ISO/IEC 29500. Beim Speichern in Formaten früher als ISO/IEC 29500, diese Eigenschaften werden ignoriert.

Das folgende Codebeispiel zeigt, wie man die Titel- und Beschreibungseigenschaften einer Tabelle festsetzt:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
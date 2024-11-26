---
title: Arbeiten mit Text in einer Tabelle
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Text in einer Tabelle
linktitle: Arbeiten mit Text in einer Tabelle
description: "Ersetzen Sie Text in einer Tabelle in Java. Extrahieren Sie einfachen Text aus einer Tabelle oder Zelle mit Java."
type: docs
weight: 60
url: /de/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Wie in früheren Artikeln erwähnt, enthält eine Tabelle normalerweise einfachen Text, obwohl andere Inhalte wie Bilder oder sogar andere Tabellen in Tabellenzellen platziert werden können.

Das Hinzufügen von Text oder anderen Inhalten zur Tabelle erfolgt mit den entsprechenden Methoden der Klasse [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) und wird im Artikel **"Create a Table"** beschrieben. In diesem Artikel werden wir darüber sprechen, wie man mit Text in einer bereits vorhandenen Tabelle arbeitet.

## Ersetzen von Text in einer Tabelle

Die Tabelle hat wie jeder andere Knoten in Aspose.Words Zugriff auf das [Range](https://reference.aspose.com/words/java/com.aspose.words/range/)-Objekt. Mit dem Tabellenbereichsobjekt können Sie Text in einer Tabelle ersetzen.

Die Möglichkeit, beim Ersetzen Sonderzeichen zu verwenden, wird derzeit unterstützt, sodass es möglich ist, vorhandenen Text durch Text mit mehreren Absätzen zu ersetzen. Dazu müssen Sie die speziellen Metazeichen verwenden, die in der entsprechenden [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) -Methode beschrieben sind.

{{% alert color="primary" %}}

Normalerweise sollte das Ersetzen von Text auf Zellebene (pro Zelle) oder auf Absatzebene erfolgen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie alle Instanzen einer Textzeichenfolge in den Zellen einer gesamten Tabelle ersetzt werden:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## Extrahieren von Klartext aus einer Tabelle

Mit dem **Range** -Objekt können Sie auch Methoden für den gesamten Tabellenbereich aufrufen und die Tabelle als Klartext extrahieren. Verwenden Sie dazu die Eigenschaft [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text).

Das folgende Codebeispiel zeigt, wie der Textbereich einer Tabelle gedruckt wird:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

Dieselbe Technik wird verwendet, um Inhalte nur aus einzelnen Tabellenzellen zu extrahieren.

Das folgende Codebeispiel zeigt, wie ein Textbereich von Zeilen- und Tabellenelementen gedruckt wird:

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie der Textbereich von Zeilen- und Tabellenelementen gedruckt wird.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## Arbeiten mit alternativem Tabellentext

Microsoft Word -Tabellen haben `table title` und `table description`, die eine alternative Textdarstellung der in der Tabelle enthaltenen Informationen bereitstellen.

In Aspose.Words können Sie auch einen Tabellentitel und eine Beschreibung mit den Eigenschaften [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) und [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) hinzufügen. Diese Eigenschaften sind für DOCX-Dokumente sinnvoll, die dem ISO/IEC 29500 entsprechen. Beim Speichern in Formaten vor ISO/IEC 29500 werden diese Eigenschaften ignoriert.

Das folgende Codebeispiel zeigt, wie die Eigenschaften title und description einer Tabelle festgelegt werden:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}

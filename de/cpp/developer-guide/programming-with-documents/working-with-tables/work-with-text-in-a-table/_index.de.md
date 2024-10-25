---
title: Arbeiten mit Text in einer Tabelle
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Text in einer Tabelle
linktitle: Arbeiten mit Text in einer Tabelle
description: "Ersetzen Sie Text in einer Tabelle in C++. Extrahieren Sie einfachen Text aus einer Tabelle oder Zelle mit C++."
type: docs
weight: 60
url: /de/cpp/work-with-text-in-a-table/
---

Wie in früheren Artikeln erwähnt, enthält eine Tabelle normalerweise einfachen Text, obwohl andere Inhalte wie Bilder oder sogar andere Tabellen in Tabellenzellen platziert werden können.

Das Hinzufügen von Text oder anderen Inhalten zur Tabelle erfolgt mit den entsprechenden Methoden der Klasse [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) und wird im Artikel **"Create a Table"** beschrieben. In diesem Artikel werden wir darüber sprechen, wie man mit Text in einer bereits vorhandenen Tabelle arbeitet.

## Ersetzen von Text in einer Tabelle

Die Tabelle hat wie jeder andere Knoten in Aspose.Words Zugriff auf das [Range](https://reference.aspose.com/words/cpp/aspose.words/range/)-Objekt. Mit dem Tabellenbereichsobjekt können Sie Text in einer Tabelle ersetzen.

Die Möglichkeit, beim Ersetzen Sonderzeichen zu verwenden, wird derzeit unterstützt, sodass es möglich ist, vorhandenen Text durch Text mit mehreren Absätzen zu ersetzen. Dazu müssen Sie die speziellen Metazeichen verwenden, die in der entsprechenden [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) -Methode beschrieben sind.

{{% alert color="primary" %}}

Normalerweise sollte das Ersetzen von Text auf Zellebene (pro Zelle) oder auf Absatzebene erfolgen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie alle Instanzen einer Textzeichenfolge in den Zellen einer gesamten Tabelle ersetzt werden:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "replace-text.h" >}}

## Klartext aus Tabelle oder Zelle extrahieren

Mit dem **Range** -Objekt können Sie auch Methoden für den gesamten Tabellenbereich aufrufen und die Tabelle als Klartext extrahieren. Verwenden Sie dazu die Eigenschaft [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/).

Das folgende Codebeispiel zeigt, wie der Textbereich einer Tabelle gedruckt wird:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "extract-text.h" >}}

Dieselbe Technik wird verwendet, um Inhalte nur aus einzelnen Tabellenzellen zu extrahieren.

Das folgende Codebeispiel zeigt, wie ein Textbereich von Zeilen- und Tabellenelementen gedruckt wird:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "print-text-range-row-and-table.h" >}}

## Arbeiten mit alternativem Tabellentext

Microsoft Word -Tabellen haben `table title` und `table description`, die eine alternative Textdarstellung der in der Tabelle enthaltenen Informationen bereitstellen.

In Aspose.Words können Sie auch einen Tabellentitel und eine Beschreibung mit den Eigenschaften [Title](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_title/) und [Description](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_description/) hinzufügen. Diese Eigenschaften sind für DOCX-Dokumente sinnvoll, die dem ISO/IEC 29500 entsprechen. Beim Speichern in Formaten vor ISO/IEC 29500 werden diese Eigenschaften ignoriert.

Das folgende Codebeispiel zeigt, wie die Eigenschaften title und description einer Tabelle festgelegt werden:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "table-title-and-description.h" >}}
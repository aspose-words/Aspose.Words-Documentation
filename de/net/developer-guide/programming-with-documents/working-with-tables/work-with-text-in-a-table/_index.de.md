---
title: Arbeiten Sie mit Text in einer Tabelle
second_title: Aspose.Words für .NET
articleTitle: Arbeiten Sie mit Text in einer Tabelle
linktitle: Arbeiten Sie mit Text in einer Tabelle
description: "Ersetzen Sie Text in einer Tabelle in C#. Extrahieren Sie einfachen Text aus einer Tabelle oder Zelle mit C#."
type: docs
weight: 60
url: /de/net/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Wie in früheren Artikeln erwähnt, enthält eine Tabelle normalerweise einfachen Text, obwohl auch andere Inhalte wie Bilder oder sogar andere Tabellen in Tabellenzellen platziert werden können.

Das Hinzufügen von Text oder anderen Inhalten zur Tabelle erfolgt mit den entsprechenden Methoden der [DocumentBuilder](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/)-Klasse und ist im **"Eine Tabelle erstellen"**-Artikel beschrieben. In diesem Artikel werden wir darüber sprechen, wie man mit Text in einer bereits vorhandenen Tabelle arbeitet.

## Ersetzen Sie Text in einer Tabelle

Die Tabelle hat wie jeder andere Knoten in Aspose.Words Zugriff auf das [Range](https://reference.aspose.com/words/de/net/aspose.words/range/)-Objekt. Mit dem Tabellenbereichsobjekt können Sie Text in einer Tabelle ersetzen.

Die Möglichkeit, beim Ersetzen Sonderzeichen zu verwenden, wird derzeit unterstützt, sodass es möglich ist, vorhandenen Text durch Text mit mehreren Absätzen zu ersetzen. Dazu müssen Sie die speziellen Metazeichen verwenden, die in der entsprechenden [Replace](https://reference.aspose.com/words/de/net/aspose.words/range/replace/)-Methode beschrieben sind.

{{% alert color="primary" %}}

Typischerweise sollte die Textersetzung auf Zellenebene (pro Zelle) oder auf Absatzebene erfolgen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie alle Instanzen einer Textzeichenfolge in den Zellen einer gesamten Tabelle ersetzt werden:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "replace-text.cs" >}}

## Extrahieren Sie einfachen Text aus einer Tabelle oder Zelle

Mithilfe des **Range**-Objekts können Sie außerdem Methoden für den gesamten Tabellenbereich aufrufen und die Tabelle als Klartext extrahieren. Verwenden Sie dazu die [Text](https://reference.aspose.com/words/de/net/aspose.words/range/text/)-Eigenschaft

Das folgende Codebeispiel zeigt, wie der Textbereich einer Tabelle gedruckt wird:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "extract-text.cs" >}}

Die gleiche Technik wird verwendet, um Inhalte nur aus einzelnen Tabellenzellen zu extrahieren.

Das folgende Codebeispiel zeigt, wie ein Textbereich aus Zeilen- und Tabellenelementen gedruckt wird:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "print-text-range-row-and-table.cs" >}}

## Arbeiten mit alternativem Tabellentext

Microsoft Word-Tabellen verfügen über `table title` und `table description`, die eine alternative Textdarstellung der in der Tabelle enthaltenen Informationen bereitstellen.

In Aspose.Words können Sie mithilfe der [Title](https://reference.aspose.com/words/de/net/aspose.words.tables/table/title/)- und [Description](https://reference.aspose.com/words/de/net/aspose.words.tables/table/description/)-Eigenschaften auch einen Tabellentitel und eine Beschreibung hinzufügen. Diese Eigenschaften sind für DOCX-Dokumente, die ISO/IEC 29500 entsprechen, von Bedeutung. Beim Speichern in Formaten vor ISO/IEC 29500 werden diese Eigenschaften ignoriert.

Das folgende Codebeispiel zeigt, wie die Titel- und Beschreibungseigenschaften einer Tabelle festgelegt werden:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "table-title-and-description.cs" >}}

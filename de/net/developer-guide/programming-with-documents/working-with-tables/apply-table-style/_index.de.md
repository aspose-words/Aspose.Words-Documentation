---
title: Ändern Sie den Tabellenstil in Word-Dokumenten
second_title: Aspose.Words für .NET
articleTitle: Tabellenstil anwenden
linktitle: Tabellenstil anwenden
description: "Erweiterte Tabellenformatierung C#. Erstellen Sie einen Tabellenstil mit C#. Wenden Sie den Tabellenstil C# an."
type: docs
weight: 80
url: /de/net/working-with-tablestyle/
---

Ein Tabellenstil definiert eine Reihe von Formatierungen, die einfach auf eine Tabelle angewendet werden können. Formatierungen wie Rahmen, Schattierung, Ausrichtung und Schriftart können in einem Tabellenstil festgelegt und für ein einheitliches Erscheinungsbild auf viele Tabellen angewendet werden.

Aspose.Words unterstützt das Anwenden eines Tabellenstils auf eine Tabelle und auch das Lesen von Eigenschaften eines beliebigen Tabellenstils. Tabellenstile bleiben beim Laden und Speichern auf folgende Weise erhalten:

- Tabellenstile in den Formaten DOCX und WordML bleiben beim Laden und Speichern in diesen Formaten erhalten
- Tabellenstile bleiben beim Laden und Speichern im DOC-Format erhalten (jedoch nicht in einem anderen Format)
- Beim Exportieren in andere Formate, Rendern oder Drucken werden Tabellenstile auf direkte Formatierungen in der Tabelle erweitert, sodass alle Formatierungen erhalten bleiben

## Erstellen Sie einen Tabellenstil

Der Benutzer kann einen neuen Stil erstellen und ihn zur Stilsammlung hinzufügen. Die [Add](https://reference.aspose.com/words/de/net/aspose.words/stylecollection/add/)-Methode wird zum Erstellen eines neuen Tabellenstils verwendet.

Das folgende Codebeispiel zeigt, wie ein neuer benutzerdefinierter Tabellenstil erstellt wird:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "create-table-style.cs" >}}

## Kopieren Sie einen vorhandenen Tabellenstil

Bei Bedarf können Sie mit der `AddCopy`-Methode einen Tabellenstil, der bereits in einem bestimmten Dokument vorhanden ist, in Ihre Stilsammlung kopieren.

Wichtig zu wissen ist, dass bei diesem Kopieren auch die verknüpften Stile mitkopiert werden.

Das folgende Codebeispiel zeigt, wie ein Stil aus einem Dokument in ein anderes Dokument importiert wird:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "copy-style-different-document.cs" >}}

## Wenden Sie einen vorhandenen Tabellenstil an

Aspose.Words stellt einen von der [Style](https://reference.aspose.com/words/de/net/aspose.words/style/)-Klasse geerbten [TableStyle](https://reference.aspose.com/words/de/net/aspose.words/tablestyle/) bereit. **TableStyle** erleichtert dem Benutzer die Anwendung verschiedener Stiloptionen wie Schattierung, Auffüllung, Einrückung, [CellSpacing](https://reference.aspose.com/words/de/net/aspose.words/tablestyle/cellspacing/) und [Font](https://reference.aspose.com/words/de/net/aspose.words/style/font/) usw.

Darüber hinaus stellt Aspose.Words die [StyleCollection](https://reference.aspose.com/words/de/net/aspose.words/stylecollection/)-Klasse und einige Eigenschaften der `Table`-Klasse bereit, um anzugeben, mit welchem Tabellenstil wir arbeiten: [Style](https://reference.aspose.com/words/de/net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/de/net/aspose.words.tables/table/styleidentifier/), [StyleName](https://reference.aspose.com/words/de/net/aspose.words.tables/table/stylename/) und [StyleOptions](https://reference.aspose.com/words/de/net/aspose.words.tables/table/styleoptions/).

Aspose.Words bietet außerdem eine [ConditionalStyle](https://reference.aspose.com/words/de/net/aspose.words/conditionalstyle/)-Klasse, die eine spezielle Formatierung darstellt, die auf einen bestimmten Bereich einer Tabelle mit einem zugewiesenen Tabellenstil angewendet wird, sowie [ConditionalStyleCollection](https://reference.aspose.com/words/de/net/aspose.words/conditionalstylecollection/), das eine Sammlung von **ConditionalStyle**-Objekten darstellt. Diese Sammlung enthält einen permanenten Satz von Elementen, die ein Element für jeden Wert des [ConditionalStyleType](https://reference.aspose.com/words/de/net/aspose.words/conditionalstyletype/)-Aufzählungstyps darstellen. Die **ConditionalStyleType**-Enumeration definiert alle möglichen Tabellenbereiche, für die eine bedingte Formatierung in einem Tabellenstil definiert werden kann.

In diesem Fall kann eine bedingte Formatierung für alle möglichen Tabellenbereiche definiert werden, die unter dem Aufzählungstyp ConditionalStyleType definiert sind.

Das folgende Codebeispiel zeigt, wie man eine bedingte Formatierung für die Kopfzeile der Tabelle definiert:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "define-conditional-formatting.cs" >}}

Sie können auch auswählen, auf welche Tabellenteile Stile angewendet werden sollen, z. B. erste Spalte, letzte Spalte, gebänderte Zeilen. Sie werden in der [TableStyleOptions](https://reference.aspose.com/words/de/net/aspose.words.tables/tablestyleoptions/)-Enumeration aufgeführt und über die [StyleOptions](https://reference.aspose.com/words/de/net/aspose.words.tables/table/styleoptions/)-Eigenschaft angewendet. Die **TableStyleOptions**-Enumeration ermöglicht eine bitweise Kombination dieser Funktionen.

Das folgende Codebeispiel zeigt, wie eine neue Tabelle mit angewendetem Tabellenstil erstellt wird:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "build-table-with-style.cs" >}}

Die folgenden Bilder zeigen eine Darstellung des **Table Styles** in Microsoft Word und der entsprechenden Eigenschaften in Aspose.Words.

![formatting-table-style-aspose-words-net](/words/net/working-with-tablestyle/applying-formatting-10.png)

## Übernehmen Sie die Formatierung aus dem Tabellenstil und wenden Sie sie als direkte Formatierung an

Aspose.Words bietet auch die [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/de/net/aspose.words/document/expandtablestylestodirectformatting/)-Methode, um die in einem Tabellenstil gefundene Formatierung zu übernehmen und sie als direkte Formatierung auf die Zeilen und Zellen der Tabelle zu erweitern. Versuchen Sie, Formatierung mit Tabellenstil und Zellenstil zu kombinieren.

{{% alert color="primary" %}}

Diese Methode überschreibt keine anderen Formatierungen, die bereits durch ein Zeilen- oder Zellenformat auf die Tabelle angewendet wurden.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man die Formatierung von Stilen auf Tabellenzeilen und Zellen als direkte Formatierung erweitert:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "expand-formatting-on-cells-and-row-from-style.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) herunterladen.

{{% /alert %}}

---
title: Arbeiten mit Tabellenstilen in Java
second_title: Aspose.Words für Java
articleTitle: Tabellenstil anwenden
linktitle: Tabellenstil anwenden
description: "Erweiterte Tabellenformatierung Java. Erstellen Sie einen Tabellenstil mit Java. Einführung in die erweiterte Tabellenformatierung, Tabellenstile mit Java."
type: docs
weight: 80
url: /de/java/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Ein Tabellenformat definiert eine Reihe von Formatierungen, die einfach auf eine Tabelle angewendet werden können. Formatierungen wie Rahmen, Schattierung, Ausrichtung und Schriftart können in einem Tabellenstil festgelegt und für ein einheitliches Erscheinungsbild auf viele Tabellen angewendet werden.

Aspose.Words unterstützt das Anwenden eines Tabellenstils auf eine Tabelle und das Lesen von Eigenschaften eines beliebigen Tabellenstils. Tabellenstile werden beim Laden und Speichern auf folgende Weise beibehalten:

- Tabellenstile in den Formaten DOCX und WordML bleiben beim Laden und Speichern in diesen Formaten erhalten
- Tabellenstile bleiben beim Laden und Speichern im DOC -Format erhalten (jedoch nicht in einem anderen Format)
- Beim Exportieren in andere Formate, beim Rendern oder Drucken werden Tabellenstile auf direkte Formatierung in der Tabelle erweitert, sodass alle Formatierungen erhalten bleiben

## Erstellen Sie einen Tabellenstil

Der Benutzer kann einen neuen Stil erstellen und ihn der Stilsammlung hinzufügen. Die Methode [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) wird verwendet, um einen neuen Tabellenstil zu erstellen.

Das folgende Codebeispiel zeigt, wie Sie einen neuen benutzerdefinierten Tabellenstil erstellen:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## Kopieren eines vorhandenen Tabellenformats

Bei Bedarf können Sie einen Tabellenstil, der bereits in einem bestimmten Dokument vorhanden ist, mit der Methode `AddCopy` in Ihre Stilsammlung kopieren.

Es ist wichtig zu wissen, dass mit diesem Kopieren auch die verknüpften Stile kopiert werden.

Das folgende Codebeispiel zeigt, wie Sie einen Stil aus einem Dokument in ein anderes Dokument importieren:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## Anwenden eines vorhandenen Tabellenstils

Aspose.Words stellt ein [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) bereit, das von der [Style](https://reference.aspose.com/words/java/com.aspose.words/style/)-Klasse geerbt wurde. **TableStyle** erleichtert dem Benutzer das Anwenden verschiedener Stiloptionen wie Schattierung, Auffüllen, Einrückung, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) und [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont) usw.

Darüber hinaus stellt Aspose.Words die Klasse [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) und einige Eigenschaften der Klasse `Table` bereit, um anzugeben, mit welchem Tabellenstil wir arbeiten werden: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), und [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words stellt auch die [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) -Klasse bereit, die eine spezielle Formatierung darstellt, die auf einen Bereich einer Tabelle mit einem zugewiesenen Tabellenstil angewendet wird, und die [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/), die eine Sammlung von **ConditionalStyle** -Objekten darstellt. Diese Auflistung enthält einen permanenten Satz von Elementen, die ein Element für jeden Wert des Aufzählungstyps [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) darstellen. Die **ConditionalStyleType**-Aufzählung definiert alle möglichen Tabellenbereiche, für die bedingte Formatierungen in einem Tabellenstil definiert werden können.

In diesem Fall kann eine bedingte Formatierung für alle möglichen Tabellenbereiche definiert werden, die unter dem Aufzählungstyp ConditionalStyleType definiert sind.

Das folgende Codebeispiel zeigt, wie Sie die bedingte Formatierung für die Kopfzeile der Tabelle definieren:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

Sie können auch auswählen, auf welche Tabellenteile Stile angewendet werden sollen, z. B. erste Spalte, letzte Spalte, gebänderte Zeilen. Sie sind in der [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/)-Aufzählung aufgeführt und werden über die Eigenschaft [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) angewendet. Die **TableStyleOptions**-Aufzählung ermöglicht eine bitweise Kombination dieser Merkmale.

Das folgende Codebeispiel zeigt, wie Sie eine neue Tabelle mit einem angewendeten Tabellenstil erstellen:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

Die folgenden Bilder zeigen eine Darstellung der **Table Styles** in Microsoft Word und ihrer entsprechenden Eigenschaften in Aspose.Words.

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## Übernehmen Sie die Formatierung aus dem Tabellenstil und wenden Sie sie als direkte Formatierung an

Aspose.Words stellt auch die [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting)-Methode bereit, um Formatierungen, die in einem Tabellenstil gefunden wurden, zu übernehmen und sie als direkte Formatierung auf die Zeilen und Zellen der Tabelle zu erweitern. Versuchen Sie, die Formatierung mit Tabellenstil und Zellenstil zu kombinieren.

{{% alert color="primary" %}}

Diese Methode überschreibt keine andere Formatierung, die bereits über ein Zeilen- oder Zellenformat auf die Tabelle angewendet wurde.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie die Formatierung von Stilen als direkte Formatierung auf Tabellenzeilen und -zellen erweitern:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}

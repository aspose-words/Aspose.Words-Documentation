---
title: Arbeiten mit Tischstilen in Java
second_title: Aspose.Words für Java
articleTitle: Anwenden Tisch Stil
linktitle: Anwenden Tisch Stil
description: "Erweiterte Tabellenformatierung Java. Erstellen Sie einen Tischstil mit Java. Einführung in die erweiterte Tabellenformatierung, Tabellenstilen mit Java."
type: docs
weight: 80
url: /de/java/working-with-tablestyle/
---

Ein Tischstil definiert eine Reihe von Formatierungen, die einfach auf eine Tabelle aufgetragen werden können. Formatierung wie Grenzen, Schattierung, Ausrichtung und Schriftart können in einem Tischstil eingestellt und auf viele Tische für ein konsistentes Aussehen angewendet werden.

Aspose.Words unterstützt die Anwendung eines Tischstils auf eine Tabelle und auch das Lesen von Eigenschaften jeder Tabelle Stil. Tabellestile werden während des Ladens und Sparens auf folgende Weise erhalten:

- Tisch-Stile in DOCX- und WordML-Formaten werden beim Laden und Speichern auf diese Formate erhalten
- Tisch-Stile werden beim Laden und Speichern im DOC-Format erhalten (aber nicht auf andere Formate)
- Ja. Beim Export in andere Formate, Rendern oder Drucken werden die Tabellenstilen auf die direkte Formatierung in der Tabelle erweitert, so dass alle Formatierungen erhalten bleiben

## Einen Tischstil erstellen

Der Benutzer kann einen neuen Stil erstellen und ihn zur Stilsammlung hinzufügen. Die [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) Die Methode wird verwendet, um einen neuen Tischstil zu erstellen.

Das folgende Codebeispiel zeigt, wie man einen neuen Benutzer definierten Tabellenstil erstellt:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## Kopieren Sie einen vorhandenen Tischstil

Wenn nötig, können Sie einen Tischstil kopieren, der bereits in einem bestimmten Dokument in Ihre Stilsammlung existiert, indem Sie die `AddCopy` Methode.

Es ist wichtig zu wissen, dass mit diesem Kopieren auch die verknüpften Stile kopiert werden.

Das folgende Codebeispiel zeigt, wie man einen Stil von einem Dokument in ein anderes Dokument importiert:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## Bewerben Sie einen bestehenden Tischstil

Aspose.Words bietet [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) von der [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) Klasse. **TableStyle** erleichtert den Benutzer, verschiedene Stiloptionen wie z.B. Schattierung, Polsterung, Einbuchtung anzuwenden, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) und [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), usw.

Außerdem, Aspose.Words bietet [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) Klasse und ein paar Eigenschaften der `Table` Klasse, um anzugeben, mit welchem Tischstil wir arbeiten: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), und [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words bietet [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) Klasse, die eine spezielle Formatierung darstellt, die auf einen Bereich einer Tabelle mit einem zugewiesenen Tabellenstil angewendet wird, und [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) die eine Sammlung darstellt **ConditionalStyle** Objekte. Diese Sammlung enthält eine ständige Menge von Gegenständen, die für jeden Wert der [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) Aufzählungstyp. Die **ConditionalStyleType** Die Aufzählung definiert alle möglichen Tabellenbereiche, auf die eine bedingte Formatierung in einem Tischstil definiert werden kann.

In diesem Fall kann eine bedingte Formatierung für alle möglichen Tischbereiche definiert werden, die unter dem Enumerationstyp ZustandalStyleType definiert sind.

Das folgende Codebeispiel zeigt, wie die bedingte Formatierung für die Kopfzeile der Tabelle definiert werden kann:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

Sie können auch wählen, welche Tischteile Stile auf, wie erste Spalte, letzte Spalte, gebänderte Zeilen anwenden. Sie sind in der [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) Aufzählung und werden durch die [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) Eigentum. Die **TableStyleOptions** Die Aufzählung ermöglicht eine bitweise Kombination dieser Merkmale.

Das folgende Codebeispiel zeigt, wie man eine neue Tabelle mit einem verwendeten Tabellenstil erstellt:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

Die nachfolgenden Bilder zeigen eine Darstellung der **Table Styles** in Microsoft Word und ihre entsprechenden Eigenschaften in Aspose.Words.

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## Nehmen Sie Formatierung von Table Style und verwenden Sie es als Direktformatierung

Aspose.Words stellt auch die [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) Methode, Formatierung auf einem Tischstil gefunden zu nehmen und erweitert es auf die Zeilen und Zellen der Tabelle als direkte Formatierung. Versuchen Sie, Formatierung mit Tischstil und Zellstil zu kombinieren.

{{% alert color="primary" %}}

Diese Methode wird keine andere Formatierung überschreiben, die bereits über ein Zeilen- oder Zellenformat auf die Tabelle aufgebracht wurde.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie die Formatierung von Stilen auf Tabellenzeilen und Zellen als direkte Formatierung erweitert werden kann:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}
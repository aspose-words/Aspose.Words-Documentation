---
title: Tabelle Übersicht
second_title: Aspose.Words für Java
articleTitle: Tabelle Übersicht
linktitle: Tabelle Übersicht
description: "Arbeiten mit Tabellen und deren Komponenten wie Zellen, Zeilen, Spalten in Aspose.Words für Java. Wie man mit Tischen arbeitet Java."
type: docs
weight: 10
url: /de/java/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words ist eine Klassenbibliothek für die serverseitige Verarbeitung von Dokumenten in verschiedenen Formaten – PDF, HTML, verschiedene Microsoft Word Formate und andere – und unterstützt Tabellen auf folgende Weise:

* Tabellen in einem Dokument werden während der offenen/save und Umrechnungen erhalten
* Es ist möglich, Tabelle, Inhalt und seine Formatierung zu bearbeiten und dann die Änderungen in einer Datei in einem Format zu exportieren, das Tabellen unterstützt

In diesem Artikel erfahren wir mehr über Tabellenstruktur, Zellen, Zeilen und Spalten, die von Aspose.Words, und die Einzelheiten der Arbeit mit solchen Tabellen.

## Tabelle Struktur

Wie bereits erwähnt, besteht die Tabelle aus solchen Elementen wie **Cell**, **Row** und **Column**. Dies sind Konzepte, die allen Tabellen im Allgemeinen gemeinsam sind, unabhängig vom Dokumentenformat.

Dies ist ein gemeinsames Beispiel für eine Tabelle in einer Microsoft Word Dokument:

![tables-overview-aspose-words-java-1](/words/java/table-overview/tables-overview-1.png)

### Tabelle Nodes

Eine Tabelle aus jedem Dokument, das in Aspose.Words wird als **Tabelle Knoten**. Die Tabelle kann als Kind von:

- Haupttext
- eine inline Geschichte wie einen Kommentar oder eine Fußnote
- Zellen, wenn ein Tisch in einem anderen Tisch geschachtelt ist

{{% alert color="primary" %}}

Beachten Sie, dass Tabellen in andere Tabellen in jede Tiefe geschachtelt werden können.

{{% /alert %}}

### Tabelle Inhalt

Der Tischknoten enthält keine realen Inhalte – stattdessen ist er ein Container für andere solche Knoten, die den Inhalt ausmachen:

- Ja. **Table** enthält viele **Row** Knoten. Die Tabelle bietet alle üblichen Knotenelemente, so dass Sie die Tabelle im Dokument frei bewegen, ändern und entfernen können.
- Ja. **Row** stellt eine einzelne Tischzeile dar und enthält viele **Cell** Knoten. Darüber hinaus die **Row** liefert Elemente, die definieren, wie die Zeile angezeigt wird, wie Höhe und Ausrichtung.
- Ja. **Cell** das, was enthält true Inhalt in der Tabelle sichtbar und besteht aus **Paragraph** und andere Blocklevel-Knoten. Zusätzlich können Zellen geschachtelte Tabellen enthalten.

![tables-overview-aspose-words-java-2](/words/java/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

Sie können die Struktur von Tabellenknoten in einem Dokument mit dem **DocumentExplorer**.

{{% /alert %}}

### Leerer Absatz nach Tabelle

Das obige Bild zeigt, dass das Dokument eine Tabelle aus mehreren Zeilen enthält, die wiederum aus zwei Zellen besteht. Jede der beiden Zellen umfasst einen Absatz, der der Behälter für den formatierten Text der Zelle ist.

Es ist auch erwähnenswert, dass die Trennung von zwei aufeinanderfolgenden Tabellen in einem Dokument mindestens einen leeren Absatz nach der Tabelle erfordert. Ohne einen solchen Absatz würden aufeinander folgende Tabellen miteinander verbunden werden. Dieses Verhalten ist in beiden identisch Microsoft Word und Aspose.Words.

Aspose.Words hat eine Reihe von Klassen im Zusammenhang mit Tabellen – [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/), und andere.

## Siehe auch

* [Aspose.Words Document Object Model (DOM)](/words/de/java/aspose-words-document-object-model/)
* [Logische Ebenen von Nodes in einem Dokument](/words/de/java/logical-levels-of-nodes-in-a-document/)

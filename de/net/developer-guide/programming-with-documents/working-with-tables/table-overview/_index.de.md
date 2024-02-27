---
title: Tabellenübersicht
second_title: Aspose.Words für .NET
articleTitle: Tabellenübersicht
linktitle: Tabellenübersicht
description: "Arbeiten Sie mit Tabellen und ihren Komponenten wie Zellen, Zeilen und Spalten in Aspose.Words für .NET. So arbeiten Sie mit Tabellen in C#."
type: docs
weight: 10
url: /de/net/table-overview/
---

Aspose.Words ist eine Klassenbibliothek, die für die serverseitige Verarbeitung von Dokumenten in verschiedenen Formaten – PDF, HTML, verschiedene Microsoft Word-Formate und andere – entwickelt wurde und Tabellen auf folgende Weise unterstützt:

* Tabellen in einem Dokument bleiben beim Öffnen/Speichern und bei Konvertierungen erhalten
* Es ist möglich, Tabellen, Inhalte und deren Formatierung zu bearbeiten und die Änderungen dann in eine Datei in einem Format zu exportieren, das Tabellen unterstützt

In diesem Artikel erfahren wir mehr über die Tabellenstruktur, die von Aspose.Words unterstützten Zellen, Zeilen und Spalten sowie die Details der Arbeit mit solchen Tabellen.

## Tabellenstruktur

Wie bereits erwähnt, besteht die Tabelle aus Elementen wie **Cell**, **Row** und **Column**. Hierbei handelt es sich um Konzepte, die im Allgemeinen allen Tabellen unabhängig vom Dokumentformat gemeinsam sind.

Dies ist ein häufiges Beispiel für eine Tabelle in einem Microsoft Word-Dokument:

![tables-overview-aspose-words-net-1](/words/net/table-overview/tables-overview-1.png)

### Tabellenknoten

Eine Tabelle aus einem beliebigen in Aspose.Words geladenen Dokument wird als **Tabellenknoten** importiert. Die Tabelle kann als Kind gefunden werden von:

- Haupt Text
– eine Inline-Story wie einen Kommentar oder eine Fußnote
– Zellen, wenn eine Tabelle in einer anderen Tabelle verschachtelt ist

{{% alert color="primary" %}}

Beachten Sie, dass Tabellen beliebig tief in andere Tabellen verschachtelt werden können.

{{% /alert %}}

### Tabelleninhalt

Der Tabellenknoten enthält keinen echten Inhalt – stattdessen ist er ein Container für andere solcher Knoten, aus denen der Inhalt besteht:

- **Table** enthält viele **Row**-Knoten. Die Tabelle stellt alle üblichen Knotenelemente bereit, sodass Sie die Tabelle im Dokument frei verschieben, ändern und entfernen können.
- **Row** stellt eine einzelne Tabellenzeile dar und enthält viele **Cell**-Knoten. Darüber hinaus stellt das **Row** Elemente bereit, die definieren, wie die Zeile angezeigt wird, beispielsweise Höhe und Ausrichtung.
- **Cell** enthält den in der Tabelle sichtbaren true-Inhalt und besteht aus **Paragraph** und anderen Knoten auf Blockebene. Darüber hinaus können Zellen verschachtelte Tabellen enthalten.

![tables-overview-aspose-words-net-2](/words/net/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

Sie können die Struktur von Tabellenknoten in einem Dokument mithilfe von **DocumentExplorer** überprüfen.

{{% /alert %}}

### Leerer Absatz nach Tabelle

Das Bild oben zeigt, dass das Dokument eine Tabelle mit mehreren Zeilen enthält, die wiederum aus zwei Zellen besteht. Jede der beiden Zellen enthält einen Absatz, der den Container für den formatierten Text der Zelle darstellt.

Beachten Sie auch, dass zum Trennen zweier aufeinanderfolgender Tabellen in einem Dokument mindestens ein leerer Absatz nach der Tabelle erforderlich ist. Ohne einen solchen Absatz würden aufeinanderfolgende Tabellen zu einer zusammengefügt. Dieses Verhalten ist in Microsoft Word und Aspose.Words identisch.

In Aspose.Words sind alle tabellenbezogenen Klassen und Eigenschaften im [Aspose.Words.Tables](https://reference.aspose.com/words/net/aspose.words.tables/)-Namespace enthalten.

## Siehe auch

* [Aspose.Words Document Object Model (DOM)](/words/de/net/aspose-words-document-object-model/)
* [Logische Ebenen von Knoten in einem Dokument](/words/de/net/logical-levels-of-nodes-in-a-document/)
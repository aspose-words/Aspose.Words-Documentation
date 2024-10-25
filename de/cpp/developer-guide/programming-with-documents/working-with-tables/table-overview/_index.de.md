---
title: Tabellenübersicht
second_title: Aspose.Words für C++
articleTitle: Tabellenübersicht
linktitle: Tabellenübersicht
description: "Arbeiten Sie mit Tabellen und ihren Komponenten wie Zellen, Zeilen, Spalten in Aspose.Words für C++. Wie man mit Tabellen in C++ arbeitet."
type: docs
weight: 10
url: /de/cpp/table-overview/
---

Aspose.Words ist eine Klassenbibliothek, die für die serverseitige Verarbeitung von Dokumenten in verschiedenen Formaten - PDF, HTML, verschiedenen Microsoft Word –Formaten und anderen - entwickelt wurde und Tabellen auf folgende Weise unterstützt:

* tabellen in einem Dokument bleiben beim Öffnen/Speichern und bei Konvertierungen erhalten
* es ist möglich, Tabellen, Inhalte und deren Formatierung zu bearbeiten und die Änderungen dann in eine Datei in einem Format zu exportieren, das Tabellen unterstützt

In diesem Artikel erfahren Sie mehr über Tabellenstruktur, Zellen, Zeilen und Spalten, die von Aspose.Words unterstützt werden, und die Details zum Arbeiten mit solchen Tabellen.

## Tabellenstruktur

Wie bereits erwähnt, besteht die Tabelle aus Elementen wie **Cell**, **Row** und **Column**. Dies sind Konzepte, die allen Tabellen im Allgemeinen gemeinsam sind, unabhängig vom Dokumentformat.

Dies ist ein häufiges Beispiel für eine Tabelle in einem Microsoft Word-Dokument:

![tables-overview-aspose-words-cpp-1](tables-overview-1.png)

### Tabellenknoten

Eine Tabelle aus einem beliebigen Dokument, das in Aspose.Words geladen wurde, wird als **Table node** importiert. Der Tisch kann als Kind von gefunden werden:

- Haupttext
- eine Inline-Story wie ein Kommentar oder eine Fußnote
- zellen, wenn eine Tabelle in einer anderen Tabelle verschachtelt ist

{{% alert color="primary" %}}

Beachten Sie, dass Tabellen beliebig tief in andere Tabellen verschachtelt werden können.

{{% /alert %}}

### Tabelleninhalt

Der Tabellenknoten enthält keinen echten Inhalt - stattdessen ist er ein Container für andere solche Knoten, aus denen der Inhalt besteht:

- **Table** enthält viele **Row** Knoten. Die Tabelle enthält alle üblichen Knotenelemente, mit denen Sie die Tabelle im Dokument frei verschieben, ändern und entfernen können.
- **Row** stellt eine einzelne Tabellenzeile dar und enthält viele **Cell** Knoten. Darüber hinaus enthält **Row** Elemente, die definieren, wie die Zeile angezeigt wird, z. B. Höhe und Ausrichtung.
- **Cell** enthält den wahren Inhalt, der in der Tabelle sichtbar ist, und besteht aus einem **Paragraph** und anderen Knoten auf Blockebene. Darüber hinaus können Zellen verschachtelte Tabellen enthalten.

![tables-overview-aspose-words-cpp-2](tables-overview-2.png)

{{% alert color="primary" %}}

Sie können die Struktur von Tabellenknoten in einem Dokument mit der **DocumentExplorer** überprüfen.

{{% /alert %}}

### Leerer Absatz nach Tabelle

Das obige Bild zeigt, dass das Dokument eine Tabelle mit mehreren Zeilen enthält, die wiederum aus zwei Zellen besteht. Jede der beiden Zellen enthält einen Absatz, der den Container für den formatierten Text der Zelle darstellt.

Es ist auch erwähnenswert, dass zum Trennen von zwei aufeinanderfolgenden Tabellen in einem Dokument mindestens ein leerer Absatz nach der Tabelle erforderlich ist. Ohne einen solchen Absatz würden aufeinanderfolgende Tabellen zu einer zusammengefügt. Dieses Verhalten ist sowohl in Microsoft Word als auch in Aspose.Words identisch.

In Aspose.Words sind alle Klassen und Eigenschaften, die sich auf Tabellen beziehen, im Namespace [Aspose.Words.Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/) enthalten.

## Siehe auch

* [Aspose.Words Dokumentobjektmodell (DOM)](/words/cpp/aspose-words-document-object-model/)
* [Logische Ebenen von Knoten in einem Dokument](/words/cpp/logical-levels-of-nodes-in-a-document/)
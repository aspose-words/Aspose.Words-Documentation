---
title: Logische Ebenen von Knoten in einem Dokument in Java
second_title: Aspose.Words für Java
articleTitle: Logische Ebenen von Knoten in einem Dokument
linktitle: Logische Ebenen von Knoten in einem Dokument
type: docs
description: "In der Dokumentation Aspose.Words für Java werden logische Ebenen von Knoten erwähnt - Blockebene, Inline-Ebene oder Zeilenebene. Die Knotenebene wird verwendet, um die Position im Dokumentbaum zu beschreiben, an der der Knoten typischerweise auftritt."
weight: 10
url: /de/java/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Diese Dokumentation bezieht sich manchmal auf eine Gruppe von Knotenklassen, die zu einer "Ebene" in einem Dokument gehören, z. B. "Blockebene", "Inline-Ebene" (auch als "inline" bezeichnet) oder "Zeilenebene" Knoten. Diese Ebenen in einem Dokument werden rein logisch unterschieden und nicht explizit durch Vererbung oder andere Aspose.Words DOM Mittel ausgedrückt. Die Knotenebene wird verwendet, um die Stelle im Dokumentbaum zu beschreiben, an der der Knoten typischerweise auftreten würde.

Im vorherigen Artikel haben wir bereits über die Beziehung zwischen Knoten und die Tatsache gesprochen, dass nicht alle Knoten untergeordneten Knoten sein dürfen. Beispielsweise kann Cell nur ein untergeordnetes Zeilenelement sein, und eine Zeile kann nur ein untergeordnetes Tabellenelement sein usw. Diese Beziehungen gelten auch für die logische Unterteilung von Knoten in Ebenen im Dokument.

In den folgenden Abschnitten werden die logischen Ebenen von Knoten in Aspose.Words und die Klassen, die zu jeder Ebene gehören, beschrieben.

## Logische Ebene für Dokumente und Abschnitte

Ein Word-Dokument besteht aus einem oder mehreren Abschnitten, die durch die Klasse [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) dargestellt und durch Abschnittsumbrüche getrennt werden. Ein Abschnitt kann seine eigene Seitengröße, Ränder, Ausrichtung, Anzahl der Textspalten sowie Kopf- und Fußzeilen definieren.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) und [Abschnitt](https://www.aspose.com/api/words/java/com.aspose.words/section) Ebenenknoten haben die Struktur wie im folgenden Diagramm gezeigt.

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

Ein Abschnitt enthält den Haupttext sowie Kopf- und Fußzeilen für die ersten, geraden und ungeraden Seiten. Diese verschiedenen "Textflüsse" werden *stories* genannt.

In Aspose.Words enthält der **Section**-Knoten die [Body](https://reference.aspose.com/words/java/com.aspose.words/body/)- und [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/)-Story-Knoten. Das **Body** -Objekt speichert den Haupttext. Die **HeaderFooter** -Objekte speichern den Text für jede Kopf- und Fußzeile. Der Text einer Story besteht aus Absätzen und Tabellen, die jeweils durch die Objekte **Paragraph** und **Table** der Blockebene dargestellt werden.

Zusätzlich kann jedes Word-Dokument ein Glossar enthalten, das durch den Knoten [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) in Aspose.Words dargestellt wird. Ein Glossardokument enthält [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/)-, [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT)- und [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT)-Einträge.

**GlossaryDocument**

## Logische Ebene blockieren

Knoten auf Blockebene stellen Container für Inhalte und Inhaltssteuerelemente dar und können in den untergeordneten Knoten der Dokumentstruktur in den folgenden Knoten vorkommen:

- Körper
- Header
- Fußzeile
- Fußnote
- Kommentar
- Form
- GroupShape
- Zelle
- StructuredDocumentTag

Knoten auf Blockebene werden durch die folgenden Klassen dargestellt:

- [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) und [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), die wichtigsten Knoten auf Blockebene
- Lesezeichen, die sowohl auf Blockebene als auch auf Inline-Ebene vorkommen
- [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), die benutzerdefiniertes Markup darstellen und sowohl Inhalts- als auch Inhaltssteuerelemente enthalten können

Das folgende Diagramm zeigt die Elemente auf Blockebene.

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## Logische Inline-Ebene

Knoten auf Inline-Ebene stellen den eigentlichen Inhalt des Dokuments dar und können in den folgenden Containern enthalten sein:

- Absatz - der häufigste Behälter
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- StructuredDocumentTag

Inline-Level-Elemente werden durch die folgenden Klassen dargestellt:

- [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) - unterschiedlich formatierte Textläufe
- [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) und [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) stellen Lesezeichen dar
- [CommentRangeStart]https://reference.aspose.com/words/java/com.aspose.words/comment/RangeStart), [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) und [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) stellen Anmerkungen dar
- [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) und [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/), die Feldzeichen darstellen, und [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/), die Wortfelder darstellen
- [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) steht für Sonderzeichen im Dokument
- [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) und [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) stellen Formen, Zeichnungen, Bilder usw. dar.
- SmartTag und StructuredDocumentTag stellen benutzerdefiniertes Markup dar

Das folgende Diagramm zeigt die Knotenstruktur auf Inline-Ebene.

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

Formen in Microsoft Word umfassen Bürografiken AutoShapes, Textfelder, Bilder, OLE-Objekte und ActiveX-Steuerelemente, die alle mit der Klasse `Shape` dargestellt werden. Einige Formen können auch Text enthalten, sodass Formknoten in Aspose.Words Knoten auf Blockebene enthalten können.

Formen können mit GroupShape Knoten ineinander gruppiert werden.

{{% /alert %}}

{{% alert color="primary" %}}

Fußnoten und Kommentare können Text enthalten, daher können Fußnoten- und Kommentarknoten in Aspose.Words Knoten auf Blockebene enthalten.

{{% /alert %}}

## Tabellen-, Zeilen- und Zellknotenebene

Die Tabelle besteht aus Knoten von Zeilen und Zellen. Tabellenelemente werden durch die folgenden Klassen dargestellt:

- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) steht für eine Tabellenzeile
- [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) steht für eine Tabellenzelle
- StructuredDocumentTag stellt benutzerdefiniertes Markup dar

Das folgende Diagramm zeigt die Knotenstrukturen der Tabellen-, Zeilen- und Zellebenen.

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>

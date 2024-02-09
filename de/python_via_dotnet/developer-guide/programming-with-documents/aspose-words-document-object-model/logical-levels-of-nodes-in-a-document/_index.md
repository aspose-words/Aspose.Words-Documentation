---
title: Logische Ebenen von Knoten in einem Dokument
second_title: Aspose.Words für Python via .NET
articleTitle: Logische Ebenen von Knoten in einem Dokument
linktitle: Logische Ebenen von Knoten in einem Dokument
type: docs
description: "In der Aspose.Words for Python via .NET-Dokumentation werden logische Ebenen von Knoten erwähnt – Blockebene, Inline-Ebene oder Zeilenebene. Die Knotenebene wird verwendet, um die Position im Dokumentbaum zu beschreiben, an der der Knoten normalerweise auftritt."
weight: 10
url: /de/python-net/logical-levels-of-nodes-in-a-document/
---

In dieser Dokumentation wird manchmal auf eine Gruppe von Knotenklassen Bezug genommen, die zu einer "Ebene" in einem Dokument gehören, z. B. Knoten auf "Blockebene", "Inline-Ebene" (auch bekannt als "Inline") oder "Zeilenebene".. Diese Ebenen in einem Dokument werden rein logisch unterschieden und nicht explizit durch Vererbung oder andere Aspose.Words-DOM-Mittel ausgedrückt. Die Knotenebene wird verwendet, um die Stelle im Dokumentbaum zu beschreiben, an der der Knoten normalerweise auftreten würde.

Im vorherigen Artikel haben wir bereits über die Beziehung zwischen Knoten und die Tatsache gesprochen, dass nicht alle Knoten einem beliebigen Knoten untergeordnet sein dürfen. Beispielsweise kann [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) nur ein untergeordnetes [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)-Dokument sein, und ein [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) kann nur ein untergeordnetes [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)-Dokument sein und so weiter. Diese Beziehungen gelten auch für die logische Unterteilung von Knoten in Ebenen im Dokument.

In den folgenden Abschnitten werden die logischen Ebenen von Knoten in Aspose.Words und die Klassen beschrieben, die zu jeder Ebene gehören.

## Logische Ebene des Dokuments und Abschnitts

Ein Word-Dokument besteht aus einem oder mehreren Abschnitten, die durch die [Section](https://reference.aspose.com/words/python-net/aspose.words/section/)-Klasse dargestellt und durch Abschnittswechsel getrennt werden. Ein Abschnitt kann seine eigene Seitengröße, Ränder, Ausrichtung, Anzahl der Textspalten sowie Kopf- und Fußzeilen definieren.

Knoten auf [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)- und [Section](https://reference.aspose.com/words/python-net/aspose.words/section/)-Ebene haben die im folgenden Diagramm dargestellte Struktur.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="Aspose-Wörter auf Dokument- und Abschnittsebene" style="width:700px"/>

Ein Abschnitt enthält den Haupttext sowie Kopf- und Fußzeilen für die erste, gerade und ungerade Seite. Diese verschiedenen "Textflüsse" werden *stories* genannt.

In Aspose.Words enthält der [Section](https://reference.aspose.com/words/python-net/aspose.words/section/)-Knoten die [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)- und [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)-Story-Knoten. Das [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)-Objekt speichert den Haupttext. Die [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)-Objekte speichern den Text für jede Kopf- und Fußzeile. Der Text jeder Geschichte besteht aus Absätzen und Tabellen, die jeweils durch die [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)- und [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)-Objekte der Blockebene dargestellt werden.

Darüber hinaus kann jedes Word-Dokument ein Glossar enthalten, das durch den [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/)-Knoten in Aspose.Words dargestellt wird. Ein Glossardokument enthält [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/)-[BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text)- und [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct)-Einträge.

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) enthält [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/)-Knoten, die verschiedene Arten von Glossardokumenteinträgen darstellen. Jeder [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) enthält Abschnitte, die in Dokumente eingefügt, entfernt und kopiert werden können.

## Logische Ebene blockieren

Knoten auf Blockebene stellen Container für Inhalte und Inhaltssteuerelemente dar und können in den untergeordneten Knoten der Dokumentstruktur in den folgenden Knoten vorkommen:

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Knoten auf Blockebene werden durch die folgenden Klassen dargestellt:

- [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) und [Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), die wichtigsten Knoten auf Blockebene
- [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/), das sowohl auf Blockebene als auch auf Inline-Ebene auftritt
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/), das benutzerdefiniertes Markup darstellt und sowohl Inhalte als auch Inhaltssteuerelemente enthalten kann

Das folgende Diagramm zeigt Elemente auf Blockebene.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/block-level.png" alt="Aspose-Wörter auf Blockebene" style="width:550px"/>

## Inline-logische Ebene

Knoten auf Inline-Ebene stellen den tatsächlichen Inhalt des Dokuments dar und können in den folgenden Containern enthalten sein:

- [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) – der am häufigsten verwendete Container
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Elemente auf Inline-Ebene werden durch die folgenden Klassen dargestellt:

- [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) – anders formatierte Textläufe
- [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) und [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) repräsentieren Lesezeichen
- [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) und [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) repräsentieren Anmerkungen
- [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) und [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/), die Feldzeichen darstellen, und [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) stellen Word-Felder dar
- [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) repräsentiert Sonderzeichen im Dokument
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) und [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) repräsentieren Formen, Zeichnungen, Bilder usw.
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) und [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) stellen benutzerdefiniertes Markup dar

Das folgende Diagramm zeigt die Knotenstruktur auf Inline-Ebene.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="Inline-Level-Aspose-Wörter" style="width:785px"/>

{{% alert color="primary" %}}

Zu den Formen in Microsoft Word gehören Office Art AutoShapes, Textfelder, Bilder, OLE-Objekte und ActiveX-Steuerelemente, die alle mithilfe der `Shape`-Klasse dargestellt werden. Einige Formen können auch Text enthalten, sodass Formknoten in Aspose.Words Knoten auf Blockebene enthalten können.

Mithilfe von [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)-Knoten können Formen ineinander gruppiert werden.

{{% /alert %}}

{{% alert color="primary" %}}

Fußnoten und Kommentare können Text enthalten, daher können [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)- und [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)-Knoten in Aspose.Words Knoten auf Blockebene enthalten.

{{% /alert %}}

## Tabellen-, Zeilen- und Zellenknotenebene

Die Tabelle besteht aus Knoten von Zeilen und Zellen. [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)-Elemente werden durch die folgenden Klassen dargestellt:

- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) repräsentiert eine Tabellenzeile
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) repräsentiert eine Tabellenzelle
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) steht für benutzerdefiniertes Markup

Das folgende Diagramm zeigt die Knotenstrukturen der Ebenen [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) und [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/).

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="Tabelle-Zeile-Zellen-Aspose-Wörter" style="width:910px"/>
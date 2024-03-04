---
title: Logische Ebenen von Knoten in einem Dokument in C#
second_title: Aspose.Words für .NET
articleTitle: Logische Ebenen von Knoten in einem Dokument
linktitle: Logische Ebenen von Knoten in einem Dokument
type: docs
description: "In der Aspose.Words for .NET-Dokumentation werden logische Ebenen von Knoten erwähnt – Blockebene, Inline-Ebene oder Zeilenebene unter Verwendung von C#. Die Knotenebene wird verwendet, um die Position im Dokumentbaum zu beschreiben, an der der Knoten normalerweise auftritt."
weight: 10
url: /de/net/logical-levels-of-nodes-in-a-document/
---

In dieser Dokumentation wird manchmal auf eine Gruppe von Knotenklassen Bezug genommen, die zu einer "Ebene" in einem Dokument gehören, z. B. Knoten auf "Blockebene", "Inline-Ebene" (auch bekannt als "Inline") oder "Zeilenebene".. Diese Ebenen in einem Dokument werden rein logisch unterschieden und nicht explizit durch Vererbung oder andere Aspose.Words-DOM-Mittel ausgedrückt. Die Knotenebene wird verwendet, um die Stelle im Dokumentbaum zu beschreiben, an der der Knoten normalerweise auftreten würde.

Im vorherigen Artikel haben wir bereits über die Beziehung zwischen Knoten und die Tatsache gesprochen, dass nicht alle Knoten einem beliebigen Knoten untergeordnet sein dürfen. Beispielsweise kann "Cell" nur ein untergeordnetes Zeilenelement sein, und eine Zeile kann nur ein untergeordnetes Tabellenelement sein und so weiter. Diese Beziehungen gelten auch für die logische Unterteilung von Knoten in Ebenen im Dokument.

In den folgenden Abschnitten werden die logischen Ebenen von Knoten in Aspose.Words und die Klassen beschrieben, die zu jeder Ebene gehören.

## Logische Ebene des Dokuments und Abschnitts

Ein Word-Dokument besteht aus einem oder mehreren Abschnitten, die durch die [Section](https://reference.aspose.com/words/de/net/aspose.words/section/)-Klasse dargestellt und durch Abschnittswechsel getrennt werden. Ein Abschnitt kann seine eigene Seitengröße, Ränder, Ausrichtung, Anzahl der Textspalten sowie Kopf- und Fußzeilen definieren.

Knoten auf [Document](https://reference.aspose.com/words/de/net/aspose.words/document/)- und [Section](https://reference.aspose.com/words/de/net/aspose.words/section/)-Ebene haben die im folgenden Diagramm dargestellte Struktur.

<img src="/words/net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="Aspose-Wörter auf Dokument- und Abschnittsebene" style="width:700px"/>

Ein Abschnitt enthält den Haupttext sowie Kopf- und Fußzeilen für die erste, gerade und ungerade Seite. Diese verschiedenen "Textflüsse" werden *stories* genannt.

In Aspose.Words enthält der **Section**-Knoten die [Body](https://reference.aspose.com/words/de/net/aspose.words/body/)- und [HeaderFooter](https://reference.aspose.com/words/de/net/aspose.words/headerfooter/)-Story-Knoten. Das **Body**-Objekt speichert den Haupttext. Die **HeaderFooter**-Objekte speichern den Text für jede Kopf- und Fußzeile. Der Text jeder Geschichte besteht aus Absätzen und Tabellen, die jeweils durch die **Paragraph**- und **Table**-Objekte der Blockebene dargestellt werden.

Darüber hinaus kann jedes Word-Dokument ein Glossar enthalten, das durch den [GlossaryDocument](https://reference.aspose.com/words/de/net/aspose.words.buildingblocks/glossarydocument/)-Knoten in Aspose.Words dargestellt wird. Ein Glossardokument enthält [BuildingBlocks](https://reference.aspose.com/words/de/net/aspose.words.buildingblocks/glossarydocument/buildingblocks/)-, [AutoText](https://reference.aspose.com/words/de/net/aspose.words.buildingblocks/buildingblocktype/)- und [AutoCorrect](https://reference.aspose.com/words/de/net/aspose.words.buildingblocks/buildingblocktype/)-Einträge.

**GlossaryDocument** enthält [BuildingBlock](https://reference.aspose.com/words/de/net/aspose.words.buildingblocks/buildingblock/)-Knoten, die verschiedene Arten von Glossardokumenteinträgen darstellen. Jedes **BuildingBlock** enthält Abschnitte, die in Dokumente eingefügt, entfernt und kopiert werden können.

## Logische Ebene blockieren

Knoten auf Blockebene stellen Container für Inhalte und Inhaltssteuerelemente dar und können in den untergeordneten Knoten der Dokumentstruktur in den folgenden Knoten vorkommen:

- Körper
- Header
- Fusszeile
- Fußnote
- Kommentar
- Form
- GroupShape
- Zelle
- StructuredDocumentTag

Knoten auf Blockebene werden durch die folgenden Klassen dargestellt:

- [Tables](https://reference.aspose.com/words/de/net/aspose.words.tables/table/) und [Paragraphs](https://reference.aspose.com/words/de/net/aspose.words/paragraph/), die wichtigsten Knoten auf Blockebene
- Lesezeichen, die sowohl auf Blockebene als auch auf Inline-Ebene vorkommen
- [StructuredDocumentTag](https://reference.aspose.com/words/de/net/aspose.words.markup/structureddocumenttag/), das benutzerdefiniertes Markup darstellt und sowohl Inhalte als auch Inhaltssteuerelemente enthalten kann

Das folgende Diagramm zeigt Elemente auf Blockebene.

<img src="/words/net/logical-levels-of-nodes-in-a-document/block-level.png" alt="Aspose-Wörter auf Blockebene" style="width:550px"/>

## Inline-logische Ebene

Knoten auf Inline-Ebene stellen den tatsächlichen Inhalt des Dokuments dar und können in den folgenden Containern enthalten sein:

- Absatz – der häufigste Container
- [SmartTag](https://reference.aspose.com/words/de/net/aspose.words.markup/smarttag/)
- StructuredDocumentTag

Elemente auf Inline-Ebene werden durch die folgenden Klassen dargestellt:

- [Run](https://reference.aspose.com/words/de/net/aspose.words/run/) – anders formatierte Textläufe
- [BookmarkStart](https://reference.aspose.com/words/de/net/aspose.words/bookmarkstart/) und [BookmarkEnd](https://reference.aspose.com/words/de/net/aspose.words/bookmarkend/) repräsentieren Lesezeichen
- [CommentRangeStart](https://reference.aspose.com/words/de/net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/de/net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/de/net/aspose.words/comment/) und [Footnote](https://reference.aspose.com/words/de/net/aspose.words.notes/footnote/) repräsentieren Anmerkungen
- [FieldStart](https://reference.aspose.com/words/de/net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/de/net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/de/net/aspose.words.fields/fieldseparator/) und [FieldEnd](https://reference.aspose.com/words/de/net/aspose.words.fields/fieldend/), die Feldzeichen darstellen, und [FormField](https://reference.aspose.com/words/de/net/aspose.words.fields/formfield/) stellen Word-Felder dar
- [SpecialChar](https://reference.aspose.com/words/de/net/aspose.words/specialchar/) repräsentiert Sonderzeichen im Dokument
- [Shape](https://reference.aspose.com/words/de/net/aspose.words.drawing/shape/) und [GroupShape](https://reference.aspose.com/words/de/net/aspose.words.drawing/groupshape/) repräsentieren Formen, Zeichnungen, Bilder usw.
– SmartTag und StructuredDocumentTag repräsentieren benutzerdefiniertes Markup

Das folgende Diagramm zeigt die Knotenstruktur auf Inline-Ebene.

<img src="/words/net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="Inline-Level-Aspose-Wörter" style="width:785px"/>

{{% alert color="primary" %}}

Zu den Formen in Microsoft Word gehören Office Art AutoShapes, Textfelder, Bilder, OLE-Objekte und ActiveX-Steuerelemente, die alle mithilfe der `Shape`-Klasse dargestellt werden. Einige Formen können auch Text enthalten, sodass Formknoten in Aspose.Words Knoten auf Blockebene enthalten können.

Mithilfe von GroupShape-Knoten können Formen ineinander gruppiert werden.

{{% /alert %}}

{{% alert color="primary" %}}

Fußnoten und Kommentare können Text enthalten, daher können Fußnoten- und Kommentarknoten in Aspose.Words Knoten auf Blockebene enthalten.

{{% /alert %}}

## Tabellen-, Zeilen- und Zellenknotenebene

Die Tabelle besteht aus Knoten von Zeilen und Zellen. Tabellenelemente werden durch die folgenden Klassen repräsentiert:

- [Row](https://reference.aspose.com/words/de/net/aspose.words.tables/row/) repräsentiert eine Tabellenzeile
- [Cell](https://reference.aspose.com/words/de/net/aspose.words.tables/cell/) repräsentiert eine Tabellenzelle
– StructuredDocumentTag stellt benutzerdefiniertes Markup dar

Das folgende Diagramm zeigt die Knotenstrukturen der Tabellen-, Zeilen- und Zellenebene.

<img src="/words/net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="Tabelle-Zeile-Zelle-Aspose-Wörter" style="width:910px"/>

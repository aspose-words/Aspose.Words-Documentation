---
title: Logische Ebenen von Nodes in einem Dokument in Java
second_title: Aspose.Words für Java
articleTitle: Logische Ebenen von Nodes in einem Dokument
linktitle: Logische Ebenen von Nodes in einem Dokument
type: docs
description: "In Aspose.Words für Java Die Dokumentation erwähnte logische Ebenen von Knoten – Blockebene, Inline-Ebene oder Zeilenebene. Die Knotenebene wird verwendet, um den Ort im Dokumentbaum zu beschreiben, wo der Knoten typischerweise auftritt."
weight: 10
url: /de/java/logical-levels-of-nodes-in-a-document/
---

Diese Dokumentation bezieht sich manchmal auf eine Gruppe von Knotenklassen, die zu einer "Ebene" in einem Dokument gehören, wie "Block-Level", "Inline-Level" (auch "Inline" genannt), oder "row-Level"-Knoten. Diese Ebenen in einem Dokument werden rein logisch differenziert und nicht explizit durch Vererbung oder andere ausgedrückt. Aspose.Words DOM Mittel. Die Knotenebene wird verwendet, um den Ort in dem Dokumentbaum zu beschreiben, wo der Knoten typischerweise auftreten würde.

Im vorherigen Artikel haben wir bereits über die Beziehung zwischen Knoten und die Tatsache gesprochen, dass nicht alle Knoten ein Kind von Knoten sein dürfen. Beispielsweise kann Cell nur ein Row-Kind sein, und eine Row kann nur ein Tischkind sein, und so weiter. Diese Zusammenhänge gelten auch für die logische Aufteilung von Knoten in Ebenen im Dokument.

Die folgenden Abschnitte beschreiben die logischen Ebenen von Knoten in Aspose.Words und die Klassen, die zu jeder Ebene gehören.

## Dokument- und Abschnittslogikebene

A Word-Dokument besteht aus einem oder mehreren Abschnitten, die durch die [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) Klasse und durch Schnittbrüche getrennt. Ein Abschnitt kann seine eigene Seitengröße, Margen, Orientierung, Anzahl der Textspalten und Kopfzeilen und Fußzeilen definieren.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) und [Abschnitt](https://www.aspose.com/api/words/java/com.aspose.words/section) Pegelknoten haben die Struktur wie im folgenden Diagramm gezeigt.

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

Ein Abschnitt enthält den Haupttext, sowie Kopfzeilen und Fußzeilen für die ersten, sogar und seltsamen Seiten. Diese verschiedenen "Flows" des Textes werden aufgerufen *stories*.

In Aspose.Words, die **Section** Der Knoten enthält [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) und [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) Erzählknoten. Die **Body** Objekt speichert den Haupttext. Die **HeaderFooter** Objekte speichern den Text für jede Kopfzeile und Fußzeile. Der Text jeder Geschichte besteht aus Absätzen und Tabellen, die jeweils durch die **Paragraph** und **Table** Objekte der Block-Ebene.

Zusätzlich, jede Word-Dokument kann einen Glossar enthalten, der durch die [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) Knoten in Aspose.Words. Ein Glossardokument enthält [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT), und [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) Einträge.

**GlossaryDocument** einschließlich [BuildingBlock](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/) Knoten, die verschiedene Arten von Glossardokumenteinträgen darstellen. Jedes **BuildingBlock** enthält Abschnitte, die in Dokumente eingefügt, entfernt und kopiert werden können.

## Block Logischer Level

Block-Level-Knoten stellen Behälter für Inhalts- und Inhaltskontrollen dar und können in den Dokumentenbaum-Knoten in den folgenden Knoten auftreten:

- Körper
- Header
- Fußzeile
- Fußnote
- Kommentar
- Form
- Ja. GroupForm
- Zelle
- StrukturierterDocumentTag

Block-Level-Knoten werden durch die folgenden Klassen dargestellt:

- Ja. [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) und [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), die wichtigsten Block-Level-Knoten sind
- Lesezeichen, die sowohl auf der Blockebene als auch auf der Inline-Ebene auftreten
- Ja. [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), die benutzerdefinierte Markierung darstellen und sowohl Inhalte als auch Inhaltskontrollen enthalten können

Das folgende Diagramm zeigt die Block-Level-Elemente.

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## Inline Logische Ebene

Inline-Level-Knoten stellen den tatsächlichen Inhalt des Dokuments dar und können in den folgenden Behältern enthalten sein:

- Absatz – der häufigste Behälter
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- StrukturierterDocumentTag

Inline-Level-Elemente werden durch folgende Klassen dargestellt:

- Ja. [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) – Textabläufe anders formatiert
- Ja. [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) und [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) Buchzeichen darstellen
- Ja. [KommentarRangeStart]https://reference.aspose.com/words/java/com.aspose.words/comment/RangeStart), [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) und [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) Annotationen darstellen
- Ja. [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) und [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) die Feldzeichen darstellen, und [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) für Wortfelder
- Ja. [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) stellt Sonderzeichen im Dokument dar
- Ja. [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) und [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Formen, Zeichnungen, Bilder usw. darstellen.
- SmartTag und strukturiertes Dokument Tag vertreten benutzerdefinierte markup

Das folgende Diagramm zeigt die inline-level-Knotenstruktur.

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

Formen in Microsoft Word einschließlich Office Art AutoShapes, Textfelder, Bilder, OLE-Objekte und ActiveX-Steuerungen, die alle mit der `Shape` Klasse. Einige Formen können auch Text enthalten, so Shape Nodes in Aspose.Words kann Block-Level-Knoten enthalten.

Formen können miteinander gruppiert werden, indem GroupFormknoten.

{{% /alert %}}

{{% alert color="primary" %}}

Fußnoten und Kommentare können Text enthalten, also Fußnoten und Kommentarknoten in Aspose.Words kann Block-Level-Knoten enthalten.

{{% /alert %}}

## Tabellen-, Zeilen- und Zellknotenebene

Die Tabelle besteht aus Knoten von Zeilen und Zellen. Tabelleselemente sind durch folgende Klassen dargestellt:

- Ja. [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) eine Tabellenzeile
- Ja. [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) für eine Tischzelle
- Strukturierte Dokumente Tag vertreten benutzerdefinierte markup

Das folgende Diagramm zeigt die Knotenstrukturen der Tabellen-, Zeilen- und Zellebenen.

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>

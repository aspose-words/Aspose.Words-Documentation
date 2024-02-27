---
title: Livelli logici dei nodi in un documento
second_title: Aspose.Words per Python via .NET
articleTitle: Livelli logici dei nodi in un documento
linktitle: Livelli logici dei nodi in un documento
type: docs
description: "Nella documentazione Aspose.Words per Python via .NET vengono menzionati i livelli logici dei nodi: livello di blocco, livello in linea o livello di riga. Il livello del nodo viene utilizzato per descrivere la posizione nell'albero del documento in cui si trova generalmente il nodo."
weight: 10
url: /it/python-net/logical-levels-of-nodes-in-a-document/
---

Questa documentazione a volte fa riferimento a un gruppo di classi di nodi come appartenenti a un "livello" in un documento, come i nodi "a livello di blocco", "a livello in linea" (noto anche come "in linea") o "a livello di riga". Questi livelli in un documento sono differenziati in modo puramente logico e non sono espressi esplicitamente tramite ereditarietà o altri mezzi Aspose.Words DOM. Il livello del nodo viene utilizzato per descrivere la posizione nell'albero del documento in cui normalmente si trova il nodo.

Nell'articolo precedente abbiamo già parlato della relazione tra i nodi e del fatto che non tutti i nodi possono essere figli di qualche nodo. Ad esempio, [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) può essere solo un figlio [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) e un [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) può essere solo un figlio [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) e così via. Queste relazioni sono applicabili anche per la divisione logica dei nodi in livelli nel documento.

Le sezioni seguenti descrivono i livelli logici dei nodi in Aspose.Words e le classi che appartengono a ciascun livello.

## Livello logico del documento e della sezione

Un documento Word è costituito da una o più sezioni, rappresentate dalla classe [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) e separate da interruzioni di sezione. Una sezione può definire le proprie dimensioni di pagina, margini, orientamento, numero di colonne di testo, intestazioni e piè di pagina.

I nodi di livello [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) e [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) hanno la struttura come mostrato nello schema seguente.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="parole-aspose-a-livello-di-documento e-sezione" style="width:700px"/>

Una sezione contiene il testo principale, nonché intestazioni e piè di pagina per le prime pagine, pari e dispari. Questi diversi "flussi" di testo sono chiamati *stories*.

In Aspose.Words, il nodo [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) contiene i nodi della storia [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) e [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/). L'oggetto [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) memorizza il testo principale. Gli oggetti [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) memorizzano il testo per ciascuna intestazione e piè di pagina. Il testo di qualsiasi storia è costituito da paragrafi e tabelle, rispettivamente rappresentati dagli oggetti [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) e [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) del Block-level.

Inoltre, ogni documento Word può contenere un glossario, rappresentato dal nodo [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) in Aspose.Words. Un documento di glossario contiene voci [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/) [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text) e [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct).

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) include nodi [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) che rappresentano diversi tipi di voci di documenti di glossario. Ogni [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) contiene sezioni che possono essere inserite, rimosse e copiate nei documenti.

## Blocca il livello logico

I nodi a livello di blocco rappresentano contenitori per contenuto e controlli del contenuto e possono verificarsi nei nodi secondari dell'albero del documento nei seguenti nodi:

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

I nodi a livello di blocco sono rappresentati dalle seguenti classi:

- [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) e [Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), che sono i nodi a livello di blocco più importanti
- [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/), che si verifica sia a livello di blocco che a livello inline
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/), che rappresenta markup personalizzato e può contenere sia contenuto che controlli del contenuto

Il diagramma seguente mostra gli elementi a livello di blocco.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/block-level.png" alt="parole-aspose-a-livello-di-blocco" style="width:550px"/>

## Livello logico in linea

I nodi a livello in linea rappresentano il contenuto effettivo del documento e possono essere contenuti nei seguenti contenitori:

- [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) – il contenitore più comune
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Gli elementi a livello inline sono rappresentati dalle seguenti classi:

- [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) – sequenze di testo formattate diversamente
- [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) e [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) rappresentano i segnalibri
- [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) e [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) rappresentano le annotazioni
- [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) e [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) che rappresentano i caratteri del campo e [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) rappresentano i campi di Word
- [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) rappresenta caratteri speciali nel documento
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) e [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) rappresentano forme, disegni, immagini, ecc.
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) e [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) rappresentano markup personalizzato

Il diagramma seguente mostra la struttura dei nodi a livello inline.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="parole-aspose-a-livello-inline" style="width:785px"/>

{{% alert color="primary" %}}

Le forme in Microsoft Word includono forme di Office Art AutoShapes, caselle di testo, immagini, oggetti OLE e controlli ActiveX, tutti rappresentati utilizzando la classe `Shape`. Alcune forme possono contenere anche testo, quindi i nodi Forma in Aspose.Words possono contenere nodi a livello di blocco.

Le forme possono essere raggruppate l'una nell'altra utilizzando i nodi [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/).

{{% /alert %}}

{{% alert color="primary" %}}

Le note a piè di pagina e i commenti possono contenere testo, pertanto i nodi [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) e [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) in Aspose.Words possono contenere nodi a livello di blocco.

{{% /alert %}}

## Livello di tabella, riga e nodo cella

La tabella è composta da nodi di righe e celle. Gli elementi [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) sono rappresentati dalle seguenti classi:

- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) rappresenta una riga della tabella
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) rappresenta una cella di tabella
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) rappresenta il markup personalizzato

Il diagramma seguente mostra le strutture dei nodi dei livelli [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) e [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/).

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="tabella-riga-cella-aspose-parole" style="width:910px"/>
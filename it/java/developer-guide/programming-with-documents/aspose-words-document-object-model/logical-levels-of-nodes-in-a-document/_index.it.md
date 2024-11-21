---
title: Livelli logici dei nodi in un documento in Java
second_title: Aspose.Words per Java
articleTitle: Livelli logici dei nodi in un documento
linktitle: Livelli logici dei nodi in un documento
type: docs
description: "In Aspose.Words per Java documentazione citata livelli logici di nodi – livello di blocco, livello in linea, o livello di riga. Il livello del nodo viene utilizzato per descrivere la posizione nell'albero del documento in cui si verifica il nodo."
weight: 10
url: /it/java/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Questa documentazione a volte si riferisce a un gruppo di classi di nodo come appartenenti a un "livello" in un documento, come "livello di blocco", "livello in linea" (noto anche come "inline"), o nodi "livello di freccia". Questi livelli in un documento sono differenziati puramente logicamente e non sono esplicitamente espressi da eredità o altri Aspose.Words DOM significa. Il livello del nodo viene utilizzato per descrivere il posto nell'albero del documento dove il nodo si verifica tipicamente.

Nell'articolo precedente, abbiamo già parlato del rapporto tra i nodi e il fatto che non tutti i nodi sono permessi essere un bambino di qualsiasi nodo. Ad esempio, Cell può essere solo un bambino di fila, e una riga può essere solo un bambino di Tabella, e così via. Queste relazioni sono applicabili anche per la divisione logica dei nodi a livelli nel documento.

Le seguenti sezioni descrivono i livelli logici dei nodi Aspose.Words e le classi che appartengono a ogni livello.

## Documento e Sezione Livello Logico

A Il documento di Word consiste in una o più sezioni, rappresentate dalla [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) classe e separata da interruzioni di sezione. Una sezione può definire la propria dimensione della pagina, i margini, l'orientamento, il numero di colonne di testo, e intestazioni e piè di pagina.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) e [Sezione](https://www.aspose.com/api/words/java/com.aspose.words/section) i nodi di livello hanno la struttura come mostrato nel seguente diagramma.

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

Una sezione contiene il testo principale, così come intestazioni e piè di pagina per le prime pagine, anche e dispari. Questi diversi "flussi" di testo sono chiamati *stories*.

In Aspose.Words, il **Section** il nodo contiene il [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) e [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) nodi di storia. The **Body** oggetto memorizza il testo principale. The **HeaderFooter** oggetti memorizzare il testo per ogni intestazione e piè di pagina. Il testo di qualsiasi storia è costituito da paragrafi e tabelle, rispettivamente rappresentate dal **Paragraph** e **Table** oggetti del livello Block.

Inoltre, ciascuno Il documento di Word può contenere un glossario, che è rappresentato dal [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) nodo in Aspose.Words. Un documento glossario contiene [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT), e [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) voci.

**GlossaryDocument** include [BuildingBlock](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/) nodi che rappresentano diversi tipi di documenti glossari. Ogni **BuildingBlock** contiene sezioni che possono essere inserite, rimosse e copiate in documenti.

## Livello Logico Blocco

I nodi a livello di blocco rappresentano contenitori per i controlli dei contenuti e dei contenuti, e possono verificarsi nei nodi dei bambini dell'albero di documento nei seguenti nodi:

- Corpo
- Intestazione
- Footer
- Nota a piè di pagina
- Commento
- Forma
- No. GroupForma
- Cellula
- StrutturatoDocumentTag

I nodi a livello di blocco sono rappresentati dalle seguenti classi:

- No. [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) e [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), che sono i nodi di livello di blocco più importanti
- Segnalibri, che si verifica sia a livello di blocco che a livello in linea
- No. [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), che rappresentano il markup personalizzato e possono contenere sia i controlli dei contenuti che dei contenuti

Il diagramma seguente mostra gli elementi a livello di blocco.

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## Livello Logico Inline

I nodi di livello in linea rappresentano il contenuto effettivo del documento e possono essere contenuti nei seguenti contenitori:

- Paragrafo – il contenitore più comune
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- StrutturatoDocumentTag

Gli elementi di livello in linea sono rappresentati dalle seguenti classi:

- No. [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) – funzioni di testo formattato in modo diverso
- No. [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) e [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) rappresenta i segnalibri
- No. [CommentRangeStart]https://reference.aspose.com/words/java/com.aspose.words/comment/RangeStart), [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) e [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) rappresentano annotazioni
- No. [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) e [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) che rappresentano caratteri di campo, e [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) rappresentazione Campi di parole
- No. [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) rappresenta caratteri speciali nel documento
- No. [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) e [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) rappresentano forme, disegni, immagini, ecc.
- SmartTag e strutturatoDocument Tag rappresenta il markup personalizzato

Il diagramma seguente mostra la struttura dei nodi di livello inline.

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

Forme in Microsoft Word includono Office Art AutoShapes, caselle di testo, immagini, oggetti OLE e controlli ActiveX, tutti rappresentati utilizzando `Shape` classe. Alcune forme possono anche contenere testo, quindi Forma nodi in Aspose.Words può contenere nodi a livello di blocco.

Le forme possono essere raggruppate tra loro utilizzando GroupNodi di forma.

{{% /alert %}}

{{% alert color="primary" %}}

Note a piè di pagina e commenti possono contenere testo, quindi note a piè di pagina e nodi di commento in Aspose.Words può contenere nodi a livello di blocco.

{{% /alert %}}

## Tabella, riga e livello del nodo cellulare

La tabella consiste di nodi di righe e celle. Gli elementi da tavola sono rappresentati dalle seguenti classi:

- No. [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) rappresenta una riga di tabella
- No. [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) rappresenta una cella da tavolo
- Documento strutturato Tag rappresenta il markup personalizzato

Il diagramma seguente mostra le strutture dei nodi della tabella, della riga e dei livelli delle celle.

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>

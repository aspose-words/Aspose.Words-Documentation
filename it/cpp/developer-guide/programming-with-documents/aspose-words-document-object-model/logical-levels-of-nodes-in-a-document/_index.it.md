---
title: Livelli logici di nodi in un documento in C++
second_title: Aspose.Words per C++
articleTitle: Livelli logici di nodi in un documento
linktitle: Livelli logici di nodi in un documento
type: docs
description: "In Aspose.Words per C++ la documentazione menzionava i livelli logici dei nodi: livello di blocco, livello in linea o livello di riga. Il livello di nodo viene utilizzato per descrivere la posizione nella struttura del documento in cui il nodo è in genere si verificano."
weight: 10
url: /it/cpp/logical-levels-of-nodes-in-a-document/
---

Questa documentazione a volte si riferisce a un gruppo di classi di nodi come appartenenti a un" livello "in un documento, come" livello di blocco"," livello inline "(noto anche come" inline") o nodi" livello di riga". Questi livelli in un documento sono differenziati puramente logicamente e non sono esplicitamente espressi dall'ereditarietà o da altri mezzi DOM Aspose.Words. Il livello di nodo viene utilizzato per descrivere la posizione nell'albero del documento in cui si verificherebbe in genere il nodo.

Nell'articolo precedente, abbiamo già parlato della relazione tra i nodi e del fatto che non tutti i nodi possono essere figli di qualsiasi nodo. Ad esempio, la cella può essere solo un figlio di riga e una riga può essere solo un figlio di tabella e così via. Queste relazioni sono applicabili anche per la divisione logica dei nodi in livelli nel documento.

Le sezioni seguenti descrivono i livelli logici dei nodi in Aspose.Words e le classi che appartengono a ciascun livello.

## Livello logico del documento e della sezione

Un documento Word è costituito da una o più sezioni, rappresentate dalla classe [Section](https://reference.aspose.com/words/cpp/aspose.words/section) e separate da interruzioni di sezione. Una sezione può definire le proprie dimensioni della pagina, i margini, l'orientamento, il numero di colonne di testo e intestazioni e piè di pagina.

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) e [Sezione](https://www.aspose.com/api/words/cpp/aspose.words/section/) i nodi di livello hanno la struttura come mostrato nel diagramma seguente.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-cpp" style="width:700px"/>

Una sezione contiene il testo principale, nonché intestazioni e piè di pagina per le prime, pari e dispari pagine. Questi diversi "flussi" di testo sono chiamati *stories*.

In Aspose.Words, il nodo **Section** contiene i nodi storia [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) e [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/). L'oggetto **Body** memorizza il testo principale. Gli oggetti **HeaderFooter** memorizzano il testo per ogni intestazione e piè di pagina. Il testo di qualsiasi storia è costituito da paragrafi e tabelle, rispettivamente rappresentati dagli oggetti **Paragraph** e **Table** del livello di blocco.

Inoltre, ogni documento di Word può contenere un glossario, che è rappresentato dal nodo [GlossaryDocument](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/) in Aspose.Words. Un documento glossario contiene [BuildingBlocks](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/get_buildingblocks/), [AutoText](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/) e [AutoCorrect](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/) voci.

**GlossaryDocument**

## Blocco livello logico

I nodi a livello di blocco rappresentano contenitori per il contenuto e i controlli del contenuto e possono verificarsi nei nodi figlio della struttura del documento nei nodi seguenti:

- Corpo
- Intestazione
- Piè
- Nota a piè di pagina
- Commentare
- Forma
- GroupShape
- Cellula
- StructuredDocumentTag

I nodi a livello di blocco sono rappresentati dalle seguenti classi:

- [Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) e [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), che sono i nodi a livello di blocco più importanti
- Segnalibri, che si verificano sia a livello di blocco che a livello di linea
- [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/), che rappresentano il markup personalizzato e possono contenere sia il contenuto che i controlli del contenuto

Il diagramma seguente mostra gli elementi a livello di blocco.

<img src="block-level.png" alt="block-level-aspose-words-cpp" style="width:550px"/>

## Livello logico in linea

I nodi a livello di linea rappresentano il contenuto effettivo del documento e possono essere contenuti nei seguenti contenitori:

- Paragrafo-il contenitore più comune
- [SmartTag](https://reference.aspose.com/words/cpp/aspose.words.markup/smarttag/)
- StructuredDocumentTag

Gli elementi a livello inline sono rappresentati dalle seguenti classi:

- [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) – esecuzione di testo formattato in modo diverso
- [BookmarkStart](https://reference.aspose.com/words/cpp/aspose.words/bookmarkstart/) e [BookmarkEnd](https://reference.aspose.com/words/cpp/aspose.words/bookmarkend) rappresentano i segnalibri
- [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) e [Footnote](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/) rappresentano le annotazioni
- [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldseparator/) e [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldend/) che rappresentano i caratteri di campo e [FormField](https://reference.aspose.com/words/cpp/aspose.words.fields/formfield/) rappresentano i campi di parole
- [SpecialChar](https://reference.aspose.com/words/cpp/aspose.words/specialchar/) rappresenta i caratteri speciali nel documento
- [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) e [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) rappresentano forme, disegni, immagini, ecc.
- SmartTag e StructuredDocumentTag rappresentano il markup personalizzato

Il diagramma seguente mostra la struttura dei nodi a livello di linea.

<img src="inline-level.png" alt="inline-level-aspose-words-cpp" style="width:785px"/>

{{% alert color="primary" %}}

Le forme in Microsoft Word includono Office Art AutoShapes, caselle di testo, immagini, oggetti OLE e controlli ActiveX, tutti rappresentati utilizzando la classe `Shape`. Alcune forme possono anche contenere testo, quindi i nodi Forma in Aspose.Words possono contenere nodi a livello di blocco.

Le forme possono essere raggruppate l'una all'interno dell'altra utilizzando i nodi GroupShape.

{{% /alert %}}

{{% alert color="primary" %}}

Le note e i commenti possono contenere testo, pertanto i nodi Nota e Commento in Aspose.Words possono contenere nodi a livello di blocco.

{{% /alert %}}

## Livello di tabella, riga e nodo cella

La tabella è composta da nodi di righe e celle. Gli elementi della tabella sono rappresentati dalle seguenti classi:

- [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) rappresenta una riga di tabella
- [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) rappresenta una cella di tabella
- StructuredDocumentTag rappresenta il markup personalizzato

Il diagramma seguente mostra le strutture dei nodi dei livelli di tabella, Riga e cella.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-cpp" style="width:910px"/>

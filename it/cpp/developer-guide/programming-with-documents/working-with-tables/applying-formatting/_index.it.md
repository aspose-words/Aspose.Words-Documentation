---
title: Formattazione della tabella in C++
second_title: Aspose.Words per C++
articleTitle: Applica formattazione
linktitle: Applica formattazione
description: "Formattazione della tabella in dettaglio utilizzando C++. Utilizzo di C++ per formattare ogni parte della tabella."
type: docs
weight: 70
url: /it/cpp/applying-formatting/
timestamp: 2024-10-21-11-17-44
---

Ogni elemento di una tabella può essere applicato con una formattazione diversa. Ad esempio, la formattazione della tabella verrà applicata all'intera tabella, la formattazione delle righe solo a righe particolari, la formattazione delle celle solo a determinate celle.

Aspose.Words fornisce una ricca API per recuperare e applicare la formattazione a una tabella. È possibile utilizzare i nodi [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) e [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) per impostare la formattazione.

In questo articolo, parleremo di come applicare la formattazione a diversi nodi della tabella e quali impostazioni di formattazione della tabella Aspose.Words supportano.

## Applicare la formattazione a diversi nodi

In questa sezione, esamineremo l'applicazione della formattazione a vari nodi della tabella.

### Formattazione a livello di tabella

Per applicare la formattazione a una tabella, è possibile utilizzare le proprietà disponibili sul nodo **Table** corrispondente utilizzando le classi [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/) e [TableCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Si noti che la tabella deve avere almeno una riga prima che le proprietà della tabella possano essere applicate. Ciò significa che quando si costruisce una tabella con [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), questa formattazione deve essere eseguita dopo la prima chiamata a [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/), o dopo che la prima riga viene aggiunta alla tabella o quando i nodi vengono inseriti direttamente nel DOM.

{{% /alert %}}

Le immagini seguenti mostrano una rappresentazione delle caratteristiche di formattazione **Table** in Microsoft Word e delle loro proprietà corrispondenti in Aspose.Words.

![formattin-features-table-level-aspose-words-cpp](applying-formatting-1.png)

![formatting-table-options-aspose-words-cpp](applying-formatting-2.png)

Nell'esempio di codice seguente viene illustrato come applicare un bordo contorno a una tabella:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-outline-border.h" >}}

L'esempio di codice seguente mostra come creare una tabella con tutti i bordi abilitati (griglia):

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "build-table-with-borders.h" >}}

### Formattazione a livello di riga

**Livello riga**

{{% alert color="primary" %}}

Si noti che un **Row** può essere solo un nodo figlio di un **Table**. Allo stesso tempo, deve esserci almeno un **Cell** nel **Row** in modo che la formattazione possa essere applicata ad esso.

{{% /alert %}}

Le immagini seguenti mostrano una rappresentazione delle caratteristiche di formattazione **Row** in Microsoft Word e delle loro proprietà corrispondenti in Aspose.Words.

![formatting-row-level-aspose-words-cpp](applying-formatting-3.png)

L'esempio di codice seguente mostra come modificare la formattazione della riga della tabella:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-row-formatting.h" >}}

### Formattazione a livello di cella

La formattazione a livello di cella è controllata dalle classi [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) e [CellCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

Si noti che un **Cell** può essere solo un nodo figlio di un **Row**. Allo stesso tempo, deve esserci almeno un [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) nel **Cell** in modo che la formattazione possa essere applicata ad esso.

Oltre a **Paragraph**, è anche possibile inserire un **Table** in un **Cell**.

{{% /alert %}}

Le immagini seguenti mostrano una rappresentazione delle caratteristiche di formattazione **Cell** in Microsoft Word e delle loro proprietà corrispondenti in Aspose.Words.

![formatting-cell-level-aspose-words-cpp](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-cpp](applying-formatting-5.png)

L'esempio di codice seguente mostra come modificare la formattazione di una cella di tabella:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-cell-formatting.h" >}}

Il seguente esempio di codice mostra come impostare la quantità di spazio (in punti) da aggiungere a sinistra / in alto / a destra / in basso del contenuto della cella:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "cell-padding.h" >}}

## Specificare le altezze delle righe

Il modo più semplice per impostare l'altezza della riga è usare **DocumentBuilder**. Utilizzando le proprietà **RowFormat** appropriate, è possibile impostare l'impostazione di altezza predefinita o applicare un'altezza diversa per ogni riga della tabella.

In Aspose.Words, l'altezza della riga della tabella è controllata da:

- la proprietà altezza riga- [Height](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_height/)
- la proprietà regola altezza per la riga specificata- [HeightRule](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_heightrule/)

Allo stesso tempo, è possibile impostare un'altezza diversa per ogni riga: ciò consente di controllare ampiamente le impostazioni della tabella.

{{% alert color="primary" %}}

Le opzioni della regola per specificare l'altezza di un oggetto possono essere impostate utilizzando l'enumerazione [HeightRule](https://reference.aspose.com/words/cpp/aspose.words/heightrule/).

{{% /alert %}}

Nell'esempio di codice riportato di seguito viene illustrato come creare una tabella contenente una singola cella e applicare la formattazione delle righe:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-row-formatting.h" >}}

## Specificare le larghezze di tabella e cella

Una tabella in un documento Microsoft Word fornisce diversi modi per ridimensionare la tabella e le singole celle. Queste proprietà consentono un controllo considerevole sull'aspetto e sul comportamento della tabella, in modo che Aspose.Words supporti il comportamento delle tabelle, come in Microsoft Word.

È importante sapere che gli elementi della tabella presentano diverse proprietà che possono influire sul modo in cui vengono calcolate le larghezze della tabella complessiva e delle singole celle:

- Larghezza preferita sul tavolo
- Larghezza preferita sulle singole celle
- Consentire l'autofit sul tavolo

Questo articolo descrive in dettaglio come funzionano le varie proprietà di calcolo della larghezza della tabella e come ottenere il pieno controllo sul calcolo della larghezza della tabella. Questo è
particolarmente utile sapere in questi casi in cui il layout della tabella non appare come previsto.

{{% alert color="primary" %}}

Nella maggior parte dei casi, la cella preferita è consigliata rispetto alla larghezza della tabella. La larghezza della cella preferita è più in linea con le specifiche del formato DOCX e con il modello Aspose.Words.

La larghezza della cella è in realtà un valore calcolato per il formato DOCX. La larghezza effettiva della cella può dipendere da molte cose. Ad esempio, la modifica dei margini della pagina o della larghezza della tabella preferita può influire sulla larghezza effettiva della cella.

La larghezza di cella preferita è una proprietà di cella memorizzata nel documento. Non dipende da nulla e non cambia quando si modifica la tabella o altre proprietà della cella.

{{% /alert %}}

{{% alert color="primary" %}}

Tutte le proprietà e i metodi descritti in questo articolo sono correlati al funzionamento delle tabelle in Microsoft Word. Quindi, nella maggior parte dei casi, se si sta costruendo la tabella a livello di codice ma è difficile creare la tabella desiderata, è possibile provare prima a crearla visivamente in Microsoft Word e quindi copiare semplicemente i valori di formattazione nell'applicazione.

{{% /alert %}}

### Come utilizzare la larghezza preferita

La larghezza desiderata di una tabella o di singole celle viene definita tramite la proprietà larghezza preferita, che è la dimensione che un elemento si sforza di adattare. Cioè, la larghezza preferita può essere specificata per l'intera tabella o per singole celle. In alcune situazioni potrebbe non essere possibile adattare esattamente questa larghezza, ma la larghezza effettiva sarà vicina a questo valore nella maggior parte dei casi.

Il tipo e il valore di larghezza preferiti appropriati vengono impostati utilizzando i metodi della classe [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/):

- il metodo [Auto](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/auto/) per specificare auto o"nessuna larghezza preferita"
- il metodo [FromPercent](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompercent/) per specificare una larghezza percentuale
- il metodo [FromPoints](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompoints/) per specificare la larghezza in punti

Le immagini sottostanti mostrano una rappresentazione di *preferred width setting features* in Microsoft Word e delle loro proprietà corrispondenti in Aspose.Words.

![formatting-table-properties-aspose-words-cpp](applying-formatting-8.png)

Un esempio di come queste opzioni vengono applicate a una tabella reale in un documento può essere visto nell'immagine qui sotto.

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

Prima di poter utilizzare la larghezza preferita in una tabella, è necessario assicurarsi che la tabella contenga almeno una riga. Questo perché tale formattazione della tabella in un documento Microsoft Word o in un documento creato in Aspose.Words viene memorizzata nelle righe della tabella.

{{% /alert %}}

#### Specificare la larghezza della tabella o della cella preferita

In Aspose.Words, le larghezze di tabella e cella vengono impostate utilizzando le proprietà [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) e [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/), con le opzioni disponibili nell'enumerazione [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/):

- **Auto**, che equivale a nessun set di larghezza preferito
- **Percent**, che si adatta all'elemento rispetto allo spazio disponibile nella dimensione della finestra o del contenitore e ricalcola il valore quando la larghezza disponibile cambia
- **Points**, che corrisponde a un elemento della larghezza specificata in punti

{{% alert color="primary" %}}

Per impostazione predefinita, una tabella può essere descritta come adattata al 100% dello spazio disponibile sulla pagina. In questo caso, ciò significa che la tabella cercherà di occupare lo spazio tra i margini della pagina sinistra e destra.

{{% /alert %}}

L'uso della proprietà [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) regolerà la sua larghezza preferita rispetto al suo contenitore: pagina, colonna di testo o cella di tabella esterna se si tratta di una tabella nidificata.

L'esempio di codice seguente mostra come impostare la tabella su auto-fit al 50% della larghezza della pagina:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-to-page-width.h" >}}

L'uso della proprietà [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) su una data cella regolerà la sua larghezza preferita.

Il seguente esempio di codice mostra come impostare le diverse impostazioni di larghezza preferite:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "preferred-width-settings.h" >}}

#### Trova il tipo di larghezza e il valore preferiti

È possibile utilizzare le proprietà [Type](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) e [Value](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) per trovare i dettagli di larghezza preferiti della tabella o della cella desiderata.

L'esempio di codice seguente mostra come recuperare il tipo di larghezza preferito di una cella di tabella:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "retrieve-preferred-width-type.h" >}}

### Come impostare Autofit

La proprietà [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) consente alle celle di una tabella di crescere e ridursi in base a un criterio selezionato. Ad esempio, è possibile utilizzare l'opzione **AutoFit to Window** per adattare la tabella alla larghezza della pagina e l'opzione **AutoFit to Content** per consentire a ciascuna cella di crescere o ridursi in base al suo contenuto.

{{% alert color="primary" %}}

Inoltre, la proprietà **AllowAutoFit** può essere utilizzata in combinazione con una larghezza di cella preferita per formattare una cella che si adatta automaticamente al suo contenuto, ma ha anche una larghezza iniziale. Se necessario, la larghezza della cella può quindi crescere oltre questa larghezza.

{{% /alert %}}

Per impostazione predefinita, Aspose.Words inserisce una nuova tabella usando **AutoFit to Window**. La tabella sarà dimensionata in base alla larghezza della pagina disponibile. Per ridimensionare una tabella, è possibile chiamare il metodo [AutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/autofit/). Questo metodo accetta un'enumerazione [AutoFitBehavior](https://reference.aspose.com/words/cpp/aspose.words.tables/autofitbehavior/) che specifica il tipo di autofit applicato alla tabella.

È importante sapere che il metodo autofit è in realtà una scorciatoia che applica diverse proprietà alla tabella allo stesso tempo. Queste sono proprietà che in realtà danno alla tabella il comportamento osservato. Discuteremo queste proprietà per ogni opzione autofit.

L'esempio di codice seguente mostra come impostare una tabella per ridurre o aumentare ogni cella in base al suo contenuto:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-auto-fit.h" >}}

#### AutoFit Tabella alla finestra

Quando si applica l'autofitting a una finestra a una tabella, le seguenti operazioni vengono effettivamente eseguite dietro le quinte:

1. La proprietà **Table.AllowAutoFit** è abilitata per ridimensionare automaticamente le colonne per adattarle al contenuto disponibile, utilizzando un valore **Table.PreferredWidth** pari a 100%
2. **CellFormat.PreferredWidth** viene rimosso da tutte le celle della tabella
   {{% alert color="primary" %}}
   Si noti che questo è leggermente diverso dal comportamento Microsoft Word, in cui la larghezza preferita di ogni cella è impostata su valori appropriati in base alle dimensioni e al contenuto correnti. Aspose.Words non aggiorna la larghezza preferita, quindi vengono semplicemente cancellati.
   {{% /alert %}}
3. Le larghezze delle colonne vengono ricalcolate per il contenuto della tabella corrente: il risultato finale è una tabella che occupa l'intera larghezza disponibile
4. La larghezza delle colonne nella tabella cambia automaticamente man mano che l'utente modifica il testo

L'esempio di codice seguente mostra come inserire automaticamente una tabella nella larghezza della pagina:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-page-width.h" >}}

#### AutoFit Tabella al contenuto

Quando la tabella viene autofittata del contenuto, i seguenti passaggi vengono effettivamente eseguiti dietro le quinte:

1. La proprietà **Table.AllowAutoFit** è abilitata per ridimensionare automaticamente ogni cella in base al suo contenuto

2. La larghezza della tabella preferita viene rimossa da **Table.PreferredWidth**, **CellFormat.PreferredWidth** viene rimossa per ogni cella della tabella
   {{% alert color="primary" %}}

   Si noti che questa opzione autofit rimuove la larghezza preferita dalle celle, proprio come in Microsoft Word. Se si desidera mantenere le dimensioni delle colonne e aumentare o diminuire le colonne per adattarle al contenuto, è necessario impostare la proprietà **Table.AllowAutoFit** su **True** da sola anziché utilizzare il collegamento autofit.{{% /alert %}}

3. Le larghezze di colonna vengono ricalcolate per il contenuto della tabella corrente: il risultato finale è una tabella in cui le larghezze di colonna e la larghezza dell'intera tabella vengono ridimensionate automaticamente per adattarsi al meglio al contenuto man mano che l'utente modifica il testo

L'esempio di codice seguente mostra come inserire automaticamente una tabella nel suo contenuto:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-contents.h" >}}

#### Disabilita AutoFit nella tabella e usa larghezze di colonna fisse

Se in una tabella è disabilitato l'autofit e vengono utilizzate invece larghezze di colonna fisse, vengono eseguite le seguenti operazioni:

1. La proprietà **Table.AllowAutoFit** è disabilitata in modo che le colonne non crescano o si riducano al loro contenuto
2. La larghezza preferita dell'intera tabella viene rimossa da **Table.PreferredWidth**, **CellFormat.PreferredWidth** viene rimossa da tutte le celle della tabella
3. Il risultato finale è una tabella le cui larghezze di colonna sono determinate dalla proprietà [CellFormat.Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) e le cui colonne non vengono ridimensionate automaticamente quando l'utente inserisce del testo o quando la pagina viene ridimensionata

{{% alert color="primary" %}}

Si noti che se non viene specificata alcuna larghezza per **CellFormat.Width**, viene utilizzato il valore predefinito di un pollice (72 punti).

{{% /alert %}}

L'esempio di codice seguente mostra come disabilitare l'autofit e abilitare la larghezza fissa per la tabella specificata:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-fixed-column-widths.h" >}}

### Ordine di precedenza nel calcolo della larghezza della cella

Aspose.Words consente agli utenti di definire la larghezza di una tabella o di una cella attraverso più oggetti, tra cui [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) – la sua proprietà [Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) è per lo più rimasta dalle versioni precedenti, tuttavia, è ancora utile per semplificare l'impostazione della larghezza della cella.

È importante sapere che la proprietà **CellFormat.Width** funziona in modo diverso a seconda di quale delle altre proprietà width esiste già nella tabella.

Aspose.Words utilizza l'ordine seguente per calcolare le larghezze delle celle:

| Ordine | Proprieta | Descrizione |
| :- | :- | :- |
|  | [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) è determinato | Se **AutoFit** è abilitato:<br />- la tabella può crescere oltre la larghezza preferita per accogliere il contenuto-di solito non si restringe al di sotto della larghezza preferita<br />- qualsiasi modifica al valore **CellFormat.Width** viene ignorata e la cella si adatta al suo contenuto |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) con un valore di **Points**o **Percent** | **CellFormat.Width** viene ignorato |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/)con un valore di **Auto** | Il valore da **CellFormat.Width** viene copiato e diventa la larghezza preferita della cella (in punti) |

{{% alert color="primary" %}}

Eventuali modifiche alla proprietà width non vengono aggiornate nella larghezza preferita e devono invece essere applicate alla larghezza preferita.

{{% /alert %}}

{{% alert color="primary" %}}

Durante la creazione di un layout di tabella fisso, specificare la larghezza della cella. Una cella senza larghezza non può essere salvata nel formato DOC. I formati di documento diversi da DOC, ad esempio DOCX, consentono, in linea di principio, di salvare celle senza larghezza in un layout di tabella fisso.

{{% /alert %}}

## Consentire la spaziatura tra le celle

È possibile ottenere o impostare qualsiasi spazio aggiuntivo tra le celle della tabella simile all'opzione "Spaziatura celle" in Microsoft Word. Questo può essere fatto usando la proprietà [AllowCellSpacing](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowcellspacing/).

Un esempio di come queste opzioni vengono applicate a una tabella reale in un documento può essere visto nell'immagine qui sotto.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-cpp" style="width:500px"/>

Il seguente esempio di codice mostra come impostare la spaziatura tra le celle:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-cell-spacing.h" >}}

## Applicare bordi e ombreggiature

I bordi e l'ombreggiatura possono essere applicati all'intera tabella usando [Table.SetBorder](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborders/) e [Table.SetShading](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setshading/) o solo a celle specifiche usando [CellFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_borders/) e [CellFormat.Shading](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_shading/). Inoltre, i bordi delle righe possono essere impostati usando [RowFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_borders/), tuttavia l'ombreggiatura non può essere applicata in questo modo.

Le immagini qui sotto mostrano le impostazioni del bordo e dell'ombra in Microsoft Word e le loro proprietà corrispondenti in Aspose.Words.

![formatting-border-line-aspose-words-cpp](applying-formatting-6.png)

![formatting-cell-color-aspose-words-cpp](applying-formatting-7.png)

L'esempio di codice seguente mostra come formattare una tabella e una cella con bordi e sfumature diversi:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "format-table-and-cell-with-different-borders.h" >}}
---
title: Formattazione della tabella in C#
second_title: Aspose.Words per .NET
articleTitle: Applica formattazione tabella
linktitle: Applica formattazione tabella
description: "Formattazione della tabella in dettaglio utilizzando C#. Utilizza C# per formattare ogni parte della tabella."
type: docs
weight: 70
url: /it/net/applying-formatting/
---

A ogni elemento di una tabella può essere applicata una formattazione diversa. Ad esempio, la formattazione della tabella verrà applicata all'intera tabella, la formattazione delle righe solo a determinate righe e la formattazione delle celle solo a determinate celle.

Aspose.Words fornisce un testo API ricco per recuperare e applicare la formattazione a una tabella. È possibile utilizzare i nodi [Table](https://reference.aspose.com/words/it/net/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/it/net/aspose.words.tables/rowformat/) e [CellFormat](https://reference.aspose.com/words/it/net/aspose.words.tables/cellformat/) per impostare la formattazione.

In questo articolo parleremo di come applicare la formattazione a diversi nodi di tabella e di quali impostazioni di formattazione della tabella sono supportate da Aspose.Words.

## Applica la formattazione a diversi nodi

In questa sezione esamineremo l'applicazione della formattazione a vari nodi della tabella.

### Formattazione a livello di tabella

Per applicare la formattazione a una tabella, puoi utilizzare le proprietà disponibili sul nodo **Table** corrispondente utilizzando le classi [Table](https://reference.aspose.com/words/it/net/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/it/net/aspose.words.tables/preferredwidth/) e [TableCollection](https://reference.aspose.com/words/it/net/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Tieni presente che la tabella deve avere almeno una riga prima che le proprietà della tabella possano essere applicate. Ciò significa che quando si costruisce una tabella con il [DocumentBuilder](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/), questa formattazione deve essere eseguita dopo la prima chiamata a [InsertCell](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/insertcell/), o dopo che la prima riga è stata aggiunta alla tabella, o quando i nodi vengono inseriti direttamente nell'DOM.

{{% /alert %}}

Le immagini seguenti mostrano una rappresentazione delle funzionalità di formattazione **Table** in Microsoft Word e le loro proprietà corrispondenti in Aspose.Words.

![formattin-features-table-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-net](/words/net/applying-formatting/applying-formatting-2.png)

L'esempio di codice seguente mostra come applicare un bordo di contorno a una tabella:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-outline-border.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

L'esempio di codice seguente mostra come creare una tabella con tutti i bordi abilitati (griglia):

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "build-table-with-borders.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Formattazione a livello di riga

La formattazione **A livello di riga** può essere controllata utilizzando le classi [Row](https://reference.aspose.com/words/it/net/aspose.words.tables/row/), [RowFormat](https://reference.aspose.com/words/it/net/aspose.words.tables/rowformat/) e [RowCollection](https://reference.aspose.com/words/it/net/aspose.words.tables/rowcollection/).

{{% alert color="primary" %}}

Tieni presente che un **Row** può essere solo un nodo figlio di un **Table**. Allo stesso tempo, deve esserci almeno un **Cell** nel **Row** in modo che sia possibile applicargli la formattazione.

{{% /alert %}}

Le immagini seguenti mostrano una rappresentazione delle funzionalità di formattazione **Row** in Microsoft Word e le loro proprietà corrispondenti in Aspose.Words.

![formatting-row-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-3.png)

L'esempio di codice seguente mostra come modificare la formattazione della riga della tabella:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-row-formatting.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Formattazione a livello di cella

La formattazione a livello di cella è controllata dalle classi [Cell](https://reference.aspose.com/words/it/net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/it/net/aspose.words.tables/cellformat/) e [CellCollection](https://reference.aspose.com/words/it/net/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

Tieni presente che un **Cell** può essere solo un nodo figlio di un **Row**. Allo stesso tempo, deve esserci almeno un [Paragraph](https://reference.aspose.com/words/it/net/aspose.words/paragraph/) nel **Cell** in modo che sia possibile applicargli la formattazione.

Oltre al **Paragraph**, puoi anche inserire un **Table** in un **Cell**.

{{% /alert %}}

Le immagini seguenti mostrano una rappresentazione delle funzionalità di formattazione **Cell** in Microsoft Word e le loro proprietà corrispondenti in Aspose.Words.

![formatting-cell-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-5.png)

L'esempio di codice seguente mostra come modificare la formattazione di una cella di tabella:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-cell-formatting.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Il seguente esempio di codice mostra come impostare la quantità di spazio (in punti) da aggiungere a sinistra/in alto/a destra/in basso del contenuto della cella:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "cell-padding.cs" >}}

## Specificare le altezze delle righe

Il modo più semplice per impostare l'altezza della riga è utilizzare **DocumentBuilder**. Utilizzando le proprietà **RowFormat** appropriate, puoi impostare l'altezza predefinita o applicare un'altezza diversa per ogni riga nella tabella.

In Aspose.Words, l'altezza delle righe della tabella è controllata da:

- la proprietà dell'altezza della riga – [Height](https://reference.aspose.com/words/it/net/aspose.words.tables/rowformat/height/)
- la proprietà della regola dell'altezza per la riga specificata – [HeightRule](https://reference.aspose.com/words/it/net/aspose.words.tables/rowformat/heightrule/)

Allo stesso tempo, è possibile impostare un'altezza diversa per ogni riga: ciò consente di controllare ampiamente le impostazioni del tavolo.

{{% alert color="primary" %}}

Le opzioni delle regole per specificare l'altezza di un oggetto possono essere impostate utilizzando l'enumerazione [HeightRule](https://reference.aspose.com/words/it/net/aspose.words/heightrule/).

{{% /alert %}}

L'esempio di codice seguente mostra come creare una tabella che contiene una singola cella e applicare la formattazione della riga:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-row-formatting.cs" >}}

## Specificare la larghezza della tabella e delle celle

Una tabella in un documento Microsoft Word offre diversi modi per ridimensionare la tabella e le singole celle. Queste proprietà consentono un notevole controllo sull'aspetto e sul comportamento della tabella, in modo che Aspose.Words supporti il comportamento delle tabelle, come in Microsoft Word.

È importante sapere che gli elementi della tabella presentano diverse proprietà che possono influenzare il modo in cui viene calcolata la larghezza della tabella complessiva, nonché delle singole celle:

- Larghezza preferita sul tavolo
- Larghezza preferita sulle singole celle
- Consentire l'adattamento automatico sul tavolo

Questo articolo descrive in dettaglio come funzionano le varie proprietà di calcolo della larghezza della tabella e come ottenere il controllo completo sul calcolo della larghezza della tabella. Questo è
particolarmente utile da sapere nei casi in cui il layout della tabella non appare come previsto.

{{% alert color="primary" %}}

Nella maggior parte dei casi, è consigliata la cella preferita rispetto alla larghezza della tabella. La larghezza della cella preferita è più in linea con le specifiche del formato DOCX e con il modello Aspose.Words.

La larghezza della cella è in realtà un valore calcolato per il formato DOCX. La larghezza effettiva della cella può dipendere da molte cose. Ad esempio, la modifica dei margini della pagina o della larghezza preferita della tabella può influire sulla larghezza effettiva della cella.

La larghezza della cella preferita è una proprietà della cella archiviata nel documento. Non dipende da nulla e non cambia quando cambi la tabella o altre proprietà della cella.

{{% /alert %}}

{{% alert color="primary" %}}

Tutte le proprietà e i metodi descritti in questo articolo sono correlati al funzionamento delle tabelle in Microsoft Word. Pertanto, nella maggior parte dei casi, se stai costruendo la tua tabella a livello di codice ma hai difficoltà a creare la tabella desiderata, puoi invece provare prima a crearla visivamente in Microsoft Word e poi copiare semplicemente i valori di formattazione nella tua applicazione.

{{% /alert %}}

### Come utilizzare la larghezza preferita

La larghezza desiderata di una tabella o di singole celle viene definita tramite la proprietà larghezza preferita, ovvero la dimensione che un elemento cerca di adattarsi. Cioè, è possibile specificare la larghezza preferita per l'intera tabella o per singole celle. In alcune situazioni potrebbe non essere possibile adattare esattamente questa larghezza, ma nella maggior parte dei casi la larghezza effettiva sarà vicina a questo valore.

Il tipo e il valore di larghezza preferiti appropriati vengono impostati utilizzando i metodi della classe [PreferredWidth](https://reference.aspose.com/words/it/net/aspose.words.tables/preferredwidth/):

* il metodo [Auto](https://reference.aspose.com/words/it/net/aspose.words.tables/preferredwidth/auto/) per specificare la larghezza automatica o "nessuna larghezza preferita"
* il metodo [FromPercent](https://reference.aspose.com/words/it/net/aspose.words.tables/preferredwidth/frompercent/) per specificare una larghezza percentuale
* il metodo [FromPoints](https://reference.aspose.com/words/it/net/aspose.words.tables/preferredwidth/frompoints/) per specificare la larghezza in punti

Le immagini seguenti mostrano una rappresentazione delle *funzioni di impostazione della larghezza preferite* in Microsoft Word e le loro proprietà corrispondenti in Aspose.Words.

![formatting-table-properties-aspose-words-net](/words/net/applying-formatting/applying-formatting-8.png)

Un esempio di come queste opzioni vengono applicate a una tabella reale in un documento può essere visto nell'immagine qui sotto.

![todo:image_alt_text](/words/net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Prima di poter utilizzare la larghezza preferita in una tabella, è necessario assicurarsi che la tabella contenga almeno una riga. Questo perché tale formattazione della tabella in un documento Microsoft Word o in un documento creato in Aspose.Words viene memorizzata nelle righe della tabella.

{{% /alert %}}

#### Specificare la tabella preferita o la larghezza della cella

In Aspose.Words, le larghezze di tabelle e celle vengono impostate utilizzando la proprietà [Table.PreferredWidth](https://reference.aspose.com/words/it/net/aspose.words.tables/table/preferredwidth/) e la proprietà [CellFormat.PreferredWidth](https://reference.aspose.com/words/it/net/aspose.words.tables/cellformat/preferredwidth/), con le opzioni disponibili nell'enumerazione [PreferredWidthType](https://reference.aspose.com/words/it/net/aspose.words.tables/preferredwidthtype/):

- **Auto**, che equivale a non impostare alcuna larghezza preferita
- **Percent**, che adatta l'elemento rispetto allo spazio disponibile nella dimensione della finestra o del contenitore, e ricalcola il valore quando cambia la larghezza disponibile
- **Points**, che corrisponde a un elemento della larghezza specificata in punti

{{% alert color="primary" %}}

Per impostazione predefinita, una tabella può essere descritta come adattata al 100% dello spazio disponibile sulla pagina. In questo caso, ciò significa che la tabella proverà a occupare lo spazio tra i margini sinistro e destro della pagina.

{{% /alert %}}

L'utilizzo della proprietà [Table.PreferredWidth](https://reference.aspose.com/words/it/net/aspose.words.tables/table/preferredwidth/) regolerà la sua larghezza preferita rispetto al suo contenitore: pagina, colonna di testo o cella di tabella esterna se si tratta di una tabella nidificata.

L'esempio di codice seguente mostra come impostare la tabella per l'adattamento automatico al 50% della larghezza della pagina:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-page-width.cs" >}}

L'utilizzo della proprietà [CellFormat.PreferredWidth](https://reference.aspose.com/words/it/net/aspose.words.tables/cellformat/preferredwidth/) su una determinata cella ne regolerà la larghezza preferita.

Il seguente esempio di codice mostra come impostare le diverse impostazioni di larghezza preferite:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "preferred-width-settings.cs" >}}

#### Trova il tipo e il valore di larghezza preferiti

È possibile utilizzare le proprietà [Type](https://reference.aspose.com/words/it/net/aspose.words.tables/preferredwidth/type/) e [Value](https://reference.aspose.com/words/it/net/aspose.words.tables/preferredwidth/value/) per trovare i dettagli della larghezza preferita della tabella o cella desiderata.

L'esempio di codice seguente mostra come recuperare il tipo di larghezza preferito di una cella di tabella:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "retrieve-preferred-width-type.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Come impostare l'adattamento automatico

La proprietà [AllowAutoFit](https://reference.aspose.com/words/it/net/aspose.words.tables/table/allowautofit/) consente alle celle di una tabella di crescere e ridursi in base a un criterio selezionato. Ad esempio, puoi utilizzare l'opzione **Adatta automaticamente alla finestra** per adattare la tabella alla larghezza della pagina e l'opzione **Adattamento automatico al contenuto** per consentire a ciascuna cella di crescere o ridursi in base al suo contenuto.

{{% alert color="primary" %}}

Inoltre, la proprietà **AllowAutoFit** può essere utilizzata insieme a una larghezza di cella preferita per formattare una cella che si adatti automaticamente al suo contenuto, ma abbia anche una larghezza iniziale. Se necessario, la larghezza della cella può quindi aumentare oltre questa larghezza.

{{% /alert %}}

Per impostazione predefinita, Aspose.Words inserisce una nuova tabella utilizzando **Adatta automaticamente alla finestra**. La tabella verrà dimensionata in base alla larghezza della pagina disponibile. Per ridimensionare una tabella, puoi chiamare il metodo [AutoFit](https://reference.aspose.com/words/it/net/aspose.words.tables/table/autofit/). Questo metodo accetta un'enumerazione [AutoFitBehavior](https://reference.aspose.com/words/it/net/aspose.words.tables/autofitbehavior/) che specifica il tipo di adattamento automatico applicato alla tabella.

È importante sapere che il metodo di adattamento automatico è in realtà una scorciatoia che applica contemporaneamente proprietà diverse alla tabella. Queste sono proprietà che effettivamente danno alla tabella il comportamento osservato. Discuteremo queste proprietà per ciascuna opzione di adattamento automatico.

L'esempio di codice seguente mostra come impostare una tabella per ridurre o ingrandire ogni cella in base al suo contenuto:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-auto-fit.cs" >}}

#### Adatta tabella alla finestra

Quando l'adattamento automatico a una finestra viene applicato a una tabella, le seguenti operazioni vengono effettivamente eseguite dietro le quinte:

1. La proprietà **Table.AllowAutoFit** è abilitata per ridimensionare automaticamente le colonne per adattarle al contenuto disponibile, utilizzando un valore **Table.PreferredWidth** del 100%
2. **CellFormat.PreferredWidth** viene rimosso da tutte le celle della tabella
      {{% alert color="primary" %}}
   Tieni presente che questo è leggermente diverso dal comportamento Microsoft Word, in cui la larghezza preferita di ciascuna cella è impostata su valori appropriati in base alla dimensione e al contenuto correnti. Aspose.Words non aggiorna la larghezza preferita, quindi vengono semplicemente cancellate.
      {{% /alert %}}
3. Le larghezze delle colonne vengono ricalcolate per il contenuto della tabella corrente: il risultato finale è una tabella che occupa l'intera larghezza disponibile
4. La larghezza delle colonne nella tabella cambia automaticamente quando l'utente modifica il testo

L'esempio di codice seguente mostra come adattare automaticamente una tabella alla larghezza della pagina:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-page-width.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Adatta tabella al contenuto

Quando la tabella adatta automaticamente il contenuto, i seguenti passaggi vengono effettivamente eseguiti dietro le quinte:

1. La proprietà **Table.AllowAutoFit** è abilitata per ridimensionare automaticamente ogni cella in base al suo contenuto

2. La larghezza della tabella preferita viene rimossa da **Table.PreferredWidth**, **CellFormat.PreferredWidth** viene rimosso per ogni cella della tabella
      {{% alert color="primary" %}}

   Tieni presente che questa opzione di adattamento automatico rimuove la larghezza preferita dalle celle, proprio come in Microsoft Word. Se desideri mantenere le dimensioni delle colonne e aumentare o diminuire le colonne per adattarle al contenuto, devi impostare la proprietà **Table.AllowAutoFit** su **True** da sola anziché utilizzare la scorciatoia di adattamento automatico.{{% /alert %}}

3. Le larghezze delle colonne vengono ricalcolate per il contenuto della tabella corrente: il risultato finale è una tabella in cui le larghezze delle colonne e la larghezza dell'intera tabella vengono ridimensionate automaticamente per adattarsi al meglio al contenuto mentre l'utente modifica il testo

L'esempio di codice seguente mostra come adattare automaticamente una tabella al suo contenuto:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-contents.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Disattiva l'adattamento automatico nella tabella e utilizza larghezze colonne fisse

Se in una tabella l'adattamento automatico è disabilitato e vengono utilizzate invece larghezze di colonna fisse, vengono eseguiti i seguenti passaggi:

1. La proprietà **Table.AllowAutoFit** è disabilitata in modo che le colonne non aumentino o si riducano al loro contenuto

2. La larghezza preferita dell'intera tabella viene rimossa da **Table.PreferredWidth**, **CellFormat.PreferredWidth** viene rimosso da tutte le celle della tabella
3. Il risultato finale è una tabella le cui larghezze delle colonne sono determinate dalla proprietà [CellFormat.Width](https://reference.aspose.com/words/it/net/aspose.words.tables/cellformat/width/) e le cui colonne non vengono ridimensionate automaticamente quando l'utente inserisce del testo o quando la pagina viene ridimensionata

{{% alert color="primary" %}}

Tieni presente che se non viene specificata alcuna larghezza per **CellFormat.Width**, verrà utilizzato il valore predefinito di un pollice (72 punti).

{{% /alert %}}

Il seguente esempio di codice mostra come disabilitare l'adattamento automatico e abilitare la larghezza fissa per la tabella specificata:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-fixed-column-widths.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Ordine di precedenza nel calcolo della larghezza della cella

Aspose.Words consente agli utenti di definire la larghezza di una tabella o cella attraverso più oggetti, incluso [CellFormat](https://reference.aspose.com/words/it/net/aspose.words.tables/cellformat/): la sua proprietà [Width](https://reference.aspose.com/words/it/net/aspose.words.tables/cellformat/width/) è per lo più lasciata dalle versioni precedenti, tuttavia è comunque utile per semplificare l'impostazione della larghezza della cella.

È importante sapere che la proprietà **CellFormat.Width** funziona in modo diverso a seconda di quale delle altre proprietà di larghezza esiste già nella tabella.

Aspose.Words utilizza il seguente ordine per calcolare la larghezza delle celle:

|  Ordine |  Proprietà |  Descrizione |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/it/net/aspose.words.tables/table/allowautofit/) è determinato |  Se **AutoFit** è abilitato:<br>- la tabella potrebbe crescere oltre la larghezza preferita per accogliere il contenuto; solitamente non si restringe al di sotto della larghezza preferita<br>- qualsiasi modifica al valore **CellFormat.Width** viene ignorata e la cella si adatterà invece al suo contenuto |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/it/net/aspose.words.tables/preferredwidthtype/) con un valore **Points** o **Percent** |  **CellFormat.Width** viene ignorato |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/it/net/aspose.words.tables/preferredwidthtype/) con un valore **Auto** |  Il valore di **CellFormat.Width** viene copiato e diventa la larghezza preferita della cella (in punti) |

{{% alert color="primary" %}}

Eventuali modifiche alla proprietà larghezza non vengono aggiornate nella larghezza preferita e devono invece essere applicate alla larghezza preferita.

{{% /alert %}}

{{% alert color="primary" %}}

Durante la creazione di un layout di tabella fisso, specificare la larghezza della cella. Una cella senza larghezza non può essere salvata in formato DOC. I formati di documento diversi da DOC, come DOCX, consentono, in linea di principio, di salvare celle senza larghezza in un layout di tabella fisso.

{{% /alert %}}

## Consenti spaziatura tra le celle

Puoi ottenere o impostare qualsiasi spazio aggiuntivo tra le celle della tabella in modo simile all'opzione "Spaziatura celle" in Microsoft Word. Questo può essere fatto utilizzando la proprietà [AllowCellSpacing](https://reference.aspose.com/words/it/net/aspose.words.tables/table/allowcellspacing/).

Un esempio di come queste opzioni vengono applicate a una tabella reale in un documento può essere visto nell'immagine qui sotto.

<img src="/words/net/applying-formatting/applying-formatting-10.png" alt="formattazione-spaziatura-tra-celle-aspose-parole-net" style="width:500px"/>

L'esempio di codice seguente mostra come impostare la spaziatura tra le celle:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-cell-spacing.cs" >}}

## Applica bordi e ombreggiatura

I bordi e l'ombreggiatura possono essere applicati all'intera tabella utilizzando [Table.SetBorder](https://reference.aspose.com/words/it/net/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/it/net/aspose.words.tables/table/setborders/) e [Table.SetShading](https://reference.aspose.com/words/it/net/aspose.words.tables/table/setshading/) o solo a celle specifiche utilizzando [CellFormat.Borders](https://reference.aspose.com/words/it/net/aspose.words.tables/cellformat/borders/) e [CellFormat.Shading](https://reference.aspose.com/words/it/net/aspose.words.tables/cellformat/shading/). Inoltre, i bordi delle righe possono essere impostati utilizzando [RowFormat.Borders](https://reference.aspose.com/words/it/net/aspose.words.tables/rowformat/borders/), tuttavia non è possibile applicare l'ombreggiatura in questo modo.

Le immagini sottostanti mostrano le impostazioni del bordo e dell'ombra in Microsoft Word e le loro proprietà corrispondenti in Aspose.Words.

![formatting-border-line-aspose-words-net](/words/net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-net](/words/net/applying-formatting/applying-formatting-7.png)

L'esempio di codice seguente mostra come formattare una tabella e una cella con bordi e ombreggiature diversi:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "format-table-and-cell-with-different-borders.cs" >}}
---
title: Formattazione della tabella in Java
second_title: Aspose.Words per Java
articleTitle: Applicare la formattazione della tabella
linktitle: Applicare la formattazione della tabella
description: "Formattazione della tabella nei dettagli. Utilizzo Java per formattare ogni parte della tabella."
type: docs
weight: 70
url: /it/java/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

Ogni elemento di una tabella può essere applicato con formattazione diversa. Ad esempio, la formattazione della tabella verrà applicata all'intera tabella, la formattazione della riga a solo righe particolari, la formattazione della cella a solo alcune celle.

Aspose.Words fornisce un ricco API per recuperare e applicare la formattazione a una tabella. È possibile utilizzare [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), e [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) nodi per impostare la formattazione.

In questo articolo, parleremo di come applicare la formattazione a diversi nodi di tabella e quali impostazioni di formattazione della tabella Aspose.Words supporti.

## Applicare la formattazione a diversi nodi

In questa sezione, cercheremo di applicare la formattazione a vari nodi di tabella.

### Formattazione del livello della tabella

Per applicare la formattazione a una tabella è possibile utilizzare le proprietà disponibili sulla corrispondente **Table** nodo usando il [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/), e [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/) classi.

{{% alert color="primary" %}}

Si noti che la tabella deve avere almeno una riga prima che le proprietà della tabella possano essere applicate. Ciò significa che quando si costruisce un tavolo con [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), questa formattazione deve essere fatta dopo la prima chiamata a [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()), o dopo la prima riga viene aggiunta alla tabella, o quando i nodi vengono inseriti direttamente nella DOM.

{{% /alert %}}

Le immagini qui sotto mostrano una rappresentazione del **Table** funzioni di formattazione in Microsoft Word e le loro proprietà corrispondenti in Aspose.Words.

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

Il seguente esempio di codice mostra come applicare un bordo sagomato a una tabella:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

Il seguente esempio di codice mostra come costruire una tabella con tutti i bordi abilitati (grid):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### Formattazione del livello di riga

La formattazione a livello di riga** può essere controllata utilizzando [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), e [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/) classi.

{{% alert color="primary" %}}

Nota: **Row** può essere solo un nodo bambino di un **Table**. Allo stesso tempo, ci deve essere almeno uno **Cell** nel **Row** in modo che la formattazione possa essere applicata ad esso.

{{% /alert %}}

Le immagini qui sotto mostrano una rappresentazione del **Row** funzioni di formattazione in Microsoft Word e le loro proprietà corrispondenti in Aspose.Words.

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

Il seguente esempio di codice mostra come modificare la formattazione della riga della tabella:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### Formattazione del livello cellulare

La formattazione a livello cellulare è controllata dal [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/), e [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/) classi.

{{% alert color="primary" %}}

Nota: **Cell** può essere solo un nodo bambino di un **Row**. Allo stesso tempo, ci deve essere almeno uno [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) nel **Cell** in modo che la formattazione possa essere applicata ad esso.

Oltre al **Paragraph**, si può anche inserire un **Table** in un **Cell**.

{{% /alert %}}

Le immagini qui sotto mostrano una rappresentazione del **Cell** funzioni di formattazione in Microsoft Word e le loro proprietà corrispondenti in Aspose.Words.

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

Il seguente esempio di codice mostra come modificare la formattazione di una cella di tabella:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

Il seguente esempio di codice mostra come impostare la quantità di spazio (in punti) da aggiungere a sinistra/top/right/bottom del contenuto della cella:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## Specificare le altezze delle righe

Il modo più semplice per impostare l'altezza della riga è quello di utilizzare **DocumentBuilder**. Utilizzo dell'appropriato **RowFormat** proprietà, è possibile impostare l'impostazione dell'altezza predefinita o applicare un'altezza diversa per ogni riga nella tabella.

In Aspose.Words, altezza della riga del tavolo è controllata da:

- la proprietà dell'altezza della fila – [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- la proprietà della regola di altezza per la riga data – [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

Allo stesso tempo, un'altezza diversa può essere impostata per ogni riga – questo consente di controllare ampiamente le impostazioni della tabella.

{{% alert color="primary" %}}

Le opzioni di regola per specificare l'altezza di un oggetto possono essere impostate utilizzando il [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/) campi.

{{% /alert %}}

Il seguente esempio di codice mostra come creare una tabella che contiene una singola cella e applicare la formattazione della riga:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## Specificare la larghezza della tabella e delle celle

Un tavolo in un Microsoft Word documento fornisce diversi modi per ridimensionare la tabella e le singole celle. Queste proprietà consentono un notevole controllo sull'aspetto e sul comportamento della tabella, in modo che Aspose.Words supporta il comportamento dei tavoli, come in Microsoft Word.

È importante sapere che gli elementi della tabella presentano diverse proprietà che possono influenzare come le larghezze della tabella generale, così come le singole celle, è calcolato:

- Larghezza preferenziale sul tavolo
- Larghezza preferenziale su singole celle
- Consentire autofit sul tavolo

Questo articolo dettagli come le varie proprietà di calcolo della larghezza della tabella funzionano e come ottenere il controllo completo sul calcolo della larghezza della tabella. Questo è
particolarmente utile per conoscere in tali casi in cui il layout della tabella non appare come previsto.

{{% alert color="primary" %}}

Nella maggior parte dei casi, la cella preferita è raccomandata rispetto alla larghezza della tabella. La larghezza della cella preferita è più in linea con le specifiche del formato DOCX così come la Aspose.Words modello.

La larghezza della cella è in realtà un valore calcolato per il formato DOCX. La larghezza effettiva della cella può dipendere da molte cose. Ad esempio, modificare i margini di pagina o la larghezza della tabella preferita può influenzare la larghezza effettiva della cella.

La larghezza della cella preferita è una proprietà cellulare che viene memorizzata nel documento. Non dipende da nulla e non cambia quando si cambia la tabella o altre proprietà della cella.

{{% /alert %}}

{{% alert color="primary" %}}

Tutte le proprietà e i metodi descritti in questo articolo sono correlati a come le tabelle funzionano Microsoft Word. Così nella maggior parte dei casi, se si sta costruendo il vostro tavolo programmaticamente, ma stanno trovando difficile creare la tabella desiderata, si può invece provare visivamente la creazione in Microsoft Word prima e poi semplicemente copiare i valori di formattazione nella vostra applicazione.

{{% /alert %}}

### Come Usare la Larghezza Preferita

La larghezza desiderata di un tavolo o di singole celle è definita attraverso la proprietà di larghezza preferita, che è la dimensione che un elemento si sforza di adattarsi. Cioè, la larghezza preferita può essere specificata per l'intera tabella o per le singole celle. In alcune situazioni potrebbe non essere possibile adattare esattamente questa larghezza, ma la larghezza effettiva sarà vicina a questo valore nella maggior parte dei casi.

Il tipo di larghezza e il valore desiderato appropriato sono impostati utilizzando i metodi [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) classe:

- [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) campo per specificare auto o "nessuna larghezza preferita"
- [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) metodo per specificare una larghezza percentuale
- [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) metodo per specificare la larghezza nei punti

Le immagini qui sotto mostrano una rappresentazione delle caratteristiche *preferite di regolazione della larghezza* in Microsoft Word e le loro proprietà corrispondenti in Aspose.Words.

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

Un esempio di come queste opzioni sono applicate a una tabella reale in un documento può essere visto nell'immagine qui sotto.

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Prima di poter utilizzare la larghezza preferita in una tabella, è necessario assicurarsi che la tabella contenga almeno una riga. Questo perché tale formattazione della tabella in una Microsoft Word documento o in un documento creato Aspose.Words viene memorizzato nelle righe della tabella.

{{% /alert %}}

#### Specificare la Tabella Preferita o la Larghezza Cellulare

In Aspose.Words, le larghezze della tabella e delle celle sono impostate utilizzando [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) proprietà e [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) proprietà, con opzioni disponibili nella [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) enumerazione:

- No. **Auto**, che è equivalente a nessun set di larghezza preferito
- No. **Percent**, che si adatta all'elemento rispetto allo spazio disponibile nella finestra o nella dimensione del contenitore, e calcola il valore quando la larghezza disponibile cambia
- No. **Points**, che corrisponde ad un elemento della larghezza specificata in punti

{{% alert color="primary" %}}

Per impostazione predefinita, una tabella può essere descritta come montata al 100% dello spazio disponibile sulla pagina. In questo caso, questo significa che la tabella cercherà di occupare lo spazio tra i margini di pagina sinistra e destra.

{{% /alert %}}

Usare il [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) la proprietà regola la sua larghezza preferita rispetto al suo contenitore: pagina, colonna di testo o cella della tabella esterna se è una tabella nidificata.

Il seguente esempio di codice mostra come impostare la tabella in modo automatico al 50% della larghezza della pagina:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

Usare il [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) la proprietà su una determinata cella regola la sua larghezza preferita.

Il seguente esempio di codice mostra come impostare le diverse impostazioni di larghezza preferita:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### Trova Tipo di Larghezza e Valore Preferiti

È possibile utilizzare [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) e [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) proprietà per trovare i dettagli di larghezza preferiti della tabella o della cella desiderata.

Il seguente esempio di codice mostra come recuperare il tipo di larghezza preferito di una cella di tabella:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### Come Impostare l'Autofit

The [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) proprietà consente alle celle in una tabella di crescere e ridurre in base a un criterio selezionato. Per esempio, è possibile utilizzare il **AutoFit alla finestra** opzione per adattare la tabella alla larghezza della pagina, e la **AutoFit to Content** opzione per consentire a ciascuna cella di crescere o ridurre in base al suo contenuto.

{{% alert color="primary" %}}

Inoltre, il **AllowAutoFit** la proprietà può essere utilizzata in combinazione con una larghezza di cella preferita per formattare una cella che si adatta automaticamente al suo contenuto, ma ha anche una larghezza iniziale. Se necessario, la larghezza della cella può quindi crescere oltre questa larghezza.

{{% /alert %}}

Per impostazione predefinita, Aspose.Words inserisce una nuova tabella utilizzando **AutoFit alla finestra**. La tabella sarà dimensionata in base alla larghezza della pagina disponibile. Per ridimensionare un tavolo, è possibile chiamare [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int) metodo. Questo metodo accetta un [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) enumerazione che specifica quale tipo di autofit viene applicato alla tabella.

È importante sapere che il metodo di autofit è in realtà una scorciatoia che applica diverse proprietà alla tabella contemporaneamente. Queste sono proprietà che danno effettivamente alla tabella il comportamento osservato. Discuteremo queste proprietà per ogni opzione di autofit.

Il seguente esempio di codice mostra come impostare una tabella per ridurre o crescere ogni cella secondo il suo contenuto:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

Useremo la seguente tabella per applicare le varie impostazioni di auto vestibilità come dimostrazione.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### Tavolino da tavolo per finestra

Quando l'autofitting a una finestra viene applicata a un tavolo, le seguenti operazioni vengono effettivamente eseguite dietro le quinte:

1. The **Table.AllowAutoFit** la proprietà è abilitata per ridimensionare automaticamente le colonne per adattarsi al contenuto disponibile, utilizzando un **Table.PreferredWidth** valore del 100%
2. **CellFormat.PreferredWidth** viene rimosso da tutte le celle della tabella
      {{% alert color="primary" %}}
   Si noti che questo è leggermente diverso dal Microsoft Word comportamento, in cui la larghezza preferita di ogni cella è impostata ai valori appropriati in base alle dimensioni e al contenuto attuali. Aspose.Words non aggiorna la larghezza preferita in modo da ottenere appena sgomberato invece.
      {{% /alert %}}
3. Le larghezze delle colonne sono ricalcolate per il contenuto della tabella corrente – il risultato finale è una tabella che occupa l'intera larghezza disponibile
4. La larghezza delle colonne nella tabella cambia automaticamente mentre l'utente modifica il testo

Il seguente esempio di codice mostra come automatizzare una tabella alla larghezza della pagina:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

Un esempio di come queste opzioni sono applicate alla tabella sopra può essere visto nell'immagine qui sotto.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### Tabella di autofilettatura al contenuto

Quando la tabella viene automatizzata il contenuto, i seguenti passaggi vengono effettivamente eseguiti dietro le quinte:

1. The **Table.AllowAutoFit** la proprietà è abilitata a ridimensionare automaticamente ogni cella in base al suo contenuto

2. La larghezza della tabella preferita viene rimossa **Table.PreferredWidth**, **CellFormat.PreferredWidth** viene rimosso per ogni cella della tabella
      {{% alert color="primary" %}}

   Si noti che questa opzione di autofit rimuove la larghezza preferita dalle celle, proprio come in Microsoft Word. Se si desidera mantenere le dimensioni della colonna e aumentare o diminuire le colonne per adattarsi al contenuto, è necessario impostare il **Table.AllowAutoFit** proprietà a **True** da solo piuttosto che usare la scorciatoia autofit.{{% /alert %}}

3. Le larghezze delle colonne sono ricalcolate per il contenuto della tabella corrente – il risultato finale è una tabella in cui le larghezze della colonna e la larghezza dell'intera tabella vengono ridimensionate automaticamente per adattarsi al meglio al contenuto mentre l'utente modifica il testo

Il seguente esempio di codice mostra come automatizzare una tabella al suo contenuto:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

Un esempio di come queste opzioni sono applicate alla tabella sopra può essere visto nell'immagine qui sotto.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### Disattivare l'AutoFit nella tabella e utilizzare le Width della colonna fissa

Se una tabella ha autofit disabilitato e le larghezze delle colonne fisse sono utilizzate invece, vengono eseguite le seguenti fasi:

1. **Table.AllowAutoFit** proprietà è disabilitata in modo che le colonne non crescono o si restringono al loro contenuto
2. La larghezza preferita dell'intera tabella viene rimossa da **Table.PreferredWidth**, **CellFormat.PreferredWidth** viene rimosso da tutte le celle della tabella
3. Il risultato finale è una tabella la cui larghezza di colonna è determinata dalla [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) proprietà, e le cui colonne non vengono ridimensionate automaticamente quando l'utente entra nel testo o quando la pagina viene ridimensionata

{{% alert color="primary" %}}

Si noti che se non è specificata la larghezza **CellFormat.Width**, il valore predefinito di un pollice (72 punti) viene utilizzato.

{{% /alert %}}

Il seguente esempio di codice mostra come disattivare l'autofit e abilitare la larghezza fissa per la tabella specificata:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

Un esempio di come queste opzioni sono applicate alla tabella sopra può essere visto nell'immagine qui sotto.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### Ordine di Precedenza quando Calcolo Larghezza Cellulare

Aspose.Words consente agli utenti di definire la larghezza di una tabella o di una cella attraverso oggetti multipli, incluso [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) – la sua [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) la proprietà è per lo più lasciata da versioni precedenti, tuttavia, è ancora utile per semplificare l'impostazione della larghezza della cella.

È importante sapere che **CellFormat.Width** la proprietà funziona in modo diverso a seconda di quale delle altre proprietà di larghezza già esistono nella tabella.

Aspose.Words utilizza il seguente ordine per il calcolo delle larghezze delle celle:

|  Ordinanza |  Proprietà |  Designazione |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) è determinato |  Se **AutoFit** è abilitato:<br/>- la tabella può crescere oltre la larghezza preferita per ospitare il contenuto – di solito non si restringe sotto la larghezza preferita<br/>- qualsiasi cambiamento al **CellFormat.Width** il valore è ignorato e la cella si adatta al suo contenuto invece |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) con un valore di **Points** o **Percent** |  **CellFormat.Width** è ignorato |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) con un valore di **Auto** |  Il valore dal **CellFormat.Width** viene copiato e diventa la larghezza preferita della cella (in punti) |

{{% alert color="primary" %}}

Eventuali modifiche alla proprietà di larghezza non sono aggiornate nella larghezza preferita e devono invece essere applicate alla larghezza preferita.

{{% /alert %}}

{{% alert color="primary" %}}

Durante la creazione di un layout fisso della tabella, specificare la larghezza della cella. Una cella senza larghezza non può essere salvata in formato DOC. I formati di documenti diversi dalla DOC, come DOCX, permettono, in linea di principio, di salvare le celle senza larghezza in un layout fisso della tabella.

{{% /alert %}}

## Lasciare spaziare tra celle

È possibile ottenere o impostare qualsiasi spazio aggiuntivo tra le celle da tavolo simile all'opzione "Stampamento Сell" in Microsoft Word. Questo può essere fatto utilizzando [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing) proprieta'.

Un esempio di come queste opzioni sono applicate a una tabella reale in un documento può essere visto nell'immagine qui sotto.

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

Il seguente esempio di codice mostra come impostare la spaziatura tra le celle:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## Applicare bordi e ombreggiatura

Borders e ombreggiatura possono essere applicati sia all'intera tabella utilizzando [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) e [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), o solo a celle specifiche utilizzando [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) e [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading). Inoltre, i bordi delle righe possono essere impostati utilizzando [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), Tuttavia la ombreggiatura non può essere applicata in questo modo.

Le immagini qui sotto mostrano le impostazioni di confine e ombra in Microsoft Word e le loro proprietà corrispondenti in Aspose.Words.

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


Il seguente esempio di codice mostra come formattare una tabella e una cella con diversi bordi e ombreggiature:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}

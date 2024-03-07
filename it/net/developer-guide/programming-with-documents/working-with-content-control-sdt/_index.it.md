---
title: Lavorare con Content Control SDT
second_title: Aspose.Words per .NET
articleTitle: Lavorare con Content Control SDT
linktitle: Lavorare con Content Control SDT
description: "Gestione avanzata del contenuto dei documenti, come creare e manipolare i controlli del contenuto (tag dei documenti strutturati) utilizzando C#."
type: docs
weight: 390
url: /it/net/working-with-content-control-sdt/
---

In Microsoft Word, puoi creare un modulo iniziando con un modello e aggiungendo controlli del contenuto, tra cui caselle di controllo, caselle di testo, selettori di data ed elenchi a discesa. In Aspose.Words, un tag di documento strutturato o un controllo del contenuto da qualsiasi documento caricato in Aspose.Words viene importato come nodo StructuredDocumentTag. I tag di documenti strutturati (SDT o controllo del contenuto) consentono di incorporare in un documento la semantica definita dal cliente, nonché il suo comportamento e il suo aspetto.

StructuredDocumentTag può essere presente in un documento nei seguenti posti:

- A livello di blocco: tra paragrafi e tabelle, come figlio di un nodo Body, HeaderFooter, Comment, Footnote o Shape
- A livello di riga: tra le righe di una tabella, come figlio di un nodo Tabella
- A livello di cella: tra le celle in una riga di tabella, come figlio di un nodo Riga
- Livello in linea: tra i contenuti in linea all'interno, come figlio di un paragrafo
- Nidificato all'interno di un altro StructuredDocumentTag

## Inserimento di controlli contenuto in un documento

In questa versione di Aspose.Words è possibile creare i seguenti tipi di SDT o controllo del contenuto:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

L'esempio di codice seguente mostra come creare il controllo del contenuto della casella di controllo del tipo:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

L'esempio di codice seguente mostra come creare il controllo del contenuto di una casella di testo RTF:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

L'esempio di codice seguente mostra come creare il controllo del contenuto della casella combinata tipo:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## Come aggiornare i controlli del contenuto

Questa sezione spiega come aggiornare i valori di SDT o il controllo del contenuto a livello di codice.

L'esempio di codice seguente mostra come impostare lo stato corrente della casella di controllo:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

Il seguente esempio di codice mostra come modificare i controlli del contenuto di tipo casella di testo semplice, elenco a discesa e immagine:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## Associazione del controllo del contenuto a parti XML personalizzate

È possibile associare i controlli del contenuto ai dati XML (*parte XML personalizzata*) nei documenti di Word.

L'esempio di codice seguente mostra come associare il controllo del contenuto a parti XML personalizzate:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## XMLMapping dell'intervallo di tag del documento strutturato

È possibile ottenere la mappatura di questo intervallo di tag del documento strutturato sui dati XML in una parte XML personalizzata del documento corrente utilizzando **Proprietà StructuredDocumentTagRangeStart.XmlMapping**. Tuttavia, il metodo [SetMapping](https://reference.aspose.com/words/it/net/aspose.words.markup/xmlmapping/setmapping/) può essere utilizzato per mappare un intervallo di tag di documento strutturato su dati XML.

L'esempio di codice seguente mostra come impostare la mappatura XML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## Cancella contenuto di un controllo contenuto

È possibile cancellare il contenuto di un controllo contenuto visualizzando un segnaposto. Il metodo **StructuredDocumentTag.Clear** cancella il contenuto di questo tag di documento strutturato e visualizza un segnaposto se è definito. Tuttavia, non è possibile cancellare il contenuto di un controllo contenuto se presenta revisioni. Se un controllo del contenuto non ha segnaposto, vengono inseriti cinque spazi come in Microsoft Word (eccetto sezioni ripetute, elementi di sezione ripetuti, gruppi, caselle di controllo, citazioni). Se un controllo contenuto viene mappato a un codice XML personalizzato, il nodo XML a cui si fa riferimento viene cancellato.

L'esempio di codice seguente mostra come cancellare il contenuto del controllo contenuto:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## Modificare i colori dello sfondo e del bordo del controllo contenuto

La proprietà `StructuredDocumentTag.Color` consente di ottenere o impostare il colore del controllo del contenuto. Il colore influisce sul controllo del contenuto in due situazioni:

1. MS Word evidenzia lo sfondo del controllo del contenuto quando il mouse si sposta sul controllo del contenuto. Ciò aiuta a identificare il controllo del contenuto. Il colore dell'evidenziazione è un po' più "morbido" rispetto al *Color*. Ad esempio, MS Word evidenzia lo sfondo con il colore rosa, quando *Color* è rosso.
2. Quando interagisci (modifica, selezione, ecc.) con il controllo del contenuto, il bordo del controllo del contenuto è colorato con il *Color*.

L'esempio di codice seguente mostra come modificare il colore del controllo contenuto:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## Come impostare lo stile per formattare il testo digitato nel controllo contenuto

Se desideri impostare lo stile del controllo del contenuto, puoi utilizzare le proprietà `StructuredDocumentTag.Style` o `StructuredDocumentTag.StyleName`. Quando digiti il testo nel controllo del contenuto nel documento di output, il testo digitato avrà lo stile "Citazione".

{{% alert color="primary" %}}

Tieni presente che solo gli stili Collegato e Carattere possono essere applicati al controllo del contenuto. Viene generata un'eccezione InvalidOperationException ("Impossibile applicare questo stile all'SDT") quando viene applicato uno stile che esiste ma non è collegato o uno stile di carattere.

{{% /alert %}}

L'esempio di codice seguente mostra come impostare lo stile del controllo del contenuto:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## Lavorare con il controllo del contenuto della sezione ripetuta

Il controllo del contenuto della sezione ripetuta consente di ripetere il contenuto in essa contenuto. Utilizzando Aspose.Words, è possibile creare i nodi dei tag del documento strutturato della sezione ripetuta e dei tipi di elementi della sezione ripetuta e, a questo scopo, [Tipo di enumerazione SdtType](https://reference.aspose.com/words/it/net/aspose.words.markup/sdttype/) fornisce la proprietà **RepeatingSectionItem**.

Nell'esempio di codice seguente viene illustrato come associare un controllo contenuto della sezione ripetuta a una tabella.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}

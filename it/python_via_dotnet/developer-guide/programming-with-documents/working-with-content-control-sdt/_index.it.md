---
title: Lavorare con Content Control SDT
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con Content Control SDT
linktitle: Lavorare con Content Control SDT
description: "Usando Python puoi incorporare la semantica definita dal cliente, nonché il suo comportamento e aspetto in un documento."
type: docs
weight: 390
url: /it/python-net/working-with-content-control-sdt/
---

In Microsoft Word, puoi creare un modulo iniziando con un modello e aggiungendo controlli del contenuto, tra cui caselle di controllo, caselle di testo, selettori di data ed elenchi a discesa. In Aspose.Words, un tag di documento strutturato o un controllo del contenuto da qualsiasi documento caricato in Aspose.Words viene importato come nodo [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/). I tag di documenti strutturati (SDT o controllo del contenuto) consentono di incorporare in un documento la semantica definita dal cliente, nonché il suo comportamento e il suo aspetto. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) può verificarsi in un documento nei seguenti luoghi:

- A livello di blocco - Tra paragrafi e tabelle, come figlio di un nodo [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) o [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- A livello di riga: tra le righe di una tabella, come figlio di un nodo [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
- A livello di cella: tra le celle in una riga di tabella, come figlio di un nodo [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)
- Livello in linea: tra i contenuti in linea all'interno, come figlio di un [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- Nidificato all'interno di un altro [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

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

Nell'esempio di codice seguente viene illustrato come creare un controllo contenuto di tipo casella di controllo.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

Nell'esempio di codice seguente viene illustrato come creare un controllo contenuto di tipo casella di testo RTF.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

Nell'esempio di codice seguente viene illustrato come creare il controllo contenuto della casella combinata tipo.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## Come aggiornare i controlli del contenuto

Questa sezione spiega come aggiornare i valori di SDT o il controllo del contenuto a livello di codice

L'esempio di codice seguente mostra come impostare lo stato corrente della casella di controllo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

Il seguente esempio di codice mostra come modificare i controlli del contenuto di tipo casella di testo semplice, elenco a discesa e immagine:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questi esempi da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Associazione del controllo del contenuto a parti XML personalizzate

È possibile associare i controlli del contenuto ai dati XML (*parte XML personalizzata*) nei documenti di Word.

L'esempio di codice seguente mostra come associare il controllo del contenuto a parti XML personalizzate:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## XMLMapping dell'intervallo di tag del documento strutturato

Puoi ottenere la mappatura di questo intervallo di tag del documento strutturato sui dati XML in una parte XML personalizzata del documento corrente utilizzando la proprietà [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/). Tuttavia, il metodo [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) può essere utilizzato per mappare un intervallo di tag di documento strutturato su dati XML.

L'esempio di codice seguente mostra come impostare la mappatura XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## Cancella contenuto di un controllo contenuto

È possibile cancellare il contenuto di un controllo contenuto visualizzando un segnaposto. Il metodo [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) cancella il contenuto di questo tag di documento strutturato e visualizza un segnaposto se è definito. Tuttavia, non è possibile cancellare il contenuto di un controllo contenuto se presenta revisioni. Se un controllo del contenuto non ha segnaposto, vengono inseriti cinque spazi come in MS Word (eccetto sezioni ripetute, elementi di sezione ripetuti, gruppi, caselle di controllo, citazioni). Se un controllo contenuto viene mappato a un codice XML personalizzato, il nodo XML a cui si fa riferimento viene cancellato.

L'esempio di codice seguente mostra come cancellare il contenuto del controllo contenuto:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## Modificare i colori dello sfondo e del bordo del controllo contenuto

La proprietà [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) consente di ottenere o impostare il colore del controllo del contenuto. Il colore influisce sul controllo del contenuto in due situazioni:

1. MS Word evidenzia lo sfondo del controllo del contenuto quando il mouse si sposta sul controllo del contenuto. Ciò aiuta a identificare il controllo del contenuto. Il colore dell'evidenziazione è un po' più "morbido" rispetto al *color*. Ad esempio, MS Word evidenzia lo sfondo con il colore rosa, quando *color* è rosso.
2. Quando interagisci (modifica, selezione, ecc.) con il controllo del contenuto, il bordo del controllo del contenuto è colorato con il *color*.

L'esempio di codice seguente mostra come modificare il colore del controllo contenuto:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## Come impostare lo stile per formattare il testo digitato nel controllo contenuto

Se desideri impostare lo stile del controllo del contenuto, puoi utilizzare le proprietà [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) o [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/). Quando digiti il testo nel controllo del contenuto nel documento di output, il testo digitato avrà lo stile "Citazione".

{{% alert color="primary" %}}

Tieni presente che solo gli stili Collegato e Carattere possono essere applicati al controllo del contenuto. Viene generata un'eccezione ("Impossibile applicare questo stile all'SDT") quando viene applicato uno stile che esiste ma non è collegato o uno stile di carattere.

{{% /alert %}}

L'esempio di codice seguente mostra come impostare lo stile del controllo del contenuto:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Lavorare con il controllo del contenuto della sezione ripetuta

Il controllo del contenuto della sezione ripetuta consente di ripetere il contenuto in essa contenuto. Utilizzando Aspose.Words, è possibile creare i nodi dei tag del documento strutturato della sezione ripetuta e dei tipi di elementi della sezione ripetuta e, a questo scopo, il tipo di enumerazione [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) fornisce la proprietà [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item).

L'esempio di codice seguente mostra come associare un controllo del contenuto della sezione ripetuta a una tabella:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}

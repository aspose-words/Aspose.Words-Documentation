---
title: Lavorare con Content Control SDT in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con Content Control SDT
linktitle: Lavorare con Content Control SDT
type: docs
description: "Gestione avanzata dei contenuti dei documenti, come creare e manipolare i controlli dei contenuti (Structured Document Tags) utilizzando Java."
weight: 390
url: /it/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

In Microsoft Word, è possibile creare un modulo iniziando con un modello e aggiungendo controlli dei contenuti, tra cui caselle di controllo, caselle di testo, raccoglitori di date e elenchi a discesa. In <span notrans="<span notrans=" Aspose.Words"=""></span>> Tag o controllo dei contenuti da qualsiasi documento caricato in Aspose.Words è importato come nodo StrutturatoDocumentTag. I tag di documenti strutturati (SDT o controllo dei contenuti) permettono di incorporare la semantica definita dal cliente e il suo comportamento e l'aspetto in un documento.

Documento strutturato Il tag può verificarsi in un documento nei seguenti luoghi:

- Block-level - Tra paragrafi e tabelle, come un bambino di un corpo, HeaderFooter, Commento, Footnote o un nodo di forma.
- Livello riga - Tra le righe in un tavolo, come un bambino di un nodo Tabella.
- Livello cellulare - Tra le celle in una riga di tabella, come un bambino di un nodo di riga.
- Inline-level - Tra contenuto in linea all'interno, come un bambino di un paragrafo.
- Incastonato all'interno di un'altra StrutturadDocumentTag.

## Inserimento dei controlli dei contenuti in un documento

In questa versione Aspose.Words, i seguenti tipi di SDT o controllo dei contenuti possono essere creati:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

Il seguente esempio di codice mostra come creare il controllo dei contenuti della casella di controllo tipo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

Il seguente esempio di codice mostra come creare il controllo dei contenuti della casella di testo ricca di tipo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

Il seguente esempio di codice mostra come creare il controllo dei contenuti della casella combinata tipo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Come aggiornare i controlli dei contenuti

Questa sezione spiega come aggiornare i valori di SDT o di controllo dei contenuti programmaticamente.

Il seguente esempio di codice mostra come impostare lo stato corrente della casella di controllo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

Il seguente esempio di codice mostra come modificare i controlli dei contenuti della casella di testo normale tipo, elenco a discesa e immagine:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file campione di questi esempi da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Controllo dei contenuti per parti XML personalizzate

È possibile legare i controlli dei contenuti con i dati XML (*custom XML part*) nei documenti di Word

Il seguente esempio di codice mostra come legare il controllo dei contenuti alle parti XML personalizzate:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Contenuto chiaro di un controllo dei contenuti

È possibile cancellare il contenuto di un controllo dei contenuti con la visualizzazione di un segnaposto. **StrutturatoDocumentTag.clear()** metodo cancella il contenuto di questo documento strutturato tag e visualizza un segnaposto se è definito. Tuttavia, Non è possibile cancellare il contenuto di un controllo dei contenuti se ha revisioni. Se un controllo dei contenuti non ha un segnaposto, cinque spazi vengono inseriti come in MS Word (eccetto sezioni ripetitive, articoli di sezione ripetizione, gruppi, caselle di controllo, citazioni). Se un controllo dei contenuti viene mappato su XML personalizzato, il nodo XML di riferimento viene eliminato.

Il seguente esempio di codice mostra come eliminare il contenuto del controllo dei contenuti:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Cambiare il controllo dei contenuti

The `StructuredDocumentTag.Color` proprietà consente di ottenere o impostare il colore del controllo dei contenuti. Il colore influisce sul controllo dei contenuti in due situazioni:

1. MS Word evidenzia lo sfondo del controllo dei contenuti quando il mouse si muove sul controllo dei contenuti. Questo aiuta a identificare il controllo dei contenuti. Il colore di evidenziazione è un po 'più morbido rispetto al *Color*. Per esempio, MS Word evidenzia lo sfondo con il colore rosa, quando *Color* è rosso.
2. Quando interagisci (editing, picking ecc) con il controllo dei contenuti, il bordo del controllo dei contenuti è colorato con *Color*.

Il seguente esempio di codice mostra come modificare il colore del controllo dei contenuti:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Come impostare lo stile per formattare il testo digitato nel controllo dei contenuti

Se si desidera impostare lo stile di controllo dei contenuti, è possibile utilizzare `StructuredDocumentTag.Style` o `StructuredDocumentTag.StyleName` proprietà. Quando si digita il testo nel controllo dei contenuti nel documento di output, il testo digitato avrà lo stile "Quote".

{{% alert color="primary" %}}

Si noti che solo gli stili Linked e Character possono essere applicati al controllo dei contenuti. Un InvalidOperationException ("Cannot applicare questo stile alla SDT") viene gettato quando uno stile che esiste ma non è collegato o stile di carattere viene applicato.

{{% /alert %}}

Il seguente esempio di codice mostra come impostare lo stile di controllo dei contenuti:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Lavorare con il controllo dei contenuti della sezione di ripetizione

Il controllo del contenuto della sezione di ripetizione consente di ripetere il contenuto contenuto contenuto all'interno di esso. Utilizzo Aspose.Words, i nodi strutturati del tag del documento della sezione ripetizione e i tipi di articoli della sezione ripetizione possono essere creati e per questo scopo, [Tipo di enumerazione](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) fornisce membro REPEATING_SECTION_ITEM.

Il seguente esempio di codice mostra come legare un controllo del contenuto di sezione ripetitiva a una tabella:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}


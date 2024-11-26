---
title: Utilizzo di Content Control SDTin Java
second_title: Aspose.Words per Java
articleTitle: Utilizzo di Content Control SDT
linktitle: Utilizzo di Content Control SDT
type: docs
description: "Gestione avanzata dei contenuti dei documenti, come creare e manipolare i controlli dei contenuti (tag dei documenti strutturati) utilizzando Java."
weight: 390
url: /it/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

In Microsoft Word è possibile creare un modulo iniziando da un modello e aggiungendo controlli di contenuto, inclusi checkboxes, caselle di testo, selettori di date ed elenchi a discesa. In Aspose.Words, un tag documento strutturato o un controllo contenuto da qualsiasi documento caricato in Aspose.Words viene importato come nodo StructuredDocumentTag. I tag di documento strutturato (SDT o controllo del contenuto) consentono di incorporare la semantica definita dal cliente, nonché il suo comportamento e l'aspetto in un documento.

StructuredDocumentTag può verificarsi in un documento nei seguenti punti:

- Livello di blocco: tra paragrafi e tabelle, come figlio di un Corpo, HeaderFooter, Commento, Nota a piè di pagina o nodo Forma.
- Row-level-Tra le righe di una tabella, come figlio di un nodo di tabella.
- Livello cella - Tra le celle in una riga di tabella, come figlio di un nodo di riga.
- Inline-level-Tra contenuto in linea all'interno, come figlio di un paragrafo.
- Annidato all'interno di un altro StructuredDocumentTag.

## Inserimento di controlli di contenuto in un documento

In questa versione di Aspose.Words, è possibile creare i seguenti tipi di SDT o controllo contenuto:

- Checkbox
- DropDownList
- ComboBox
- Data
- BuildingBlockGallery
- Gruppo
- `Picture`
- RichText
- PlainText

L'esempio di codice seguente mostra come creare il controllo del contenuto di tipo checkbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

Il seguente esempio di codice mostra come creare il controllo del contenuto di tipo rich text box:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

L'esempio di codice seguente mostra come creare il controllo del contenuto della casella combinata tipo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Come aggiornare i controlli dei contenuti

Questa sezione spiega come aggiornare i valori di SDT o content control a livello di codice.

L'esempio di codice seguente mostra come impostare lo stato corrente di checkbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

L'esempio di codice seguente mostra come modificare i controlli del contenuto di tipo casella di testo normale, elenco a discesa e immagine:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questi esempi da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Associazione del controllo del contenuto alle parti personalizzate XML

È possibile associare i controlli del contenuto con i dati XML (*custom XML part*) nei documenti di Word.

L'esempio di codice seguente mostra come associare il controllo del contenuto alle parti personalizzate XML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Cancella contenuto di un controllo contenuto

È possibile cancellare il contenuto di un controllo contenuto visualizzando un segnaposto. **StructuredDocumentTag.clear()** metodo cancella il contenuto di questo tag documento strutturato e visualizza un segnaposto se è definito. Tuttavia, non è possibile cancellare il contenuto di un controllo del contenuto se contiene revisioni. Se un controllo contenuto non ha segnaposto, vengono inseriti cinque spazi come in MS Word (ad eccezione di sezioni ripetute, elementi di sezione ripetuti, gruppi, caselle di controllo, citazioni). Se un controllo contenuto è mappato su custom XML, il nodo di riferimento XML viene cancellato.

Il seguente esempio di codice mostra come cancellare il contenuto del controllo contenuto:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Modificare i colori di sfondo e bordo del controllo del contenuto

La proprietà `StructuredDocumentTag.Color` consente di ottenere o impostare il colore del controllo del contenuto. Il colore influisce sul controllo del contenuto in due situazioni:

1. MS Word evidenzia lo sfondo del controllo contenuto quando il mouse si sposta sul controllo contenuto. Questo aiuta a identificare il controllo del contenuto. Il colore dell'evidenziazione è un po 'più" morbido " rispetto a *Color*. Ad esempio, MS Word evidenzia lo sfondo con il colore rosa, quando *Color* è rosso.
2. Quando interagisci (modifica, selezione, ecc.) con il controllo del contenuto, il bordo del controllo del contenuto viene colorato con *Color*.

Il seguente esempio di codice mostra come modificare il colore del controllo del contenuto:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Come impostare lo stile per formattare il testo digitato nel controllo del contenuto

Se si desidera impostare lo stile di controllo del contenuto, è possibile utilizzare le proprietà `StructuredDocumentTag.Style` o `StructuredDocumentTag.StyleName`. Quando si digita il testo nel controllo contenuto nel documento di output, il testo digitato avrà lo stile "Quote".

{{% alert color="primary" %}}

Si noti che solo gli stili Linked e Character possono essere applicati al controllo del contenuto. Un InvalidOperationException ("Impossibile applicare questo stile a SDT") viene generato quando uno stile esiste ma non è collegato o viene applicato uno stile di carattere.

{{% /alert %}}

Il seguente esempio di codice mostra come impostare lo stile di controllo del contenuto:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Lavorare con il controllo del contenuto della sezione ripetuta

Il controllo contenuto sezione ripetuta consente di ripetere il contenuto in esso contenuto. Utilizzando Aspose.Words, è possibile creare i nodi tag documento strutturato dei tipi di elemento sezione ripetuta e sezione ripetuta e, a tale scopo, [SdtType tipo di enumerazione](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) fornisce un membro REPEATING_SECTION_ITEM.

Nell'esempio di codice seguente viene illustrato come associare un controllo del contenuto di sezione ripetuta a una tabella:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}


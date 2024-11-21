---
title: Lavorare con Content Control SDT
second_title: Aspose.Words per C++
articleTitle: Lavorare con Content Control SDT
linktitle: Lavorare con Content Control SDT
type: docs
description: "Gestione avanzata dei contenuti dei documenti, come creare e manipolare i controlli dei contenuti (tag di documenti strutturati) utilizzando C++."
weight: 390
url: /it/cpp/structured-document-tags-or-content-control/
timestamp: 2024-01-27-14-07-04
---

In Microsoft Word è possibile creare un modulo iniziando da un modello e aggiungendo controlli di contenuto, tra cui caselle di controllo, caselle di testo, selettori di date ed elenchi a discesa. In Aspose.Words, un tag documento strutturato o un controllo contenuto da qualsiasi documento caricato in Aspose.Words viene importato come nodo StructuredDocumentTag. I tag di documenti strutturati (SDT o content control) consentono di incorporare la semantica definita dal cliente, nonché il suo comportamento e l'aspetto in un documento. StructuredDocumentTag può verificarsi in un documento nei seguenti punti:

- Livello di blocco - Tra paragrafi e tabelle, come figlio di un Corpo, HeaderFooter, Commento, Nota a piè di pagina o nodo Forma
- Row-level-Tra le righe di una tabella, come figlio di un nodo Tabella
- Livello cella - Tra le celle in una riga di tabella, come figlio di un nodo di riga
- Inline-level-Tra contenuto in linea all'interno, come figlio di un paragrafo
- Annidato all'interno di un altro StructuredDocumentTag

## Come impostare lo stile per formattare il testo digitato nel controllo del contenuto

Se si desidera impostare lo stile di controllo del contenuto, è possibile utilizzare le proprietà `StructuredDocumentTag.Style` o `StructuredDocumentTag.StyleName`. Quando si digita il testo nel controllo contenuto nel documento di output, il testo digitato avrà lo stile "Quote".

{{% alert color="primary" %}}

Si noti che solo gli stili Linked e Character possono essere applicati al controllo del contenuto. Un InvalidOperationException ("Impossibile applicare questo stile all'SDT") viene generato quando uno stile esiste ma non è collegato o viene applicato uno stile di carattere.

{{% /alert %}}

Il seguente esempio di codice mostra come impostare lo stile di controllo del contenuto:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## Lavorare con il controllo del contenuto della sezione ripetuta

Il controllo contenuto sezione ripetuta consente di ripetere il contenuto in esso contenuto. Utilizzando Aspose.Words, è possibile creare i nodi tag documento strutturato dei tipi di elemento sezione ripetuta e sezione ripetuta e, a tale scopo, il tipo di enumerazione SdtType fornisce la proprietà **RepeatingSectionItem**.

Nell'esempio di codice seguente viene illustrato come associare un controllo del contenuto di sezione ripetuta a una tabella:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}

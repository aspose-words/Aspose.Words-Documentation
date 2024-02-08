---
title: Panoramica del generatore di documenti in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Panoramica del generatore di documenti
linktitle: Panoramica del generatore di documenti
type: docs
description: "DocumentBuilder ti consente di creare documenti dinamici da zero o aggiungere nuovi elementi a quelli esistenti utilizzando Python. DocumentBuilder fornisce metodi per inserire testo, caselle di controllo, tabelle, immagini e altri elementi di contenuto in Python."
weight: 30
url: /it/python-net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) è una potente classe che si associa a [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) e ti consente di creare documenti dinamici da zero o aggiungere nuovi elementi a uno esistente.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) fornisce metodi per inserire testo, caselle di controllo, oggetti oleosi, paragrafi, elenchi, tabelle, immagini e altri elementi di contenuto. Ti consente di specificare i caratteri, la formattazione di paragrafi o sezioni ed eseguire altre operazioni.

## Generatore di documenti o Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) integra classi e metodi disponibili in Aspose.Words Document Object Model (DOM) per semplificare le attività di creazione di documenti più comuni. È cioè possibile creare e modificare il contenuto dei documenti sia tramite Aspose.Words DOM, che richiede una buona conoscenza della struttura ad albero, sia utilizzando DocumentBuilder. Il `DocumentBuilder` è una "facciata" per la complessa struttura **Document** che consente di inserire velocemente e facilmente contenuti e formattazioni.

Le operazioni possibili con [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) sono possibili anche utilizzando direttamente le classi del Aspose.Words DOM. Tuttavia, l'utilizzo diretto delle classi Aspose.Words DOM richiede in genere più righe di codice rispetto all'utilizzo di [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

## Navigazione del documento

La navigazione del documento si basa sul concetto di un cursore virtuale, con il quale è possibile spostarsi in un'altra posizione nel documento utilizzando vari metodi **DocumentBuilder.move_to_XXX** come [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) e [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Questo cursore virtuale indica dove verrà inserito il testo quando si chiamano i metodi [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/), [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/) e altri. Consulta il seguente articolo "Navigazione con il cursore" per saperne di più sul cursore virtuale.

L'esempio di codice seguente mostra come accedere a un segnalibro:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## Creazione e modifica di documenti

Aspose.Words API fornisce diverse classi responsabili della formattazione di vari elementi di un documento. Ciascuna classe incapsula proprietà di formattazione relative a uno specifico elemento del documento, come testo, paragrafo, sezione e altri. Ad esempio, la classe [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) rappresenta le proprietà di formattazione dei caratteri, la classe [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) rappresenta le proprietà di formattazione dei paragrafi e così via. Gli oggetti di queste classi vengono restituiti dalle proprietà [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) corrispondenti, che hanno gli stessi nomi delle classi. Pertanto, puoi accedervi e impostare la formattazione desiderata durante la creazione del documento.

Puoi anche inserire testo, caselle di controllo, oggetti OLE, immagini, segnalibri, campi modulo e altri elementi del documento nella posizione del cursore utilizzando il metodo `Write` o uno qualsiasi dei metodi **DocumentBuilder.insert_XXX**, come [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/) e metodi simili.

Vediamo come creare un semplice documento utilizzando il [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

### Crea un documento utilizzando DocumentBuilder

Per iniziare è necessario creare un [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) e associarlo a un oggetto [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Crei una nuova istanza di [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) chiamandone il costruttore e passandola a un oggetto [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) per l'allegato al costruttore.

Per inserire un testo, passa la stringa di testo che devi inserire nel documento al metodo [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/).

L'esempio di codice seguente mostra come creare un documento semplice utilizzando un generatore di documenti.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Specificare la formattazione del documento

La proprietà [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) definisce la formattazione del testo. Questo oggetto contiene diversi attributi del carattere (nome del carattere, dimensione del carattere, colore e così via). Alcuni importanti attributi dei caratteri sono rappresentati anche dalle proprietà [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) per consentirti di accedervi direttamente. Queste sono le proprietà booleane [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/) e [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/).

Il seguente esempio di codice mostra come inserire un testo formattato utilizzando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) specifica la formattazione dei caratteri che verrà applicata a tutto il testo inserito dalla posizione corrente nel documento in poi.
- [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) specifica la formattazione del paragrafo corrente e di tutti i paragrafi da inserire.
- [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) specifica le proprietà della pagina e della sezione per la sezione corrente e l'intera sezione che verrà inserita.
- [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) e [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) specificano le proprietà di formattazione che verranno applicate alle celle e alle righe della tabella dalla posizione corrente nel documento in poi.

In questa situazione, "corrente" indica la posizione, il paragrafo, la sezione, la cella o la riga in cui si trova il cursore.

{{% /alert %}}

{{% alert color="primary" %}}

Tieni presente che le proprietà [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) e [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) vengono aggiornate ogni volta che accedi a una posizione diversa nel documento per riflettere le proprietà di formattazione di questa posizione.

{{% /alert %}}

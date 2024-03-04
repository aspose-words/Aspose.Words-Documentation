---
title: Panoramica del generatore di documenti in C#
second_title: Aspose.Words per .NET
articleTitle: Panoramica del generatore di documenti
linktitle: Panoramica del generatore di documenti
type: docs
description: "DocumentBuilder ti consente di creare documenti dinamici da zero o aggiungere nuovi elementi a quelli esistenti utilizzando C#. DocumentBuilder fornisce metodi per inserire testo, caselle di controllo, tabelle, immagini e altri elementi di contenuto in .NET."
weight: 30
url: /it/net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/) è una potente classe che si associa a [Document](https://reference.aspose.com/words/it/net/aspose.words/document/) e ti consente di creare documenti dinamici da zero o aggiungere nuovi elementi a uno esistente.

**DocumentBuilder** fornisce metodi per inserire testo, caselle di controllo, oggetti oleosi, paragrafi, elenchi, tabelle, immagini e altri elementi di contenuto. Ti consente di specificare i caratteri, la formattazione di paragrafi o sezioni ed eseguire altre operazioni.

## Generatore di documenti o Aspose.Words DOM

**DocumentBuilder** integra classi e metodi disponibili in Aspose.Words Document Object Model (DOM) per semplificare le attività di creazione di documenti più comuni. È cioè possibile creare e modificare il contenuto dei documenti sia tramite Aspose.Words DOM, che richiede una buona conoscenza della struttura ad albero, sia utilizzando DocumentBuilder. Il `DocumentBuilder` è una "facciata" per la complessa struttura **Document** che consente di inserire velocemente e facilmente contenuti e formattazioni.

Le operazioni possibili con **DocumentBuilder** sono possibili anche utilizzando direttamente le classi del Aspose.Words DOM. Tuttavia, l'utilizzo diretto delle classi Aspose.Words DOM richiede in genere più righe di codice rispetto all'utilizzo di **DocumentBuilder**.

## Navigazione del documento

La navigazione del documento si basa sul concetto di un cursore virtuale, con il quale è possibile spostarsi in un'altra posizione nel documento utilizzando vari metodi **DocumentBuilder.MoveToXXX** come [MoveToDocumentStart](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/movetodocumentstart/) e [MoveToField](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/movetofield/). Questo cursore virtuale indica dove verrà inserito il testo quando si chiamano i metodi [Write](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/write/ln/index), [InsertBreak](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/insertbreak/) e altri. Vedere il seguente articolo "Navigazione con il cursore" per saperne di più sul cursore virtuale.

L'esempio di codice seguente mostra come accedere a un segnalibro:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## Creazione e modifica di documenti

Aspose.Words API fornisce diverse classi responsabili della formattazione di vari elementi di un documento. Ciascuna classe incapsula proprietà di formattazione relative a uno specifico elemento del documento, come testo, paragrafo, sezione e altri. Ad esempio, la classe [Font](https://reference.aspose.com/words/it/net/aspose.words/font/) rappresenta le proprietà di formattazione dei caratteri, la classe [ParagraphFormat](https://reference.aspose.com/words/it/net/aspose.words/paragraphformat/) rappresenta le proprietà di formattazione dei paragrafi e così via. Gli oggetti di queste classi vengono restituiti dalle proprietà **DocumentBuilder** corrispondenti, che hanno gli stessi nomi delle classi. Pertanto, puoi accedervi e impostare la formattazione desiderata durante la creazione del documento.

Puoi anche inserire testo, caselle di controllo, oggetti OLE, immagini, segnalibri, campi modulo e altri elementi del documento nella posizione del cursore utilizzando il metodo `Write` o uno qualsiasi dei metodi **DocumentBuilder.InsertXXX**, come [InsertField](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/insertfield/#insertfield/), [InsertHtml](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/inserthtml/#inserthtml/) e metodi simili.

Vediamo come creare un semplice documento utilizzando il **DocumentBuilder**.

### Crea un documento utilizzando DocumentBuilder

Per iniziare è necessario creare un **DocumentBuilder** e associarlo a un oggetto **Document**. Crei una nuova istanza di **DocumentBuilder** chiamandone il costruttore e passandola a un oggetto **Document** per l'allegato al costruttore.

Per inserire un testo, passa la stringa di testo che devi inserire nel documento al metodo **Write**.

L'esempio di codice seguente mostra come creare un documento semplice utilizzando un generatore di documenti.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### Specificare la formattazione del documento

La proprietà [Font](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/font/) definisce la formattazione del testo. Questo oggetto contiene diversi attributi del carattere (nome del carattere, dimensione del carattere, colore e così via). Alcuni importanti attributi dei caratteri sono rappresentati anche dalle proprietà **DocumentBuilder** per consentirti di accedervi direttamente. Queste sono le proprietà booleane [Font.Bold](https://reference.aspose.com/words/it/net/aspose.words/font/bold/), [Font.Italic](https://reference.aspose.com/words/it/net/aspose.words/font/italic/) e [Font.Underline](https://reference.aspose.com/words/it/net/aspose.words/font/underline/).

Il seguente esempio di codice mostra come inserire un testo formattato utilizzando **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/font/) specifica la formattazione dei caratteri che verrà applicata a tutto il testo inserito dalla posizione corrente nel documento in poi.
- [ParagraphFormat](https://reference.aspose.com/words/it/net/aspose.words/paragraphformat/) specifica la formattazione del paragrafo corrente e di tutti i paragrafi da inserire.
- [PageSetup](https://reference.aspose.com/words/it/net/aspose.words/pagesetup/) specifica le proprietà della pagina e della sezione per la sezione corrente e l'intera sezione che verrà inserita.
- [CellFormat](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/cellformat/) e [RowFormat](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/rowformat/) specificano le proprietà di formattazione che verranno applicate alle celle e alle righe della tabella dalla posizione corrente nel documento in poi.

In questa situazione, "corrente" indica la posizione, il paragrafo, la sezione, la cella o la riga in cui si trova il cursore.

{{% /alert %}}

{{% alert color="primary" %}}

Tieni presente che le proprietà **Font**, **ParagraphFormat** e **PageSetup** vengono aggiornate ogni volta che accedi a una posizione diversa nel documento per riflettere le proprietà di formattazione di questa posizione.

{{% /alert %}}

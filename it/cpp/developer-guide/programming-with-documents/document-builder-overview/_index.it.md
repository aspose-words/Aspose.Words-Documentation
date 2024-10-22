---
title: Panoramica di Document Builder in C++
second_title: Aspose.Words per C++
articleTitle: Panoramica di Document Builder
linktitle: Panoramica di Document Builder
type: docs
description: "DocumentBuilder consente di creare documenti dinamici da zero o aggiungere nuovi elementi a quelli esistenti utilizzando C++. DocumentBuilder fornisce metodi per inserire testo, caselle di controllo, tabelle, immagini e altri elementi di contenuto in C++."
weight: 30
url: /it/cpp/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) è una classe potente che si associa a [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) e consente di creare documenti dinamici da zero o aggiungere nuovi elementi a uno esistente.

**DocumentBuilder**

## Generatore di documenti o DOM Aspose.Words

**DocumentBuilder**

Le operazioni possibili con **DocumentBuilder** sono possibili anche quando si usano direttamente le classi del DOM Aspose.Words. Tuttavia, l'utilizzo diretto delle classi DOM di Aspose.Words richiede solitamente più righe di codice rispetto all'utilizzo di **DocumentBuilder**.

## Navigazione documenti

La navigazione del documento si basa sul concetto di cursore virtuale, con il quale è possibile spostarsi in un'altra posizione nel documento utilizzando vari metodi **DocumentBuilder.MoveToXXX**, ad esempio [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) e [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Questo cursore virtuale indica dove verrà inserito il testo quando si chiamano i metodi [Write](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/), e altri.

Il seguente esempio di codice mostra come passare a un segnalibro:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## Creazione e modifica di documenti

Aspose.Words API fornisce diverse classi responsabili della formattazione di vari elementi di un documento. Ciascuna delle classi incapsula le proprietà di formattazione relative a uno specifico elemento del documento, ad esempio testo, paragrafo, sezione e altri. Ad esempio, la classe [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) rappresenta le proprietà di formattazione dei caratteri, la classe [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) rappresenta le proprietà di formattazione dei paragrafi e così via. Gli oggetti di queste classi vengono restituiti dalle proprietà **DocumentBuilder** corrispondenti, che hanno gli stessi nomi delle classi. Pertanto, è possibile accedervi e impostare la formattazione desiderata durante la compilazione del documento.

È inoltre possibile inserire testo, casella di controllo, oggetto ole, immagini, segnalibri, campi modulo e altri elementi del documento nella posizione del cursore utilizzando il metodo `Write` o uno qualsiasi dei metodi **DocumentBuilder.InsertXXX**, ad esempio [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/) e metodi simili.

Vediamo come creare un semplice documento usando **DocumentBuilder**.

### Creare un documento usando DocumentBuilder

Per iniziare, è necessario creare un **DocumentBuilder** e associarlo a un oggetto **Document**. Si crea una nuova istanza di **DocumentBuilder** chiamando il suo costruttore e passarlo a un oggetto **Document** per l'allegato al costruttore.

Per inserire un testo, passare la stringa di testo che è necessario inserire nel documento al metodo **Write**.

L'esempio di codice seguente mostra come creare un documento semplice utilizzando un generatore di documenti.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### Specificare la formattazione del documento

La proprietà [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) definisce la formattazione del testo. Questo oggetto contiene diversi attributi di carattere (nome del carattere, dimensione del carattere, colore e così via). Alcuni importanti attributi dei font sono rappresentati anche dalle proprietà **DocumentBuilder** per consentirvi di accedervi direttamente. Queste sono le proprietà booleane [Font.Bold](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_bold/), [Font.Italic](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_italic/) e [Font.Underline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_underline/).

L'esempio di codice seguente mostra come inserire un testo formattato usando **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) specifica la formattazione dei caratteri che verrà applicata a tutto il testo inserito dalla posizione corrente nel documento in poi.
- [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) specifica la formattazione del paragrafo per il paragrafo corrente e per tutti i paragrafi da inserire.
- [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) specifica le proprietà pagina e sezione per la sezione corrente e l'intera sezione che verrà inserita.
- [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) e [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) specificano le proprietà di formattazione che verranno applicate alle celle e alle righe della tabella dalla posizione corrente nel documento in poi.

In questa situazione, "corrente" indica la posizione, il paragrafo, la sezione, la cella o la riga in cui si trova il cursore.

{{% /alert %}}

{{% alert color="primary" %}}

Si noti che le proprietà **Font**, **ParagraphFormat** e **PageSetup** vengono aggiornate ogni volta che si passa a una posizione diversa nel documento per riflettere le proprietà di formattazione di questa posizione.

{{% /alert %}}

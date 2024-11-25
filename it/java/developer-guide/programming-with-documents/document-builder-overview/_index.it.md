---
title: Panoramica di Document Builder in Java
second_title: Aspose.Words per Java
articleTitle: Panoramica di Document Builder
linktitle: Panoramica di Document Builder
type: docs
description: "DocumentBuilder consente di creare documenti dinamici da zero o aggiungere nuovi elementi a quelli esistenti. DocumentBuilder fornisce metodi per inserire testo, checkboxes, tabelle, immagini e altri elementi di contenuto in Java."
weight: 30
url: /it/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) è una classe potente che si associa a [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) e consente di creare documenti dinamici da zero o aggiungere nuovi elementi a uno esistente.

**DocumentBuilder**

## Generatore di documenti o Aspose.Words DOM

**DocumentBuilder**

Le operazioni possibili con **DocumentBuilder** sono possibili anche quando si usano direttamente le classi di Aspose.Words DOM. Tuttavia, l'utilizzo diretto delle classi Aspose.Words DOM richiede solitamente più righe di codice rispetto all'utilizzo di **DocumentBuilder**.

## Navigazione documenti

La navigazione del documento si basa sul concetto di cursore virtuale, con il quale è possibile spostarsi in un'altra posizione nel documento utilizzando vari metodi **DocumentBuilder.MoveToXXX**, ad esempio [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) e [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Questo cursore virtuale indica dove verrà inserito il testo quando si chiamano i metodi [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), e altri. Vedere il seguente articolo "Navigazione con il cursore" per ulteriori informazioni sul cursore virtuale.

Il seguente esempio di codice mostra come passare a un segnalibro:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Creazione e modifica di documenti

Aspose.Words API fornisce diverse classi responsabili della formattazione di vari elementi di un documento. Ciascuna delle classi incapsula le proprietà di formattazione relative a uno specifico elemento del documento, ad esempio testo, paragrafo, sezione e altri. Ad esempio, la classe [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) rappresenta le proprietà di formattazione dei caratteri, la classe [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) rappresenta le proprietà di formattazione dei paragrafi e così via. Gli oggetti di queste classi vengono restituiti dalle proprietà **DocumentBuilder** corrispondenti, che hanno gli stessi nomi delle classi. Pertanto, è possibile accedervi e impostare la formattazione desiderata durante la compilazione del documento.

È inoltre possibile inserire testo, checkbox, oggetto ole, immagini, segnalibri, campi modulo e altri elementi del documento nella posizione del cursore utilizzando il metodo `Write` o uno qualsiasi dei metodi **DocumentBuilder.InsertXXX**, ad esempio [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) e metodi simili.

Vediamo come creare un semplice documento usando **DocumentBuilder**.

### Creare un documento usando DocumentBuilder

Per iniziare, è necessario creare un **DocumentBuilder** e associarlo a un oggetto **Document**. Si crea una nuova istanza di **DocumentBuilder** chiamando il suo costruttore e passarlo a un oggetto **Document** per l'allegato al costruttore.

Per inserire un testo, passare la stringa di testo che è necessario inserire nel documento al metodo **Write**.

L'esempio di codice seguente mostra come creare un documento semplice utilizzando un generatore di documenti.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Specificare la formattazione del documento

La proprietà [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) definisce la formattazione del testo. Questo oggetto contiene diversi attributi di carattere (nome del carattere, dimensione del carattere, colore e così via). Alcuni importanti attributi dei font sono rappresentati anche dalle proprietà **DocumentBuilder** per consentirvi di accedervi direttamente. Queste sono le proprietà booleane [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) e [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

L'esempio di codice seguente mostra come inserire un testo formattato usando **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) specifica la formattazione dei caratteri che verrà applicata a tutto il testo inserito dalla posizione corrente nel documento in poi.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) specifica la formattazione del paragrafo per il paragrafo corrente e per tutti i paragrafi da inserire.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) specifica le proprietà pagina e sezione per la sezione corrente e l'intera sezione che verrà inserita.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) e [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) specificano le proprietà di formattazione che verranno applicate alle celle e alle righe della tabella dalla posizione corrente nel documento in poi.

In questa situazione, "corrente" indica la posizione, il paragrafo, la sezione, la cella o la riga in cui si trova il cursore.

{{% /alert %}}

{{% alert color="primary" %}}

Si noti che le proprietà **Font**, **ParagraphFormat** e **PageSetup** vengono aggiornate ogni volta che si passa a una posizione diversa nel documento per riflettere le proprietà di formattazione di questa posizione.

{{% /alert %}}

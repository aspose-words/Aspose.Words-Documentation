---
title: Costruttore di documenti Panoramica in Java
second_title: Aspose.Words per Java
articleTitle: Panoramica del Costruttore di documenti
linktitle: Panoramica del Costruttore di documenti
type: docs
description: "DocumentBuilder consente di costruire documenti dinamici da zero o aggiungere nuovi elementi a quelli esistenti. DocumentBuilder fornisce metodi per inserire testo, caselle di controllo, tabelle, immagini e altri elementi di contenuto in Java."
weight: 30
url: /it/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) è una classe potente che associa [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) e consente di costruire documenti dinamici da zero o aggiungere nuovi elementi a uno esistente.

**DocumentBuilder** fornisce metodi per inserire testo, caselle di controllo, oggetti ole, paragrafi, elenchi, tabelle, immagini e altri elementi di contenuto. Consente di specificare font, paragrafo o formattazione della sezione e di eseguire altre operazioni.

## Costruttore di documenti o Aspose.Words DOM

**DocumentBuilder** complementi classi e metodi disponibili Aspose.Words Document Object Model (DOM) semplificare le attività di costruzione dei documenti più comuni. Cioè, è possibile creare e modificare il contenuto dei documenti sia attraverso il Aspose.Words DOM, che richiede una buona comprensione della struttura dell'albero, e utilizzando il DocumentBuilder. The `DocumentBuilder` è una "facade" per il complesso **Document** struttura che consente di inserire rapidamente e facilmente contenuti e formattazione.

Operazioni possibili con **DocumentBuilder** sono anche possibili quando si utilizzano le classi Aspose.Words DOM direttamente. Tuttavia, utilizzando Aspose.Words DOM classi di solito richiedono più linee di codice che utilizzare **DocumentBuilder**.

## Navigazione dei documenti

La navigazione dei documenti si basa sul concetto di un cursore virtuale, con il quale si può spostare in un'altra posizione nel documento utilizzando vari **DocumentBuilder.MoveToXXX** metodi quali [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) e [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Questo cursore virtuale indica dove verrà inserito il testo quando si chiamano i metodi [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), e altri. Vedi il seguente articolo "Navigation with Cursor" per saperne di più sul cursore virtuale.

Il seguente esempio di codice mostra come navigare in un segnalibro:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Costruzione e modifica dei documenti

Aspose.Words API fornisce diverse classi che sono responsabili della formattazione di vari elementi di un documento. Ciascuna delle classi incapsula proprietà di formattazione relative a un elemento di documento specifico, come testo, paragrafo, sezione e altri. Per esempio, il [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) classe rappresenta proprietà di formattazione dei caratteri, la [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) classe rappresenta le proprietà di formattazione del paragrafo, e così via. Gli oggetti di queste classi sono restituiti dalla corrispondente **DocumentBuilder** proprietà, che hanno gli stessi nomi delle classi. Pertanto, è possibile accedervi e impostare la formattazione desiderata durante la costruzione del documento.

È inoltre possibile inserire testo, casella di controllo, oggetto ole, immagini, segnalibri, campi di forma e altri elementi di documento nella posizione del cursore utilizzando il `Write` metodo o qualsiasi di **DocumentBuilder.InsertXXX** metodi, come [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), e metodi simili.

Vediamo come creare un semplice documento utilizzando il **DocumentBuilder**.

### Creare un documento utilizzando DocumentBuilder

Per iniziare, è necessario creare un **DocumentBuilder** e associarlo a un **Document** oggetto. Si crea una nuova istanza **DocumentBuilder** chiamando il suo costruttore e passarlo a un **Document** oggetto per attaccamento al costruttore.

Per inserire un testo, passare la stringa di testo è necessario inserire nel documento al **Write** metodo.

Il seguente esempio di codice mostra come creare un semplice documento utilizzando un costruttore di documenti.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Specificare la formattazione del documento

The [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) la proprietà definisce la formattazione del testo. Questo oggetto contiene diversi attributi di carattere (nome di testo, dimensione del carattere, colore e così via). Alcuni attributi di carattere importanti sono anche rappresentati da **DocumentBuilder** proprietà per consentire di accedervi direttamente. Questi sono i [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), e [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) proprietà booleane.

Il seguente esempio di codice mostra come inserire un testo formattato utilizzando **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- No. [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) specifica la formattazione del carattere che verrà applicata a tutto il testo inserito dalla posizione corrente nel documento in poi.
- No. [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) specifica la formattazione del paragrafo per la corrente e tutti i paragrafi da inserire.
- No. [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) specifica le proprietà della pagina e della sezione per la sezione corrente e l'intera sezione che verrà inserita.
- No. [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) e [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) specificare le proprietà di formattazione che verranno applicate alle celle di tabella e alle righe dalla posizione corrente nel documento in poi.

In questa situazione, "corrente" significa la posizione, paragrafo, sezione, cella o riga in cui il cursore è.

{{% /alert %}}

{{% alert color="primary" %}}

Nota che **Font**, **ParagraphFormat**, e **PageSetup** le proprietà vengono aggiornate ogni volta che si naviga in una posizione diversa nel documento per riflettere le proprietà di formattazione di questa posizione.

{{% /alert %}}

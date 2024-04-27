---
title: Lavorare con Watermark in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con Watermark
linktitle: Lavorare con Watermark
type: docs
description: "La manipolazione dei fili del documento utilizzando Java."
weight: 70
url: /it/java/working-with-watermark/
---

Questo argomento parla di come lavorare programmaticamente con una filigrana utilizzando Aspose.Words. Un watermark è un'immagine di sfondo che mostra dietro il testo in un documento. Una filigrana può contenere un testo o un'immagine rappresentata dal [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) classe.

{{% alert color="primary" %}}

**Prova online**

Puoi provare questa funzionalità con la nostra [Documento online gratuito watermark](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Aggiungi una filigrana a un documento

In Microsoft Word, una filigrana può essere facilmente inserita in un documento utilizzando il comando Inserisci filigrana. Aspose.Words fornisce [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) classe per aggiungere o rimuovere filigrana in documenti. Aspose.Words fornisce [Osservazioni](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)enumerazione che definisce tre possibili tipi di filigrane (Testo, Immagine e Nessuno) per lavorare con

### Aggiungi testo Watermark

L'esempio seguente del codice dimostra come inserire una filigrana di testo in un documento definendo [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) usando [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) metodo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Aggiungi immagine Watermark

Il seguente esempio di codice dimostra come inserire un'immagine filigrana in un documento definendo [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) usando [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) metodo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

La filigrana può anche essere inserita con classe di forma pure. È molto facile inserire qualsiasi forma o immagine in un'intestazione o piè di pagina e quindi creare una filigrana di qualsiasi tipo immaginabile.

Il seguente esempio di codice inserisce una filigrana in un documento di Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file campione di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Rimuovere la filigrana da un documento

The [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) la classe fornisce `Remove` metodo per rimuovere la filigrana da un documento.

I seguenti esempi di codice mostrano come rimuovere una filigrana dai documenti:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Per rimuovere la filigrana da un documento è necessario impostare solo il nome della forma del watermark durante l'inserimento e quindi rimuovere la forma del watermark da un nome assegnato.

Il seguente esempio di codice mostra come impostare il nome della forma del watermark e rimuoverlo dal documento:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Aggiungere una filigrana in una cella da tavolo

A volte è necessario inserire una filigrana/immagine nella cella di una tabella e visualizzarla fuori dalla tabella, è possibile utilizzare [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) proprieta'. Questa proprietà ottiene o imposta una bandiera che indica se la forma viene visualizzata all'interno di un tavolo o all'esterno di esso. Si noti che questa proprietà funziona solo quando si ottimizza il documento per Microsoft Word 2010 utilizzando [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) metodo

Il seguente esempio di codice mostra come utilizzare questa proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

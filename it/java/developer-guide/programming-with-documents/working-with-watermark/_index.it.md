---
title: Utilizzo della filigrana in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con Watermark
linktitle: Lavorare con Watermark
type: docs
description: "Manipolazione filigrana documento utilizzando Java."
weight: 70
url: /it/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

In questo argomento viene illustrato come lavorare a livello di programmazione con una filigrana utilizzando Aspose.Words. Una filigrana è un'immagine di sfondo che viene visualizzata dietro il testo di un documento. Una filigrana può contenere un testo o un'immagine rappresentata dalla classe [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/).

{{% alert color="primary" %}}

**Prova online**

Puoi provare questa funzionalità con il nostro [Filigrana di documenti online gratuita](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Aggiungere una filigrana a un documento

In Microsoft Word, una filigrana può essere facilmente inserita in un documento utilizzando il comando Inserisci filigrana. Aspose.Words fornisce la classe [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) per aggiungere o rimuovere la filigrana nei documenti. Aspose.Words fornisce l'enumerazione [WatermarkType](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/) che definisce tre possibili tipi di filigrane (Testo, Immagine e Nessuna) con cui lavorare.

### Aggiungi filigrana di testo

Nell'esempio di codice seguente viene illustrato come inserire una filigrana di testo in un documento definendo [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) utilizzando il metodo [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Aggiungi Filigrana immagine

Nell'esempio di codice seguente viene illustrato come inserire una filigrana di immagine in un documento definendo [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) utilizzando il metodo [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

La filigrana può anche essere inserita usando la classe shape. È molto facile inserire qualsiasi forma o immagine in un'intestazione o piè di pagina e quindi creare una filigrana di qualsiasi tipo immaginabile.

L'esempio di codice seguente inserisce una filigrana in un documento di Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Rimuovere la filigrana da un documento

La classe [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) fornisce il metodo `Remove` per rimuovere la filigrana da un documento.

Gli esempi di codice seguenti mostrano come rimuovere una filigrana dai documenti:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Per rimuovere la filigrana da un documento è necessario impostare solo il nome della forma filigrana durante l'inserimento e quindi rimuovere la forma filigrana con un nome assegnato.

L'esempio di codice seguente mostra come impostare il nome della forma della filigrana e rimuoverla dal documento:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Aggiungere una filigrana in una cella di tabella

A volte è necessario inserire una filigrana/immagine nella cella di una tabella e visualizzarla all'esterno della tabella, è possibile utilizzare la proprietà [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean). Questa proprietà ottiene o imposta un flag che indica se la forma viene visualizzata all'interno di una tabella o all'esterno di essa. Si noti che questa proprietà funziona solo quando si ottimizza il documento per Microsoft Word 2010 utilizzando il metodo [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int).

Il seguente esempio di codice mostra come utilizzare questa proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

---
title: Lavorare con la filigrana in C#
second_title: Aspose.Words per .NET
articleTitle: Lavorare con la filigrana
linktitle: Lavorare con la filigrana
description: "Manipolazione della filigrana del documento utilizzando C#."
type: docs
weight: 340
url: /it/net/working-with-watermark/
---

In questo argomento viene illustrato come lavorare a livello di codice con la filigrana utilizzando Aspose.Words. Una filigrana è un'immagine di sfondo visualizzata dietro il testo in un documento. Una filigrana può contenere un testo o un'immagine rappresentata dalla classe [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/).

{{% alert color="primary" %}}

**Prova on-line**

Puoi provare questa funzionalità con il nostro [Filigrana per documenti online gratuita](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Aggiungi una filigrana a un documento

In Microsoft Word, una filigrana può essere facilmente inserita in un documento utilizzando il comando Inserisci filigrana. Aspose.Words fornisce la classe [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) per aggiungere o rimuovere la filigrana nei documenti. Aspose.Words fornisce l'enumerazione [Tipo filigrana](https://reference.aspose.com/words/net/aspose.words/watermark/type/) che definisce tre possibili tipi di filigrane (testo, immagine e nessuna) con cui lavorare

### Aggiungi filigrana di testo

L'esempio di codice seguente dimostra come inserire una filigrana di testo in un documento definendo [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) utilizzando il metodo [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### Aggiungi filigrana immagine

L'esempio di codice seguente dimostra come inserire una filigrana di immagine in un documento definendo [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) utilizzando il metodo [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

La filigrana può anche essere inserita utilizzando la classe forma. È molto semplice inserire qualsiasi forma o immagine nell'intestazione o nel piè di pagina e creare così una filigrana di qualsiasi tipo immaginabile.

L'esempio di codice seguente inserisce una filigrana in un documento di Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}


## Rimuovi la filigrana da un documento

La classe [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) fornisce il metodo di rimozione per rimuovere la filigrana da un documento.

Il seguente esempio di codice mostra come rimuovere una filigrana dai documenti:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

Se le filigrane vengono aggiunte utilizzando l'oggetto classe [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/), per rimuovere la filigrana da un documento è necessario impostare solo il nome della forma della filigrana durante l'inserimento e quindi rimuovere la forma della filigrana con un nome assegnato.

Il seguente esempio di codice mostra come impostare il nome della forma della filigrana e rimuoverlo dal documento:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## Aggiungi una filigrana in una cella di tabella

A volte è necessario inserire una filigrana/immagine nella cella di una tabella e visualizzarla all'esterno della tabella, è possibile utilizzare la proprietà [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/). Questa proprietà ottiene o imposta un flag che indica se la forma viene visualizzata all'interno o all'esterno di una tabella. Tieni presente che questa proprietà funziona solo quando ottimizzi il documento per Microsoft Word 2010 utilizzando il metodo [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/).

L'esempio di codice seguente mostra come utilizzare questa proprietà:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

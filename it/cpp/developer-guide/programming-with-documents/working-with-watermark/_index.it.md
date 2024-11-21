---
title: Lavorare con la filigrana in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con Watermark
linktitle: Lavorare con Watermark
type: docs
description: "Manipolazione filigrana documento utilizzando C++."
weight: 340
url: /it/cpp/working-with-watermark/
timestamp: 2024-01-30-16-22-34
---

In questo argomento viene illustrato come lavorare a livello di programmazione con la filigrana utilizzando Aspose.Words. Una filigrana è un'immagine di sfondo che viene visualizzata dietro il testo di un documento. Una filigrana può contenere un testo o un'immagine rappresentata dalla classe [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/).

## Aggiungere una filigrana a un documento

In Microsoft Word, una filigrana può essere facilmente inserita in un documento utilizzando il comando Inserisci filigrana. Aspose.Words fornisce la classe [watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) per aggiungere o rimuovere la filigrana nei documenti. Aspose.Words fornisce l'enumerazione [WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/) che definisce tre possibili tipi di filigrane (Testo, Immagine e Nessuna) con cui lavorare.

### Aggiungi filigrana di testo

Nell'esempio di codice seguente viene illustrato come inserire una filigrana di testo in un documento definendo [TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/) utilizzando il metodo [SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### Aggiungi Filigrana immagine

Nell'esempio di codice seguente viene illustrato come inserire una filigrana di immagine in un documento definendo [ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/) utilizzando il metodo [SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

La filigrana può anche essere inserita usando la classe shape. È molto facile inserire qualsiasi forma o immagine in un'intestazione o piè di pagina e quindi creare una filigrana di qualsiasi tipo immaginabile. L'esempio di codice seguente inserisce una filigrana in un documento di Word.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## Rimuovere la filigrana da un documento

La classe [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) fornisce il metodo remove per rimuovere la filigrana da un documento.

Il seguente esempio di codice mostra come rimuovere una filigrana dai documenti:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

Se le filigrane vengono aggiunte utilizzando l'oggetto classe [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/), per rimuovere la filigrana da un documento è necessario impostare solo il nome della forma della filigrana durante l'inserimento e quindi rimuovere la forma della filigrana con un nome assegnato.

L'esempio di codice seguente mostra come impostare il nome della forma della filigrana e rimuoverla dal documento:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## Aggiungere una filigrana nella cella della tabella

A volte è necessario inserire una filigrana/immagine nella cella di una tabella e visualizzarla all'esterno della tabella, è possibile utilizzare la proprietà [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/). Questa proprietà ottiene o imposta un flag che indica se la forma viene visualizzata all'interno di una tabella o all'esterno di essa. Si noti che questa proprietà funziona solo quando si ottimizza il documento per Microsoft Word 2010 utilizzando il metodo [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/).

Il seguente esempio di codice mostra come utilizzare questa proprietà:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

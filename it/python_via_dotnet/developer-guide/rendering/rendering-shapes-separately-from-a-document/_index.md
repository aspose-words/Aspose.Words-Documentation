---
title: Forme separatamente dal documento
second_title: Aspose.Words per Python via .NET
articleTitle: Rendering di forme separatamente da un documento
linktitle: Rendering di forme separatamente da un documento
description: "Estrai vari oggetti grafici, come immagini, caselle di testo contenenti paragrafi o forme di frecce, durante l'elaborazione di un documento ed esportali in una posizione esterna utilizzando Python."
type: docs
weight: 40
url: /it/python-net/rendering-shapes-separately-from-a-document/
---

Durante l'elaborazione dei documenti, un'attività comune è estrarre tutte le immagini trovate nel documento ed esportarle in una posizione esterna. Questo compito diventa semplice con Aspose.Words API, che fornisce già la funzionalità per l'estrazione e il salvataggio dei dati delle immagini. Tuttavia, a volte potresti voler estrarre in modo simile altri tipi di contenuto grafico rappresentato da un diverso tipo di oggetto di disegno, ad esempio una casella di testo contenente paragrafi, forme di freccia e una piccola immagine. Non esiste un modo semplice per eseguire il rendering di questo oggetto poiché è una combinazione di singoli elementi di contenuto. Potresti anche riscontrare il caso in cui i contenuti sono stati raggruppati insieme in un oggetto che assomiglia a un'unica immagine.

Aspose.Words fornisce funzionalità per estrarre questo tipo di contenuto nello stesso modo in cui è possibile estrarre un'immagine semplice da una forma come contenuto sottoposto a rendering. In questo articolo viene descritto come utilizzare questa funzionalità per eseguire il rendering delle forme indipendentemente dal documento.

## Tipi di forma in Aspose.Words

Tutto il contenuto in un livello di disegno del documento è rappresentato dal nodo [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) o [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) nel Aspose.Words Document Object Module (DOM). Tali contenuti possono essere caselle di testo, immagini, forme, oggetti OLE e così via. Alcuni campi vengono importati anche come forme, ad esempio il campo `INCLUDEPICTURE`.

Un'immagine semplice è rappresentata da un nodo [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) di [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image). Questo nodo forma non ha nodi figlio ma è possibile accedere ai dati immagine contenuti al suo interno tramite la proprietà [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/). D'altro canto, una forma può essere composta anche da molti nodi figli. Ad esempio, la forma di una casella di testo, rappresentata dalla proprietà [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box), può essere composta da molti nodi, come [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) e [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). La maggior parte delle forme può includere nodi a livello di blocco [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) e [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Questi sono gli stessi nodi che appaiono nel corpo principale. Le forme sono sempre parti di qualche paragrafo, incluse direttamente in linea o ancorate al [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), ma "fluttuanti" ovunque nella pagina del documento.

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Un documento può anche contenere forme raggruppate insieme. È possibile abilitare Group in Microsoft Word selezionando più oggetti e facendo clic su "Group" nel menu di scelta rapida.

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

In Aspose.Words, questi gruppi di forme sono rappresentati dal nodo [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). Questi possono anche essere richiamati allo stesso modo per eseguire il rendering dell'intero gruppo in immagine.

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Il formato DOCX può contenere tipi speciali di immagini, come diagrammi o grafici. Queste forme sono rappresentate anche tramite il nodo [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) in Aspose.Words, che fornisce anche un metodo simile per renderle come immagini. In base alla progettazione, una forma non può contenere un'altra forma secondaria, a meno che tale forma non sia un'immagine ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)). Ad esempio, Microsoft Word non consente di inserire una casella di testo all'interno di un'altra casella di testo.

I tipi di forma descritti sopra forniscono un metodo speciale per eseguire il rendering delle forme tramite la classe [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). Un'istanza della classe [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) viene recuperata per un [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) o [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) tramite il metodo [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) o passando il [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) al costruttore della classe [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). Questa classe fornisce l'accesso ai membri, che consentono di eseguire il rendering di una forma come segue:

- File sul disco
- Flusso

{{% alert color="primary" %}}

Quando si esegue il rendering di un [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), deve far parte della gerarchia del documento. Se il [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) non fa parte dell'albero del documento, l'output renderizzato sarà vuoto dopo aver richiamato i metodi [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).

{{% /alert %}}

## Rendering su file o streaming

Il metodo [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) fornisce sovraccarichi che eseguono il rendering di una forma direttamente in un file o flusso. Entrambi glioverload accettano un'istanza della classe [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), che consente di definire le opzioni per il rendering della forma. Funziona allo stesso modo del metodo [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Anche se questo parametro è obbligatorio, puoi passare un valore null, specificando che non sono presenti opzioni personalizzate.

La forma può essere esportata in qualsiasi formato immagine specificato nell'enumerazione [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). Ad esempio, è possibile eseguire il rendering dell'immagine come immagine raster, come JPEG specificando l'enumerazione [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg), o come immagine vettoriale, come EMF specificando l'[SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf).

L'esempio di codice seguente illustra il rendering di una forma in un'immagine EMF separatamente dal documento e il salvataggio su disco:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

L'esempio di codice seguente illustra il rendering di una forma in un'immagine JPEG separatamente dal documento e il salvataggio in un flusso:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the vector format EMF.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
        
# Output the image in gray scale
imageOptions.image_color_mode = aw.saving.ImageColorMode.GRAYSCALE

# Reduce the brightness a bit (default is 0.5f).
imageOptions.image_brightness = 0.45
        
stream =  io.FileIO(docs_base.artifacts_dir + "TestFile.RenderToStream_out.jpg", "w+b")

# Save the rendered image to the stream using different options.
r.save(stream, imageOptions)

# Close the stream
stream.close()
{{< /highlight >}}

La classe [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) consente di specificare una varietà di opzioni che controllano il modo in cui viene eseguito il rendering dell'immagine. La funzionalità sopra descritta può essere applicata allo stesso modo ai nodi [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) e [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Rendering di un'immagine di forma

La classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) rappresenta oggetti nel livello di disegno, ad esempio una forma, una casella di testo, una forma libera, un oggetto OLE, un controllo ActiveX o un'immagine. Utilizzando la classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), puoi creare o modificare forme in un documento Microsoft Word. Una proprietà importante di una forma è il suo [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/). Forme di tipo diverso possono avere funzionalità diverse in un documento di Word. Ad esempio, solo le forme immagine e OLE possono contenere immagini, mentre la maggior parte delle forme può contenere solo testo.

L'esempio seguente mostra come eseguire il rendering di un'immagine Shape in un'immagine JPEG separatamente dal documento e salvarla sul disco:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## Recupero di una dimensione di forma

La classe [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) fornisce inoltre funzionalità per recuperare la dimensione della forma in pixel tramite il metodo [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/). Questo metodo accetta due parametri float (singolo): la scala e il DPI, che vengono utilizzati nel calcolo delle dimensioni della forma quando viene eseguito il rendering della forma. Il metodo restituisce l'oggetto **Size**, che contiene la larghezza e l'altezza della dimensione calcolata. Ciò è utile quando è necessario conoscere in anticipo la dimensione della forma renderizzata. La proprietà [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) restituisce la dimensione della forma misurata in punti. Il risultato è un oggetto **SizeF** contenente la larghezza e l'altezza. Inoltre puoi utilizzare la proprietà [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) per ottenere i limiti effettivi della forma.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}



---
title: Lavorare con le immagini in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con le immagini
linktitle: Lavorare con le immagini
description: "Crea e gestisci immagini di vari formati in un documento utilizzando Python."
type: docs
weight: 300
url: /it/python-net/working-with-images/
---

Aspose.Words consente agli utenti di lavorare con le immagini in modo molto flessibile. In questo articolo puoi esplorare solo alcune delle possibilità di lavorare con le immagini.

## Inserimento di un'immagine

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) fornisce diversi sovraccarichi del metodo [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) che consente di inserire un'immagine in linea o mobile. Se l'immagine è un metafile EMF o WMF, verrà inserita nel documento in formato metafile. Tutte le altre immagini verranno archiviate in formato PNG. Il metodo **inserisci_immagine** può utilizzare immagini provenienti da diverse fonti:

- Da un file o `URL` passando un parametro stringa
- Da uno stream passando un parametro `Stream`
- Da un array di byte passando un parametro di array di byte

Per ognuno dei metodi **inserisci_immagine** sono presenti ulteriori sovraccarichi che permettono di inserire un'immagine con le seguenti opzioni:
- In linea o mobile in una posizione specifica, ad esempio **inserisci_immagine**
- Scala percentuale o dimensione personalizzata; inoltre il metodo [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) restituisce un oggetto [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) appena creato e inserito per poter modificare ulteriormente le proprietà del [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)

### Inserimento di un'immagine in linea

Passa una singola stringa che rappresenta un file che contiene l'immagine a [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) per inserire l'immagine nel documento come elemento grafico in linea.

L'esempio di codice seguente mostra come inserire un'immagine in linea nella posizione del cursore in un documento:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### Inserimento di un'immagine mobile (posizionata in modo assoluto)

L'esempio di codice seguente mostra come inserire un'immagine mobile da un file o `URL` in una posizione e dimensione specificate:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg",
    aw.drawing.RelativeHorizontalPosition.MARGIN,
    100,
    aw.drawing.RelativeVerticalPosition.MARGIN,
    100,
    200,
    100,
    aw.drawing.WrapType.SQUARE)

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_floating_image.doc")
{{< /highlight >}}

## Come estrarre immagini da un documento

Tutte le immagini sono archiviate all'interno dei nodi [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) in un [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Per estrarre tutte le immagini o le immagini di tipo specifico dal documento, attenersi alla seguente procedura:

- Utilizzare il metodo [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) per selezionare tutti i nodi [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).
- Iterare attraverso le raccolte di nodi risultanti.
- Controlla la proprietà booleana [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/).
- Estrai i dati dell'immagine utilizzando la proprietà [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/).
- Salvare i dati dell'immagine in un file.

Il seguente esempio di codice mostra come estrarre immagini da un documento e salvarle come file:

È possibile scaricare il file modello di questo esempio da [Qui](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Come inserire il codice a barre su ogni pagina di un documento

Questo esempio dimostra come aggiungere codici a barre uguali o diversi su tutte o su pagine specifiche di un documento Word. Non esiste un modo diretto per aggiungere codici a barre su tutte le pagine di un documento ma puoi utilizzare i metodi [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) e [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) per spostarti in qualsiasi sezione o intestazione/piè di pagina e inserire le immagini del codice a barre come puoi vedere nel codice seguente.

L'esempio di codice seguente inserisce un'immagine del codice a barre in ogni pagina di un documento.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## Blocca le proporzioni dell'immagine

Le proporzioni di una forma geometrica sono il rapporto tra le sue dimensioni in diverse dimensioni. È possibile bloccare le proporzioni dell'immagine utilizzando [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/). Il valore predefinito delle proporzioni della forma dipende dal [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/). È `True` per [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) e `False` per altri tipi di forma.

Il seguente esempio di codice mostra come lavorare con le proporzioni:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## Come ottenere limiti effettivi di forma in punti

Se desideri che il riquadro di delimitazione effettivo della forma venga visualizzato sulla pagina, puoi ottenerlo utilizzando la proprietà [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/).

L'esempio di codice seguente mostra come utilizzare questa proprietà:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## Ritaglia immagini

Il ritaglio di un'immagine si riferisce solitamente alla rimozione delle parti esterne indesiderate di un'immagine per migliorare l'inquadratura. Viene utilizzato anche per rimuovere alcune porzioni di un'immagine per aumentare la messa a fuoco su un'area particolare.

L'esempio di codice seguente mostra come ottenere questo risultato utilizzando Aspose.Words API:

{{< highlight python >}}
# The path to the documents directory.
inputPath = docs_base.images_dir + "Logo.jpg"
outputPath = docs_base.artifacts_dir + "cropped_logo.jpg"

self.crop_image(inputPath,outputPath, 100, 90, 200, 200)
{{< /highlight >}}

{{< highlight python >}}
@staticmethod
def crop_image(inPath : str, outPath : str, left : int, top : int, width : int, height : int) :
    
    doc = aw.Document();
    builder = aw.DocumentBuilder(doc)
    
    croppedImage = builder.insert_image(inPath)
    
    src_width_points = croppedImage.width
    src_height_points = croppedImage.height
    
    croppedImage.width = aw.ConvertUtil.pixel_to_point(width)
    croppedImage.height = aw.ConvertUtil.pixel_to_point(height)
    
    widthRatio = croppedImage.width / src_width_points
    heightRatio = croppedImage.height / src_height_points
    
    if (widthRatio< 1) :
        croppedImage.image_data.crop_right = 1 - widthRatio
    
    if (heightRatio< 1) :
        croppedImage.image_data.crop_bottom = 1 - heightRatio
    
    leftToWidth = aw.ConvertUtil.pixel_to_point(left) / src_width_points
    topToHeight = aw.ConvertUtil.pixel_to_point(top) / src_height_points
    
    croppedImage.image_data.crop_left = leftToWidth
    croppedImage.image_data.crop_right = croppedImage.image_data.crop_right - leftToWidth
    
    croppedImage.image_data.crop_top = topToHeight
    croppedImage.image_data.crop_bottom = croppedImage.image_data.crop_bottom - topToHeight
    
    croppedImage.get_shape_renderer().save(outPath, aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG))
{{< /highlight >}}

## Salvataggio di immagini come WMF

Aspose.Words fornisce funzionalità per salvare tutte le immagini disponibili in un documento in formato [WMF](https://docs.fileformat.com/image/wmf/) durante la conversione di DOCX in RTF.

Il seguente esempio di codice mostra come salvare le immagini come WMF con le opzioni di salvataggio RTF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}

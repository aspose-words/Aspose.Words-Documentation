---
title: Trabajar con imágenes en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con imágenes
linktitle: Trabajar con imágenes
description: "Cree y administre imágenes de varios formatos en un documento usando Python."
type: docs
weight: 300
url: /es/python-net/working-with-images/
---

Aspose.Words permite a los usuarios trabajar con imágenes de una forma muy flexible. En este artículo, puedes explorar sólo algunas de las posibilidades de trabajar con imágenes.

## Insertar una imagen

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) proporciona varias sobrecargas del método [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) que le permiten insertar una imagen en línea o flotante. Si la imagen es un metarchivo EMF o WMF, se insertará en el documento en formato de metarchivo. Todas las demás imágenes se almacenarán en formato PNG. El método **insertar imagen** puede utilizar imágenes de diferentes fuentes:

- Desde un archivo o `URL` pasando un parámetro de cadena
- Desde una secuencia pasando un parámetro `Stream`
- Desde una matriz de bytes pasando un parámetro de matriz de bytes

Para cada uno de los métodos **insertar imagen**, existen más sobrecargas que le permiten insertar una imagen con las siguientes opciones:
- En línea o flotante en una posición específica, por ejemplo, **insertar imagen**
- Escala porcentual o tamaño personalizado; Además, el método [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) devuelve un objeto [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) que acaba de crearse e insertarse para que pueda modificar aún más las propiedades del [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

### Insertar una imagen en línea

Pase una sola cadena que represente un archivo que contenga la imagen a [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) para insertar la imagen en el documento como un gráfico en línea.

El siguiente ejemplo de código muestra cómo insertar una imagen en línea en la posición del cursor en un documento:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### Insertar una imagen flotante (absolutamente posicionada)

El siguiente ejemplo de código muestra cómo insertar una imagen flotante desde un archivo o `URL` en una posición y tamaño específicos:

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

## Cómo extraer imágenes de un documento

Todas las imágenes se almacenan dentro de nodos [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) en un [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Para extraer todas las imágenes o imágenes que tengan un tipo específico del documento, siga estos pasos:

- Utilice el método [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) para seleccionar todos los nodos [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).
- Iterar a través de las colecciones de nodos resultantes.
- Verifique la propiedad booleana [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/).
- Extraer datos de imágenes utilizando la propiedad [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/).
- Guardar datos de imagen en un archivo.

El siguiente ejemplo de código muestra cómo extraer imágenes de un documento y guardarlas como archivos:

Puede descargar el archivo de plantilla de este ejemplo desde [aquí](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Cómo insertar un código de barras en cada página de un documento

Este ejemplo le muestra cómo agregar códigos de barras iguales o diferentes en todas o en páginas específicas de un documento de Word. No existe una forma directa de agregar códigos de barras en todas las páginas de un documento, pero puede usar los métodos [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) y [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) para moverse a cualquier sección o encabezados/pies de página e insertar las imágenes de códigos de barras como puede ver en el siguiente código.

El siguiente ejemplo de código inserta una imagen de código de barras en cada página de un documento.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## Bloquear relación de aspecto de la imagen

La relación de aspecto de una forma geométrica es la relación de sus tamaños en diferentes dimensiones. Puede bloquear la relación de aspecto de la imagen usando [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/). El valor predeterminado de la relación de aspecto de la forma depende del [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/). Es `True` para [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) y `False` para otros tipos de formas.

El siguiente ejemplo de código muestra cómo trabajar con la relación de aspecto:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## Cómo obtener límites reales de forma en puntos

Si desea que el cuadro delimitador real de la forma se represente en la página, puede lograrlo utilizando la propiedad [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/).

El siguiente ejemplo de código muestra cómo utilizar esta propiedad:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## Recortar imágenes

El recorte de una imagen generalmente se refiere a la eliminación de las partes exteriores no deseadas de una imagen para ayudar a mejorar el encuadre. También se utiliza para eliminar algunas partes de una imagen para aumentar el enfoque en un área particular.

El siguiente ejemplo de código muestra cómo lograr esto usando Aspose.Words API:

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

## Guardar imágenes como WMF

Aspose.Words proporciona funcionalidad para guardar todas las imágenes disponibles en un documento en formato [WMF](https://docs.fileformat.com/image/wmf/) mientras convierte DOCX a RTF.

El siguiente ejemplo de código muestra cómo guardar imágenes como WMF con opciones de guardado RTF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}

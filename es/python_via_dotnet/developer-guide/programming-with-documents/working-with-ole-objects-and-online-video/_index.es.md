---
title: Objetos OLE y vídeo en línea
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con objetos OLE y vídeo en línea
linktitle: Trabajar con objetos OLE y vídeo en línea
description: "Inserte objetos antiguos o vídeo en línea en un documento utilizando Python."
type: docs
weight: 360
url: /es/python-net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) es una tecnología mediante la cual los usuarios pueden trabajar con documentos que contienen "objetos" creados o editados por aplicaciones de terceros. Es decir, OLE permite que una aplicación de edición exporte estos "objetos" a otra aplicación de edición y luego los importe con contenido adicional.

En este artículo, hablaremos sobre cómo insertar un objeto OLE y configurar sus propiedades, así como cómo insertar un video en línea en un documento.

## Insertar objeto OLE

Si desea un objeto OLE, llame al método [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) y pásele el **ProgId** explícitamente con otros parámetros.

El siguiente ejemplo de código muestra cómo insertar un objeto OLE en un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### Establecer el nombre y la extensión del archivo al insertar un objeto OLE

El paquete OLE es una forma heredada e "indocumentada" de almacenar objetos incrustados si se desconoce un controlador OLE.

Las primeras versiones de Windows, como Windows 3.1, 95 y 98, tenían una aplicación Packager.exe que podía usarse para incrustar cualquier tipo de datos en el documento. Esta aplicación ahora está excluida de Windows, pero Microsoft Word y otras aplicaciones aún la usan para incrustar datos si falta el controlador OLE o se desconoce. La clase `OlePackage` permite a los usuarios acceder a las propiedades del paquete OLE.

El siguiente ejemplo de código muestra cómo configurar el nombre del archivo, la extensión y el nombre para mostrar del paquete OLE:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### Obtenga acceso a datos sin procesar de objetos OLE

Los usuarios pueden acceder a datos de objetos OLE utilizando varias propiedades y métodos de la clase `OleFormat`. Por ejemplo, es posible obtener los datos sin procesar del objeto `OLE` o la ruta y el nombre de un archivo fuente para el objeto OLE vinculado.

El siguiente ejemplo de código muestra cómo obtener datos sin procesar de objetos OLE utilizando el método [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### Insertar objeto OLE como icono

Los objetos OLE también se pueden insertar en documentos como imágenes.

El siguiente ejemplo de código muestra cómo insertar un objeto OLE como un icono. Para ello, la clase [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) expone el método [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

El siguiente ejemplo de código muestra cómo insertar un objeto OLE incrustado como un icono de una secuencia en el documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## Insertar vídeo en línea

El video en línea se puede insertar en un documento de Word desde la pestaña *"Insertar" &gt; "Video en línea"*. Puede insertar un video en línea en un documento en la ubicación actual llamando al método [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/).

La clase [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) introduce cuatro sobrecargas de este método. El primero trabaja con los recursos de vídeo más populares y toma como parámetro el `URL` del vídeo. Por ejemplo, la primera sobrecarga admite la inserción simple de vídeos en línea desde recursos [YouTube](https://www.youtube.com/) y [Vimeo](https://vimeo.com/).

El siguiente ejemplo de código muestra cómo insertar un vídeo en línea desde *Vimeo* en un documento:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Pass direct url from youtu.be.
url = "https://www.youtube.com/watch?v=t_1LYZ102RA"

width = 360
height = 270

shape = builder.insert_online_video(url, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video.docx")
{{< /highlight >}}

La segunda sobrecarga funciona con todos los demás recursos de vídeo y toma el código HTML incrustado como parámetro. El código HTML para insertar un vídeo puede variar según el proveedor, así que comuníquese con el proveedor respectivo para obtener más detalles.

{{% alert color="primary" %}}

Tenga en cuenta que el documento se optimizará automáticamente para MS Word 2013 para mostrar vídeo.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo insertar un vídeo en línea en un documento utilizando dicho código HTML:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Shape width/height.
width = 360
height = 270

# Poster frame image.
f = open(docs_base.images_dir + "Logo.jpg", "rb")
imageBytes = f.read()
f.close()

# Visible url
vimeoVideoUrl = "https://vimeo.com/52477838"

# Embed Html code.
vimeoEmbedCode = ""

builder.insert_online_video(vimeoVideoUrl, vimeoEmbedCode, imageBytes, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video_with_embed_html.docx")
{{< /highlight >}}

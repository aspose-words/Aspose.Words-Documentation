---
title: Trabajar con objetos OLE y vídeo en línea en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con objetos OLE y vídeo en línea
linktitle: Trabajar con objetos OLE y vídeo en línea
description: "Cree y modifique la incrustación OLE en su documento usando C#."
type: docs
weight: 360
url: /es/net/working-with-ole-objects/
---

OLE (Object Linking and Embedding) es una tecnología mediante la cual los usuarios pueden trabajar con documentos que contienen "objetos" creados o editados por aplicaciones de terceros. Es decir, OLE permite que una aplicación de edición exporte estos "objetos" a otra aplicación de edición y luego los importe con contenido adicional.

En este artículo, hablaremos sobre cómo insertar un objeto OLE y configurar sus propiedades, así como cómo insertar un video en línea en un documento.

## Insertar objeto OLE

Si desea un objeto OLE, llame al método [InsertOleObject](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertoleobject/) y pásele el **ProgId** explícitamente con otros parámetros.

El siguiente ejemplo de código muestra cómo insertar un objeto OLE en un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### Establecer el nombre y la extensión del archivo al insertar un objeto OLE

El paquete OLE es una forma heredada e "indocumentada" de almacenar objetos incrustados si se desconoce un controlador OLE.

Las primeras versiones de Windows, como Windows 3.1, 95 y 98, tenían una aplicación Packager.exe que podía usarse para incrustar cualquier tipo de datos en el documento. Esta aplicación ahora está excluida de Windows, pero Microsoft Word y otras aplicaciones aún la usan para incrustar datos si falta el controlador OLE o se desconoce. La clase `OlePackage` permite a los usuarios acceder a las propiedades del paquete OLE.

El siguiente ejemplo de código muestra cómo configurar el nombre del archivo, la extensión y el nombre para mostrar del paquete OLE:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### Obtenga acceso a datos sin procesar de objetos OLE

Los usuarios pueden acceder a datos de objetos OLE utilizando varias propiedades y métodos de la clase `OleFormat`. Por ejemplo, es posible obtener los datos sin procesar del objeto `OLE` o la ruta y el nombre de un archivo fuente para el objeto OLE vinculado.

El siguiente ejemplo de código muestra cómo obtener datos sin procesar de objetos OLE utilizando el método [GetRawData](https://reference.aspose.com/words/es/net/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### Insertar objeto OLE como icono

Los objetos OLE también se pueden insertar en documentos como imágenes.

El siguiente ejemplo de código muestra cómo insertar un objeto OLE como un icono. Para ello, la clase [DocumentBuilder](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/) expone el método [InsertOleObjectAsIcon](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

El siguiente ejemplo de código muestra cómo insertar un objeto OLE incrustado como un icono de una secuencia en el documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

El tamaño máximo del icono debe ser 32x32 para que se muestre correctamente.

{{% /alert %}}

## Insertar vídeo en línea

El video en línea se puede insertar en un documento de Word desde la pestaña *"Insertar" &gt; "Video en línea"*. Puede insertar un video en línea en un documento en la ubicación actual llamando al método [InsertOnlineVideo](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertonlinevideo/).

La clase [DocumentBuilder](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/) introduce cuatro sobrecargas de este método. El primero trabaja con los recursos de vídeo más populares y toma como parámetro el `URL` del vídeo. Por ejemplo, la primera sobrecarga admite la inserción simple de vídeos en línea desde recursos [YouTube](https://www.youtube.com/) y [Vimeo](https://vimeo.com/).

El siguiente ejemplo de código muestra cómo insertar un vídeo en línea desde *Vimeo* en un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

La segunda sobrecarga funciona con todos los demás recursos de vídeo y toma el código HTML incrustado como parámetro. El código HTML para insertar un vídeo puede variar según el proveedor, así que comuníquese con el proveedor respectivo para obtener más detalles.

{{% alert color="primary" %}}

Tenga en cuenta que el documento se optimizará automáticamente para MS Word 2013 para mostrar vídeo.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo insertar un vídeo en línea en un documento utilizando dicho código HTML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}
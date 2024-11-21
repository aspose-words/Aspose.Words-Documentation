---
title: Trabajar con objetos OLE en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con Objetos OLE
linktitle: Trabajar con Objetos OLE
description: "Cree y modifique incrustaciones OLE en su documento usando C++."
type: docs
weight: 360
url: /es/cpp/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Vinculación e incrustación de objetos) es una tecnología mediante la cual los usuarios pueden trabajar con documentos que contienen "objetos" creados o editados por aplicaciones de terceros. Es decir, OLE permite que una aplicación de edición exporte estos "objetos" a otra aplicación de edición y luego los importe con contenido adicional.

En este artículo, hablaremos sobre cómo insertar un objeto OLE y establecer sus propiedades en un documento.

## Insertar Objeto OLE

Si desea un objeto OLE, llame al método [InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/) y pásele el **ProgId** explícitamente con otros parámetros.

El siguiente ejemplo de código muestra cómo insertar un objeto OLE en un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### Establezca el Nombre y la Extensión del Archivo al Insertar el Objeto OLE

El paquete OLE es una forma heredada e "indocumentada" de almacenar objetos incrustados si se desconoce un controlador OLE.

Versiones tempranas de Windows como Windows 3.1, 95 y 98 tenían un empaquetador.aplicación exe que podría usarse para incrustar cualquier tipo de datos en el documento. Esta aplicación ahora está excluida de Windows, pero Microsoft Word y otras aplicaciones aún la usan para incrustar datos si falta el controlador OLE o se desconoce. La clase `OlePackage` permite a los usuarios acceder a las propiedades del paquete OLE.

El siguiente ejemplo de código muestra cómo establecer el nombre de archivo, la extensión y el nombre para mostrar del paquete OLE:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### Obtenga Acceso a Datos sin Procesar de Objetos OLE

Los usuarios pueden acceder a los datos de objetos OLE utilizando varias propiedades y métodos de la clase `OleFormat`. Por ejemplo, es posible obtener los datos sin procesar del objeto `OLE` o la ruta y el nombre de un archivo de origen para el objeto OLE vinculado.

El siguiente ejemplo de código muestra cómo obtener datos sin procesar del objeto OLE utilizando el método [GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### Insertar objeto Ole como Icono

Los objetos OLE también se pueden insertar en documentos como imágenes.

El siguiente ejemplo de código muestra cómo insertar un objeto OLE como icono. Para este propósito, la clase [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) expone el método [InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

El siguiente ejemplo de código muestra cómo insertar un objeto OLE incrustado como icono de una secuencia en el documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## Insertar Video en Línea

El video en línea se puede insertar en un documento de Word desde la pestaña *"Insert" > "Online Video"*. Puede insertar un video en línea en un documento en la ubicación actual llamando al método [InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/).

La clase [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) introduce cuatro sobrecargas de este método. El primero funciona con los recursos de video más populares y toma el `URL` del video como parámetro. Por ejemplo, la primera sobrecarga admite la inserción simple de videos en línea desde [YouTube](https://www.youtube.com/) y [Vimeo](https://vimeo.com/) recursos.

El siguiente ejemplo de código muestra cómo insertar un video en línea de *Vimeo* en un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

La segunda sobrecarga funciona con todos los demás recursos de video y toma el código HTML incrustado como parámetro. El código HTML para incrustar un video puede variar según el proveedor, así que comuníquese con el proveedor respectivo para obtener más detalles.

{{% alert color="primary" %}}

Tenga en cuenta que el documento se optimizará automáticamente para que MS Word 2013 muestre video.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo insertar un video en línea en un documento utilizando dicho código HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}

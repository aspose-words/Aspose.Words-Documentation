---
title: Trabajar con Ole Objetos
second_title: Aspose.Words por Java
articleTitle: Trabajar con Ole Objetos
linktitle: Trabajar con Ole Objetos
description: "Cree y modifique la incrustación OLE en su documento usando Java."
type: docs
weight: 360
url: /es/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE significa "Vinculación e incrustación de objetos". Esta es la tecnología mediante la cual los usuarios pueden trabajar con documentos que contienen "objetos" creados o editados por aplicaciones de terceros. Es decir, OLE permite que una aplicación exporte estos "objetos" a otra aplicación para editarlos y luego importarlos nuevamente con algún contenido adicional.

En este artículo, hablaremos sobre cómo insertar un objeto OLE y establecer sus propiedades en un documento.

## Insertar Ole Objeto

Si desea un objeto OLE, llame al método [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) y pásele el **ProgId** explícitamente con otros parámetros.

El siguiente ejemplo de código muestra cómo insertar un objeto OLE en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Establezca el Nombre y la Extensión del Archivo al Insertar el Objeto OLE

El paquete OLE es una forma heredada e "indocumentada"de almacenar objetos incrustados si se desconoce un controlador OLE.

Las primeras versiones de Windows, como Windows 3.1, 95 y 98, tenían una aplicación Packager.exe que podía usarse para incrustar cualquier tipo de datos en el documento. Esta aplicación ahora está excluida de Windows, pero Microsoft Word y otras aplicaciones aún la usan para incrustar datos si falta el controlador OLE o se desconoce. La clase `OlePackage` permite a los usuarios acceder a las propiedades OLE Package.

El siguiente ejemplo de código muestra cómo establecer el nombre de archivo, la extensión y el nombre para mostrar de OLE Package:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Obtenga Acceso a los Datos sin Procesar del Objeto OLE

Los usuarios pueden acceder a los datos del objeto OLE utilizando varias propiedades y métodos de la clase `OleFormat`. Por ejemplo, es posible obtener los datos sin procesar del objeto `OLE` o la ruta y el nombre de un archivo de origen para el objeto OLE vinculado.

El siguiente ejemplo de código muestra cómo obtener datos sin procesar del objeto OLE utilizando el método [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### Insertar objeto OLE como icono

OLE los objetos también se pueden insertar en documentos como imágenes.

El siguiente ejemplo de código muestra cómo insertar el objeto OLE como icono. Para este propósito, la clase **DocumentBuilder** expone el método [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

El siguiente ejemplo de código muestra cómo insertar un objeto OLE incrustado como icono desde una secuencia en el documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Insertar Video en Línea

El video en línea se puede insertar en un documento de Word desde la pestaña *"Insert" > "Online Video"*. Puede insertar un video en línea en un documento en la ubicación actual llamando al método [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double):

La clase [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) introduce cuatro sobrecargas de este método. El primero funciona con los recursos de video más populares y toma el `URL` del video como parámetro. Por ejemplo, la primera sobrecarga admite la inserción simple de videos en línea desde [YouTube](https://www.youtube.com/) y [Vimeo](https://vimeo.com/) recursos.

El siguiente ejemplo de código muestra cómo insertar un video en línea de *Vimeo* en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

La segunda sobrecarga funciona con todos los demás recursos de video y toma el código HTML incrustado como parámetro. El código HTML para incrustar un video puede variar según el proveedor, así que comuníquese con el proveedor respectivo para obtener más detalles.

{{% alert color="primary" %}}

Tenga en cuenta que el documento se optimizará automáticamente para MS Word 2013 para mostrar videos.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo insertar un video en línea en un documento usando dicho código HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}

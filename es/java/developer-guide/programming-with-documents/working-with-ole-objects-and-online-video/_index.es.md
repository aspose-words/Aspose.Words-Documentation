---
title: Trabajando con objetos Ole
second_title: Aspose.Words para Java
articleTitle: Trabajando con objetos Ole
linktitle: Trabajando con objetos Ole
description: "Crear y modificar la incrustación de OLE en su documento Java."
type: docs
weight: 360
url: /es/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE representa "Object Linking and Embedding". Esta es la tecnología por la que los usuarios pueden trabajar con documentos que contienen "objetos" creados o editados por aplicaciones de terceros. Es decir, OLE permite una aplicación para exportar estos "objetos" a otra aplicación para la edición, y luego importarlos de nuevo con algún contenido adicional.

En este artículo hablaremos de insertar un objeto OLE y establecer sus propiedades en un documento.

## Insertar objetos Ole

Si quieres OLE Object, llama al [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) método y pasar el **ProgId** explícitamente con otros parámetros.

El siguiente ejemplo de código muestra cómo insertar OLE Objeto en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Establecer el nombre y la extensión de archivo al insertar objetos OLE

El paquete OLE es una forma heredada y "indocumentada" para almacenar objetos embebidos si se desconoce un manipulador OLE.

Principios Windows versiones tales como Windows 3.1, 95 y 98 tenían un Packr. exe aplicación que podría utilizarse para incorporar cualquier tipo de datos en el documento. Esta solicitud está ahora excluida Windows, pero Microsoft Word y otras aplicaciones todavía lo utilizan para incrustar datos si el manipulador OLE está desaparecido o desconocido. El `OlePackage` clase permite a los usuarios acceder a las propiedades OLE Package.

El siguiente ejemplo de código muestra cómo establecer el nombre de archivo, la extensión y el nombre de visualización de OLE Package:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Obtener acceso a OLE Object Raw Data

Los usuarios pueden acceder a datos de objetos OLE utilizando diversas propiedades y métodos de los `OleFormat` clase. Por ejemplo, es posible conseguir el `OLE` objeto de datos brutos o la ruta y el nombre de un archivo fuente para el objeto OLE vinculado.

El siguiente ejemplo de código muestra cómo conseguir OLE Objeción de datos brutos utilizando [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) método:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### Insertar OLE Objeto como icono

Los objetos OLE también se pueden insertar en documentos como imágenes.

El siguiente ejemplo de código muestra cómo insertar objetos OLE como icono. Para ello, el **DocumentBuilder** la clase expone el [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) método.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

El siguiente ejemplo de código muestra cómo insertar un objeto OLE incrustado como icono de una secuencia en el documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Insertar vídeo en línea

El vídeo en línea se puede insertar en el documento de Word desde la pestaña *"Insert" > "Online Video"*. Puede insertar un vídeo en línea en un documento en la ubicación actual llamando al [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) método:

El [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) clase presenta cuatro sobrecargas de este método. El primero trabaja con los recursos de vídeo más populares y toma el `URL` del vídeo como parámetro. Por ejemplo, la primera sobrecarga soporta la simple inserción de videos en línea desde [YouTube](https://www.youtube.com/) y [Vimeo](https://vimeo.com/) recursos.

El siguiente ejemplo de código muestra cómo insertar un vídeo en línea desde *Vimeo* en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

La segunda sobrecarga funciona con todos los demás recursos de vídeo y toma el código HTML integrado como parámetro. El código HTML para incrustar un vídeo puede variar dependiendo del proveedor, por lo que póngase en contacto con el proveedor respectivo para obtener detalles.

{{% alert color="primary" %}}

Tenga en cuenta que el documento será optimizado automáticamente para MS Word 2013 para mostrar vídeo.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo insertar un vídeo en línea en un documento usando dicho código HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}

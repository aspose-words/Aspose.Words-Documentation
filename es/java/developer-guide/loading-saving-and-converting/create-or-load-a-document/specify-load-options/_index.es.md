---
title: Especifique las opciones de carga en Java
second_title: Aspose.Words para Java
articleTitle: Especifique las opciones de carga
linktitle: Especifique las opciones de carga
description: "Establecer propiedades avanzadas al cargar un documento utilizando Java para obtener un control más preciso del proceso."
type: docs
weight: 10
url: /es/java/specify-load-options/
---

Al cargar un documento, puede establecer algunas propiedades avanzadas. Aspose.Words le proporciona el [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) clase, que permite un control más preciso del proceso de carga. Algunos formatos de carga tienen una clase correspondiente que tiene opciones de carga para este formato de carga, por ejemplo, hay [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) para cargar en formato PDF o [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) para cargar a TXT. Este artículo ofrece ejemplos de trabajo con opciones **LoadOptions** clase.

## Set Microsoft Word Versión para cambiar la apariencia

Diferentes versiones de Microsoft Word la aplicación puede mostrar documentos de forma diferente. Por ejemplo, hay un problema conocido con documentos OOXML como DOCX o DOTX producido con la Oficina de Servicios de Supervisión Interna. En tales casos, pueden faltar elementos esenciales de marcado de documentos o pueden interpretarse de manera diferente causando Microsoft Word 2019 para mostrar este documento de manera diferente en comparación con Microsoft Word 2010.

Por defecto Aspose.Words abre documentos usando Microsoft Word Reglas de 2019. Si necesita hacer que la carga de documentos aparezca como ocurriría en una de las anteriores Microsoft Word versiones de aplicaciones, debe especificar explícitamente la versión deseada usando la [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) propiedad de la **LoadOptions** clase.

El siguiente ejemplo de código muestra cómo establecer el Microsoft Word versión con opciones de carga:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## Establecer preferencias de idioma para cambiar la apariencia

Los detalles de mostrar un documento en Microsoft Word depende no sólo de la versión de la aplicación y de la **MswVersion** valor de propiedad pero también en la configuración del idioma. Microsoft Word puede mostrar documentos de forma diferente dependiendo de la configuración de diálogo "Office Language Preferences", que se puede encontrar en "File → Opciones → Languаge". Utilizando este diálogo un usuario puede seleccionar, por ejemplo, el idioma primario, los idiomas de prueba, los idiomas de visualización, etc. Aspose.Words proporciona el [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) propiedad como el equivalente de este diálogo. Si Aspose.Words la producción difiere de la Microsoft Word productos, establecer el valor adecuado para **EditingLanguage** – esto puede mejorar el documento de salida.

El siguiente ejemplo de código muestra cómo establecer el japonés como **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## Uso WarningCallback para controlar los problemas Mientras que carga un documento

Algunos documentos pueden corromperse, contener entradas inválidas o tener características que no estén respaldadas actualmente Aspose.Words. Si quieres saber sobre los problemas que ocurrieron al cargar un documento, Aspose.Words proporciona el [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) Interfaz.

El siguiente ejemplo de código muestra la implementación de la **IWarningCallback** interfaz:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

Para obtener información sobre todos los problemas durante el tiempo de carga, utilice el [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) propiedad.

El siguiente ejemplo de código muestra cómo utilizar esta propiedad:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## Uso de recursos Callback to Control the External Resources Loading

Un documento puede contener enlaces externos a imágenes ubicadas en algún lugar en un disco, red o Internet local. Aspose.Words carga automáticamente tales imágenes en un documento, pero hay situaciones cuando este proceso necesita ser controlado. Por ejemplo, para decidir si realmente necesitamos cargar una determinada imagen o tal vez saltarla. El [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) La opción de carga le permite controlar esto.

El siguiente ejemplo de código muestra la implementación de la [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) interfaz:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

El siguiente ejemplo de código muestra cómo utilizar el **ResourceLoadingCallback** propiedad:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## Use TempFolder para evitar una excepción de memoria

Aspose.Words soporta documentos extremadamente grandes que tienen miles de páginas llenas de contenido rico. Cargar dichos documentos puede requerir mucha RAM. En el proceso de carga, Aspose.Words necesita aún más memoria para mantener estructuras temporales utilizadas para analizar un documento.

Si usted tiene un problema con la excepción Out of Memory mientras carga un documento, trate de utilizar el [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) propiedad. En este caso, Aspose.Words almacenará algunos datos en archivos temporales en lugar de memoria, y esto puede ayudar a evitar tal excepción.

El siguiente ejemplo de código muestra cómo establecer **TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## Establecer la codificación Explícitamente

La mayoría de los formatos de documentos modernos almacenan su contenido en Unicode y no requieren un manejo especial. Por otro lado, todavía hay muchos documentos que utilizan algunos encoding pre-Unicode y a veces se pierden la información de codificación o ni siquiera apoyan la codificación de información por naturaleza. Aspose.Words Intenta detectar automáticamente la codificación apropiada por defecto, pero en un caso raro es posible que necesite usar una codificación diferente de la detectada por nuestro algoritmo de reconocimiento de codificación. En este caso, utilice el [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) propiedad para conseguir o establecer la codificación.

El siguiente ejemplo de código muestra cómo establecer la codificación para anular la codificación elegida automáticamente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Carga Documentos cifrados

Puedes cargar Documentos de palabras cifrados con una contraseña. Para ello, utilice una sobrecarga especial de constructor, que acepta un [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) objeto. Este objeto contiene el [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) propiedad, que especifica la cadena de contraseña.

El siguiente ejemplo de código muestra cómo cargar un documento cifrado con una contraseña:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

Si no sabe de antemano si el archivo está encriptado, puede utilizar el [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) class, que proporciona métodos de utilidad para trabajar con formatos de archivo, como la detección del formato de archivo o la conversión de extensiones de archivo a / desde enumeraciones de formato de archivo. Para detectar si el documento está encriptado y requiere una contraseña para abrirlo, utilice el [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) propiedad.

El siguiente ejemplo de código muestra cómo verificar OpenDocument está encriptado o no:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}

---
title: Especificar opciones de carga en C#
second_title: Aspose.Words para .NET
articleTitle: Especificar opciones de carga
linktitle: Especificar opciones de carga
description: "Controle con mayor precisión el proceso de carga utilizando C#."
type: docs
weight: 10
url: /es/net/specify-load-options/
---

Al cargar un documento, puede configurar algunas propiedades avanzadas. Aspose.Words te proporciona la clase [LoadOptions](https://reference.aspose.com/words/es/net/aspose.words.loading/loadoptions/), que permite un control más preciso del proceso de carga. Algunos formatos de carga tienen una clase correspondiente que contiene opciones de carga para este formato de carga, por ejemplo, hay [PdfLoadOptions](https://reference.aspose.com/words/es/net/aspose.words.loading/pdfloadoptions/) para cargar en formato PDF o [TxtLoadOptions](https://reference.aspose.com/words/es/net/aspose.words.loading/txtloadoptions/) para cargar en TXT. Este artículo proporciona ejemplos de cómo trabajar con opciones de la clase **LoadOptions**.

## Configure la versión de Microsoft Word para cambiar la apariencia

Las diferentes versiones de la aplicación Microsoft Word pueden mostrar documentos de manera diferente. Por ejemplo, existe un problema bien conocido con los documentos OOXML como DOCX o DOTX producidos con WPS Office. En tal caso, es posible que falten elementos esenciales de marcado del documento o que se interpreten de manera diferente, lo que hace que Microsoft Word 2019 muestre dicho documento de manera diferente en comparación con Microsoft Word 2010.

De forma predeterminada, Aspose.Words abre documentos utilizando las reglas Microsoft Word 2019. Si necesita que la carga del documento aparezca como sucedería en una de las versiones anteriores de la aplicación Microsoft Word, debe especificar explícitamente la versión deseada utilizando la propiedad [MswVersion](https://reference.aspose.com/words/es/net/aspose.words.loading/loadoptions/mswversion/) de la clase **LoadOptions**.

El siguiente ejemplo de código muestra cómo configurar la versión Microsoft Word con opciones de carga:

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## Establecer preferencias de idioma para cambiar la apariencia

Los detalles de mostrar un documento en Microsoft Word dependen no sólo de la versión de la aplicación y el valor de la propiedad **MswVersion** sino también de la configuración del idioma. Microsoft Word puede mostrar documentos de manera diferente dependiendo de la configuración del cuadro de diálogo "Preferencias de idioma de Office", que se puede encontrar en "Archivo → Opciones → Idioma". Al utilizar este cuadro de diálogo, un usuario puede seleccionar, por ejemplo, el idioma principal, los idiomas de revisión, los idiomas de visualización, etc. Aspose.Words proporciona la propiedad [LanguagePreferences](https://reference.aspose.com/words/es/net/aspose.words.loading/languagepreferences/) como equivalente de este cuadro de diálogo. Si la salida Aspose.Words difiere de la salida Microsoft Word, establezca el valor apropiado para **EditingLanguage**; esto puede mejorar el documento de salida.

El siguiente ejemplo de código muestra cómo configurar el japonés como **EditingLanguage**:

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## Utilice WarningCallback para controlar problemas al cargar un documento

Algunos documentos pueden estar dañados, contener entradas no válidas o tener funciones que Aspose.Words no admite actualmente. Si desea conocer los problemas que ocurrieron al cargar un documento, Aspose.Words proporciona la interfaz [IWarningCallback](https://reference.aspose.com/words/es/net/aspose.words/iwarningcallback/).

El siguiente ejemplo de código muestra la implementación de la interfaz **IWarningCallback**:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

Para obtener información sobre todos los problemas durante el tiempo de carga, utilice la propiedad [WarningCallback](https://reference.aspose.com/words/es/net/aspose.words.loading/loadoptions/warningcallback/).

El siguiente ejemplo de código muestra cómo utilizar esta propiedad:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## Utilice ResourceLoadingCallback para controlar la carga de recursos externos

Un documento puede contener enlaces externos a imágenes ubicadas en algún lugar de un disco local, red o Internet. Aspose.Words carga automáticamente dichas imágenes en un documento, pero hay situaciones en las que es necesario controlar este proceso. Por ejemplo, para decidir si realmente necesitamos cargar una determinada imagen o quizás omitirla. La opción de carga [ResourceLoadingCallback](https://reference.aspose.com/words/es/net/aspose.words.loading/loadoptions/resourceloadingcallback/) le permite controlar esto.

El siguiente ejemplo de código muestra la implementación de la interfaz [IResourceLoadingCallback](https://reference.aspose.com/words/es/net/aspose.words.loading/iresourceloadingcallback/):

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

El siguiente ejemplo de código muestra cómo utilizar la propiedad **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## Utilice TempFolder para evitar una excepción de memoria

Aspose.Words admite documentos extremadamente grandes que tienen miles de páginas llenas de contenido enriquecido. Cargar dichos documentos puede requerir mucha RAM. En el proceso de carga, Aspose.Words necesita aún más memoria para contener las estructuras temporales utilizadas para analizar un documento.

Si tiene un problema con la excepción de falta de memoria al cargar un documento, intente utilizar la propiedad [TempFolder](https://reference.aspose.com/words/es/net/aspose.words.loading/loadoptions/tempfolder/). En este caso, Aspose.Words almacenará algunos datos en archivos temporales en lugar de en la memoria, y esto puede ayudar a evitar dicha excepción.

El siguiente ejemplo de código muestra cómo configurar **TempFolder**:

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## Establecer la codificación explícitamente

La mayoría de los formatos de documentos modernos almacenan su contenido en Unicode y no requieren un manejo especial. Por otro lado, todavía hay muchos documentos que utilizan alguna codificación anterior a Unicode y, a veces, omiten información de codificación o ni siquiera admiten información de codificación por naturaleza. Aspose.Words intenta detectar automáticamente la codificación adecuada de forma predeterminada, pero en casos excepcionales es posible que necesite utilizar una codificación diferente a la detectada por nuestro algoritmo de reconocimiento de codificación. En este caso, utilice la propiedad [Encoding](https://reference.aspose.com/words/es/net/aspose.words.loading/loadoptions/encoding/) para obtener o configurar la codificación.

El siguiente ejemplo de código muestra cómo configurar la codificación para anular la codificación elegida automáticamente:

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## Cargar documentos cifrados

Puede cargar documentos de Word cifrados con una contraseña. Para hacer esto, use una sobrecarga de constructor especial, que acepta un objeto [LoadOptions](https://reference.aspose.com/words/es/net/aspose.words.loading/loadoptions/). Este objeto contiene la propiedad [Password](https://reference.aspose.com/words/es/net/aspose.words.loading/loadoptions/password/), que especifica la cadena de contraseña.

El siguiente ejemplo de código muestra cómo cargar un documento cifrado con una contraseña:

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

Si no sabe de antemano si el archivo está cifrado, puede utilizar la clase [FileFormatUtil](https://reference.aspose.com/words/es/net/aspose.words/fileformatutil/), que proporciona métodos de utilidad para trabajar con formatos de archivo, como detectar el formato de archivo o convertir extensiones de archivo a/desde enumeraciones de formatos de archivo. Para detectar si el documento está cifrado y requiere una contraseña para abrirlo, utilice la propiedad [IsEncrypted](https://reference.aspose.com/words/es/net/aspose.words/fileformatinfo/isencrypted/).

El siguiente ejemplo de código muestra cómo verificar OpenDocument, ya sea que esté cifrado o no:

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}

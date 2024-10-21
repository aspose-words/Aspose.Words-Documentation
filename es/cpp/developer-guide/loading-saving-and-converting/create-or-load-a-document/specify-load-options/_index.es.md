---
title: Especificar opciones de carga en C++
second_title: Aspose.Words para C++
articleTitle: Especificar Opciones de Carga
linktitle: Especificar Opciones de Carga
description: "Controle con mayor precisión el proceso de carga."
type: docs
weight: 10
url: /es/cpp/specify-load-options/
---

Al cargar un documento, puede establecer algunas propiedades avanzadas. Aspose.Words le proporciona la clase [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/), que permite un control más preciso del proceso de carga. Algunos formatos de carga tienen una clase correspondiente que contiene opciones de carga para este formato de carga, por ejemplo, hay [PdfLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/pdfloadoptions/) para cargar en formato PDF o [TxtLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/) para cargar en TXT. Este artículo proporciona ejemplos de cómo trabajar con opciones de la clase **LoadOptions**.

## Configure la versión de Microsoft Word para Cambiar la apariencia

Las diferentes versiones de la aplicación Microsoft Word pueden mostrar documentos de manera indiferente. Por ejemplo, existe un problema bien conocido con documentos OOXML como DOCX o DOTX producidos con WPS Office. En tal caso, es posible que falten elementos esenciales de marcado del documento o que se interpreten de manera diferente, lo que hace que Microsoft Word 2019 muestre dicho documento de manera diferente en comparación con Microsoft Word 2010.

De forma predeterminada, Aspose.Words abre documentos con las reglas de Microsoft Word 2019. Si necesita que la carga de documentos aparezca como sucedería en una de las versiones anteriores de la aplicación Microsoft Word, debe especificar explícitamente la versión deseada utilizando la propiedad [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) de la clase **LoadOptions**.

El siguiente ejemplo de código muestra cómo configurar la versión de Microsoft Word con las opciones de carga:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetMSWordVersion.cpp" >}}

## Establecer Preferencias de idioma para Cambiar la Apariencia

Los detalles de visualización de un documento en Microsoft Word dependen no solo de la versión de la aplicación y del valor de la propiedad **MswVersion**, sino también de la configuración de idioma. Microsoft Word puede mostrar los documentos de manera diferente según la configuración del cuadro de diálogo "Preferencias de idioma de Office", que se puede encontrar en "Archivo → Opciones → Idioma". Mediante este cuadro de diálogo, un usuario puede seleccionar, por ejemplo, idioma principal, idiomas de corrección, idiomas de visualización,etc. Aspose.Words proporciona la propiedad [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_languagepreferences/) como equivalente de este cuadro de diálogo. Si la salida Aspose.Words difiere de la salida de Microsoft Word, establezca el valor apropiado para **EditingLanguage**; esto puede mejorar el documento de salida.

El siguiente ejemplo de código muestra cómo establecer japonés como **EditingLanguage**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

## Utilice WarningCallback para Controlar Problemas Al Cargar un Documento

Algunos documentos pueden estar dañados, contener entradas no válidas o tener funciones que Aspose.Words no admite actualmente. Si desea conocer los problemas que ocurrieron al cargar un documento, Aspose.Words proporciona la interfaz [IWarningCallback](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/).

El siguiente ejemplo de código muestra la implementación de la interfaz **IWarningCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-DocumentLoadingWarningCallback.cpp" >}}

Para obtener información sobre todos los problemas durante el tiempo de carga, use la propiedad `WarningCallback`.

El siguiente ejemplo de código muestra cómo usar esta propiedad:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsWarningCallback.cpp" >}}

## Utilice ResourceLoadingCallback para Controlar la Carga de Recursos Externos

Un documento puede contener enlaces externos a imágenes ubicadas en algún lugar de un disco local, red o Internet. Aspose.Words carga automáticamente dichas imágenes en un documento, pero hay situaciones en las que es necesario controlar este proceso. Por ejemplo, para decidir si realmente necesitamos cargar una determinada imagen o quizás omitirla. La opción ResourceLoadingCallback load le permite controlar esto.

El siguiente ejemplo de código muestra la implementación de la interfaz IResourceLoadingCallback:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-HtmlLinkedResourceLoadingCallback.cpp" >}}

El siguiente ejemplo de código muestra cómo usar la propiedad **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsResourceLoadingCallback.cpp" >}}

## Use TempFolder para Evitar una Excepción de Memoria

Aspose.Words admite documentos extremadamente grandes que tienen miles de páginas llenas de contenido enriquecido. La carga de dichos documentos puede requerir mucha RAM. En el proceso de carga, Aspose.Words necesita aún más memoria para contener las estructuras temporales utilizadas para analizar un documento.

Si tiene un problema con la excepción de falta de memoria al cargar un documento, intente usar la propiedad [TempFolder](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_tempfolder/). En este caso, Aspose.Words almacenará algunos datos en archivos temporales en lugar de en la memoria, y esto puede ayudar a evitar dicha excepción.

El siguiente ejemplo de código muestra cómo establecer **TempFolder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetTempFolder.cpp" >}}

## Establezca la Codificación Explícitamente

La mayoría de los formatos de documentos modernos almacenan su contenido en Unicode y no requieren un manejo especial. Por otro lado, todavía hay muchos documentos que usan alguna codificación anterior a Unicode y, a veces, omiten información de codificación o ni siquiera admiten información de codificación por naturaleza. Aspose.Words intenta detectar automáticamente la codificación adecuada de forma predeterminada, pero en un caso raro, es posible que deba usar una codificación diferente a la detectada por nuestro algoritmo de reconocimiento de codificación. En este caso, use la propiedad [Encoding](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_encoding/) para obtener o establecer la codificación.

El siguiente ejemplo de código muestra cómo configurar la codificación para que anule la codificación elegida automáticamente:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsEncoding.cpp" >}}

## Cargar Documentos Cifrados

Puede cargar documentos de Word cifrados con una contraseña. Para hacer esto, use una sobrecarga de constructor especial, que acepta un objeto [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/). Este objeto contiene la propiedad [Password](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_password/), que especifica la cadena de contraseña.

El siguiente ejemplo de código muestra cómo cargar un documento cifrado con una contraseña:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-OpenEncryptedDocument-OpenEncryptedDocument.cpp" >}}

Si no sabe de antemano si el archivo está cifrado, puede usar la clase [FileFormatUtil](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/), que proporciona métodos de utilidad para trabajar con formatos de archivo, como detectar el formato de archivo o convertir extensiones de archivo a/desde enumeraciones de formato de archivo. Para detectar si el documento está cifrado y requiere una contraseña para abrirlo, use la propiedad `IsEncrypted`.

El siguiente ejemplo de código muestra cómo verificar que OpenDocument esté encriptado o no:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-VerifyODTdocument.cpp" >}}

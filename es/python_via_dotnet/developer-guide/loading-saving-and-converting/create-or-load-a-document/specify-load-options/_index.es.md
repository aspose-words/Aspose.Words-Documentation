---
title: Especificar opciones de carga en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Especificar opciones de carga
linktitle: Especificar opciones de carga
description: "Controle con mayor precisión el proceso de carga utilizando Python."
type: docs
weight: 10
url: /es/python-net/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

Al cargar un documento, puede configurar algunas propiedades avanzadas. Aspose.Words te proporciona la clase [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/), que permite un control más preciso del proceso de carga. Algunos formatos de carga tienen una clase correspondiente que contiene opciones de carga para este formato de carga, por ejemplo, hay [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) para cargar en formato PDF o [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) para cargar en TXT. Este artículo proporciona ejemplos de cómo trabajar con opciones de la clase [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

## Configure la versión de Microsoft Word para cambiar la apariencia

Las diferentes versiones de la aplicación Microsoft Word pueden mostrar documentos de manera diferente. Por ejemplo, existe un problema bien conocido con los documentos OOXML como DOCX o DOTX producidos con WPS Office. En tal caso, es posible que falten elementos esenciales de marcado del documento o que se interpreten de manera diferente, lo que hace que Microsoft Word 2019 muestre dicho documento de manera diferente en comparación con Microsoft Word 2010.

De forma predeterminada, Aspose.Words abre documentos utilizando las reglas Microsoft Word 2019. Si necesita que la carga del documento aparezca como sucedería en una de las versiones anteriores de la aplicación Microsoft Word, debe especificar explícitamente la versión deseada utilizando la propiedad [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) de la clase [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

El siguiente ejemplo de código muestra cómo configurar la versión Microsoft Word con opciones de carga:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## Establecer preferencias de idioma para cambiar la apariencia

Los detalles de mostrar un documento en Microsoft Word dependen no sólo de la versión de la aplicación y el valor de la propiedad [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) sino también de la configuración del idioma. Microsoft Word puede mostrar documentos de manera diferente dependiendo de la configuración del cuadro de diálogo "Preferencias de idioma de Office", que se puede encontrar en "Archivo → Opciones → Idioma". Al utilizar este cuadro de diálogo, un usuario puede seleccionar, por ejemplo, el idioma principal, los idiomas de revisión, los idiomas de visualización, etc. Aspose.Words proporciona la propiedad [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) como equivalente de este cuadro de diálogo. Si la salida Aspose.Words difiere de la salida Microsoft Word, establezca el valor apropiado para [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/); esto puede mejorar el documento de salida.

El siguiente ejemplo de código muestra cómo configurar el japonés como [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## Utilice TempFolder para evitar una excepción de memoria

Aspose.Words admite documentos extremadamente grandes que tienen miles de páginas llenas de contenido enriquecido. Cargar dichos documentos puede requerir mucha RAM. En el proceso de carga, Aspose.Words necesita aún más memoria para contener las estructuras temporales utilizadas para analizar un documento.

Si tiene un problema con la excepción de falta de memoria al cargar un documento, intente utilizar la propiedad [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/). En este caso, Aspose.Words almacenará algunos datos en archivos temporales en lugar de en la memoria, y esto puede ayudar a evitar dicha excepción.

El siguiente ejemplo de código muestra cómo configurar [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## Establecer la codificación explícitamente

La mayoría de los formatos de documentos modernos almacenan su contenido en Unicode y no requieren un manejo especial. Por otro lado, todavía hay muchos documentos que utilizan alguna codificación anterior a Unicode y, a veces, omiten información de codificación o ni siquiera admiten información de codificación por naturaleza. Aspose.Words intenta detectar automáticamente la codificación adecuada de forma predeterminada, pero en casos excepcionales es posible que necesite utilizar una codificación diferente a la detectada por nuestro algoritmo de reconocimiento de codificación. En este caso, utilice la propiedad [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/) para obtener o establecer la codificación.

El siguiente ejemplo de código muestra cómo configurar la codificación para anular la codificación elegida automáticamente:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## Cargar documentos cifrados

Puede cargar documentos de Word cifrados con una contraseña. Para hacer esto, use una sobrecarga de constructor especial, que acepta un objeto [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). Este objeto contiene la propiedad [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), que especifica la cadena de contraseña.

El siguiente ejemplo de código muestra cómo cargar un documento cifrado con una contraseña:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

Si no sabe de antemano si el archivo está cifrado, puede utilizar la clase [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/), que proporciona métodos de utilidad para trabajar con formatos de archivo, como detectar el formato de archivo o convertir extensiones de archivo a/desde enumeraciones de formatos de archivo. Para detectar si el documento está cifrado y requiere una contraseña para abrirlo, utilice la propiedad [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/).

El siguiente ejemplo de código muestra cómo verificar si el documento está cifrado o no:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}

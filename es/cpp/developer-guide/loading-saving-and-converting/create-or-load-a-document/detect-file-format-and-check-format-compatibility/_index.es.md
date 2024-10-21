---
title: Detecte el Formato de Archivo y Verifique la Compatibilidad del Formato
second_title: Aspose.Words para C++
articleTitle: Detecte el Formato de Archivo y Verifique la Compatibilidad del Formato
linktitle: Detecte el Formato de Archivo y Verifique la Compatibilidad del Formato
description: "Determine el formato de archivo en C++ si no está seguro de cuál es el contenido real del archivo, o para verificar la compatibilidad del formato."
type: docs
weight: 20
url: /es/cpp/detect-file-format-and-check-format-compatibility/
---

A veces es necesario determinar el formato de un documento antes de abrirlo porque la extensión del archivo no garantiza que el contenido del archivo sea el adecuado. Por ejemplo, se sabe que Crystal Reports a menudo genera documentos en formato RTF, pero les da el .extensión doc.

Aspose.Words proporciona la capacidad de obtener información sobre el tipo de archivo para evitar una excepción si no está seguro de cuál es el contenido real del archivo.

## Detecte el Formato de Archivo sin excepción

Cuando se trata de varios documentos en varios formatos de archivo, es posible que deba separar los archivos que pueden procesarse con Aspose.Words de los que no pueden. También es posible que desee saber por qué no se pueden procesar algunos de los documentos.

Si intenta cargar un archivo en un objeto [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) y Aspose.Words no puede reconocer el formato de archivo o el formato no es compatible, Aspose.Words generará una excepción. Puede detectar esas excepciones y analizarlas, pero Aspose.Words también proporciona el método [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) que nos permite determinar rápidamente el formato de archivo sin cargar un documento con posibles excepciones. Este método devuelve un objeto [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/) que contiene la información detectada sobre el tipo de archivo.

{{% alert color="primary" %}}

DetectFileFormat solo comprueba el formato de archivo, pero no valida el formato de archivo. No hay garantía de que el archivo se abra correctamente, incluso si **DetectFileFormat** devuelve que es uno de los formatos admitidos. Esto se debe a que el método **DetectFileFormat** lee solo datos parciales del formato del archivo, suficientes para verificar el formato del archivo, pero no lo suficiente para una validación completa.

{{% /alert %}}

## Comprobar la Compatibilidad de Formatos de Archivos

Podemos verificar la compatibilidad de formato de todos los archivos en la carpeta seleccionada y ordenarlos por formato en las subcarpetas correspondientes.

Dado que estamos tratando con el contenido de una carpeta, lo primero que debemos hacer es obtener una colección de todos los archivos de esta carpeta utilizando el método **GetFiles** de la clase `Directory` (del espacio de nombres `System.IO`).

El siguiente ejemplo de código muestra cómo obtener una lista de todos los archivos en la carpeta:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-GetListOfFilesInFolder.cpp" >}}

Cuando se recopilan todos los archivos, el resto del trabajo se realiza mediante el método **DetectFileFormat**, que verifica el formato del archivo.

El siguiente ejemplo de código muestra cómo iterar sobre la lista recopilada de archivos, verificar el formato de cada archivo y mover cada archivo a la carpeta correspondiente:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-CheckFormatCompatibility.cpp" >}}

Los archivos se mueven a las subcarpetas apropiadas utilizando el método `Move` de la clase `File`, desde el mismo espacio de nombres `System.IO`.

Los siguientes archivos se utilizan en el ejemplo anterior. El nombre del archivo está a la izquierda y su descripción a la derecha:

| Grupo de Archivos | Documento de Entrada | Tipo |
| :- | :- | :- |
| Formatos de archivo admitidos | Test File (DOC).doc | Documento de Microsoft Word 95/6.0 o Microsoft Word 97 – 2003. |
|  | Test File (DOT).dot | Plantilla de Microsoft Word 95 / 6.0 o Microsoft Word 97 – 2003. |
|  | Test File (DOCX).docx | Documento WordprocessingML XML abierto de Office sin macros. |
|  | Test File (DOCM).docm | Documento Office Open XML WordprocessingML con macros. |
|  | Test File (DOTX).dotx | Plantilla Office Open XML WordprocessingML. |
|  | Test File (DOTM).dotm | Plantilla Office Open XML WordprocessingML con macros. |
|  | Test File (XML).xml | Documento FlatOPC OOXML. |
|  | Test File (RTF).rtf | Documento de Formato de Texto Enriquecido. |
|  | Test File (WordML).xml | Documento WordprocessingML de Microsoft Word 2003. |
|  | Test File (HTML).html | Documento HTML. |
|  | Test File (MHTML).mhtml | Documento MHTML (archivo web). |
|  | Test File (ODT).odt | OpenDocument Texto (OpenOffice Escritor). |
|  | Test File (OTT).ott | Plantilla de documento OpenDocument. |
|  | Archivo de prueba (DocPreWord60).doc | Documento de Microsoft Word 2.0. |
| Documentos cifrados | Test File (Enc).doc | Documento cifrado de Microsoft Word 95/6.0 o Microsoft Word 97 – 2003. |
|  | Test File (Enc).docx | Documento WordprocessingML cifrado de Office Open XML. |
| Formatos de archivo no compatibles | Test File (JPG).jpg | Archivo de imagen JPEG. |


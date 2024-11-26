---
title: Detectar Formato de Archivo
second_title: Aspose.Words por Java
articleTitle: Detecte el Formato de Archivo y Verifique la Compatibilidad del Formato
linktitle: Detecte el Formato de Archivo y Verifique la Compatibilidad del Formato
description: "Obtenga información sobre el formato del documento antes de abrirlo para evitar una excepción si no está seguro de cuál es el contenido real del archivo que usa Java."
type: docs
weight: 20
url: /es/java/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

A veces es necesario determinar el formato de un documento antes de abrirlo porque la extensión del archivo no garantiza que el contenido del archivo sea el adecuado. Por ejemplo, se sabe que Crystal Reports a menudo genera documentos en formato RTF, pero les da el .extensión doc.

Aspose.Words proporciona la capacidad de obtener información sobre el tipo de archivo para evitar una excepción si no está seguro de cuál es el contenido real del archivo.

## Detecte el Formato de Archivo sin excepción

Cuando se trata de varios documentos en varios formatos de archivo, es posible que deba separar los archivos que pueden procesarse con Aspose.Words de los que no pueden. También es posible que desee saber por qué no se pueden procesar algunos de los documentos.

Si intenta cargar un archivo en un objeto [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) y Aspose.Words no puede reconocer el formato de archivo o el formato no es compatible, Aspose.Words generará una excepción. Puede detectar esas excepciones y analizarlas, pero Aspose.Words también proporciona el método [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) que nos permite determinar rápidamente el formato de archivo sin cargar un documento con posibles excepciones. Este método devuelve un objeto [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) que contiene la información detectada sobre el tipo de archivo.

{{% alert color="primary" %}}

DetectFileFormat solo comprueba el formato de archivo, pero no valida el formato de archivo. No hay garantía de que el archivo se abra correctamente, incluso si **DetectFileFormat** devuelve que es uno de los formatos admitidos. Esto se debe a que el método **DetectFileFormat** lee solo datos parciales del formato del archivo, suficientes para verificar el formato del archivo, pero no lo suficiente para una validación completa.

{{% /alert %}}

## Comprobar la Compatibilidad de Formatos de Archivos

Podemos verificar la compatibilidad de formato de todos los archivos en la carpeta seleccionada y ordenarlos por formato en las subcarpetas correspondientes.

Dado que estamos tratando con el contenido de una carpeta, lo primero que debemos hacer es obtener una colección de todos los archivos de esta carpeta utilizando el método **GetFiles** de la clase `Directory` (del espacio de nombres `System.IO`).

El siguiente ejemplo de código muestra cómo obtener una lista de todos los archivos en la carpeta:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

Cuando se recopilan todos los archivos, el resto del trabajo se realiza mediante el método **DetectFileFormat**, que verifica el formato del archivo.

El siguiente ejemplo de código muestra cómo iterar sobre la lista recopilada de archivos, verificar el formato de cada archivo y mover cada archivo a la carpeta correspondiente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

Los archivos se mueven a las subcarpetas apropiadas utilizando el método `Move` de la clase `File`, desde el mismo espacio de nombres `System.IO`.

Los siguientes archivos se utilizan en el ejemplo anterior. El nombre del archivo está a la izquierda y su descripción a la derecha:

| Grupo de Archivos | Documento de Entrada | Tipo |
| :- | :- | :- |
| Formatos de archivo admitidos | Test File (Doc).doc | Microsoft Word 95/6.0 o Microsoft Word 97 – documento de 2003. |
|  | Test File (Dot).dot | Plantilla Microsoft Word 95 / 6.0 o Microsoft Word 97 – 2003. |
|  | Test File (Docx).docx | Office Abre XML WordprocessingML documento sin macros. |
|  | Test File (Docm).docm | Office Abre XML WordprocessingML documento con macros. |
|  | Test File (Dotx).dotx | Plantilla de oficina abierta XML WordprocessingML. |
|  | Test File (Dotm).dotm | Plantilla Office Open XML WordprocessingML con macros. |
|  | Test File (XML).xml | FlatOPC OOXML Documento. |
|  | Test File (RTF).rtf | Documento de Formato de Texto Enriquecido. |
|  | Test File (WordML).xml | Microsoft Word documento de 2003 WordprocessingML. |
|  | Test File (HTML).html | HTML documento. |
|  | Test File (MHTML).mhtml | Documento MHTML (Archivo web). |
|  | Test File (Odt).odt | OpenDocument Texto (OpenOffice Escritor). |
|  | Test File (Ott).ott | Plantilla de documento OpenDocument. |
|  | Test File (DocPreWord60).doc | Microsoft Word 2.0 documento. |
| Documentos cifrados | Test File (Enc).doc | Documento cifrado Microsoft Word 95 / 6.0 o Microsoft Word 97 – 2003. |
|  | Test File (Enc).docx | Documento Office Open XML WordprocessingML cifrado. |
| Formatos de archivo no compatibles | Test File (JPG).jpg | JPEG archivo de imagen. |


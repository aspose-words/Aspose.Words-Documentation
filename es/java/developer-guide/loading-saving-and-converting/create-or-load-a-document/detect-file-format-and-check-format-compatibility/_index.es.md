---
title: Detectar formato de archivo
second_title: Aspose.Words para Java
articleTitle: Detectar formato de archivo y verificar formato Compatibilidad
linktitle: Detectar formato de archivo y verificar formato Compatibilidad
description: "Obtenga información sobre el formato de documento antes de abrirlo para evitar una excepción si no está seguro de qué contenido real del archivo está utilizando Java."
type: docs
weight: 20
url: /es/java/detect-file-format-and-check-format-compatibility/
---

A veces es necesario determinar el formato de un documento antes de abrir porque la extensión de archivo no garantiza que los contenidos del archivo sean apropiados. Por ejemplo, se sabe que Crystal Reports suele producir documentos en formato RTF, pero les da la extensión .doc.

Aspose.Words proporciona una capacidad para obtener información sobre el tipo de archivo para evitar una excepción si no está seguro de cuál es el contenido real del archivo.

## Detectar formato de archivo sin una excepción

Cuando usted está tratando con múltiples documentos en varios formatos de archivo, es posible que necesite separar los archivos que pueden ser procesados por Aspose.Words de aquellos que no pueden. También puede querer saber por qué algunos de los documentos no pueden ser procesados.

Si intenta cargar un archivo en un archivo [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) objeto y Aspose.Words no puede reconocer el formato de archivo o el formato no es compatible, Aspose.Words lanzará una excepción. Usted puede atrapar esas excepciones y analizarlas, pero Aspose.Words también proporciona el [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) método que nos permite determinar rápidamente el formato de archivo sin cargar un documento con posibles excepciones. Este método devuelve a [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) objeto que contiene la información detectada sobre el tipo de archivo.

{{% alert color="primary" %}}

DetectarFile El formato sólo comprueba el formato de archivo pero no valida el formato de archivo. No hay garantía de que el archivo se abra con éxito, incluso si **DetectFileFormat** devuelve que es uno de los formatos soportados. Esto es debido a **DetectFileFormat** método sólo lee datos parciales de formato de archivo, suficientes para comprobar el formato de archivo, pero no lo suficiente para la validación completa.

{{% /alert %}}

## Verificación de archivos Formato Compatibilidad

Podemos comprobar la compatibilidad de formato de todos los archivos en la carpeta seleccionada y clasificarlos por formato en subcarpetas correspondientes.

Ya que estamos tratando con contenidos en una carpeta, lo primero que tenemos que hacer es conseguir una colección de todos los archivos en esta carpeta usando la **GetFiles** método del `Directory` clase (de la `System.IO` namespace).

El siguiente ejemplo de código muestra cómo obtener una lista de todos los archivos en la carpeta:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

Cuando todos los archivos se recogen, el resto del trabajo es hecho por el **DetectFileFormat** método, que comprueba el formato de archivo.

El siguiente ejemplo de código muestra cómo se iteran sobre la lista recolectada de archivos, verifique el formato de cada archivo y mueva cada archivo a la carpeta apropiada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

Los archivos se mueven en subcarpetas apropiadas utilizando `Move` método del `File` clase, de la misma `System.IO` Namespace.

Los siguientes archivos se utilizan en el ejemplo anterior. El nombre del archivo está a la izquierda y su descripción está a la derecha:

| Group de Archivos | Documento de entrada | Tipo |
|  :-  |  :-  |  :-  |
| Formatos de archivo compatibles | Archivo de prueba (Doc).doc | Microsoft Word 95/6.0 o Microsoft Word Documento 97-2003. |
| | Archivo de prueba (Dot).dot | Microsoft Word 95/6.0 o Microsoft Word Plantilla 97-2003. |
| | Archivo de prueba (Docx).docx | Procesamiento de Word XML de Office Open ML documento sin macros. |
| | Archivo de prueba (Docm).docm | Procesamiento de Word XML de Office Open Documento ML con macros. |
| | Archivo de prueba (Dotx).dotx | Procesamiento de Word XML de Office Open Plantilla ML. |
| | Archivo de prueba (Dotm).dotm | Procesamiento de Word XML de Office Open Plantilla ML con macros. |
| | Archivo de prueba (XML).xml | FlatOPC OOXML Document. |
| | Archivo de prueba (RTF).rtf | Documento de formato de texto rico. |
| | Archivo de prueba (WordML).xml | Microsoft Word 2003 Wordprocessing ML document. |
| | Archivo de prueba (HTML).html | Documento HTML. |
| | Archivo de prueba (MHTML).mhtml | MHTML (archivo web) documento. |
| | Archivo de prueba (Odt).odt | Texto OpenDocument (OpenOffice Writer). |
| | Archivo de prueba (Ott).ott | Plantilla de documentos OpenDocument. |
| | Archivo de prueba (DocPreWord60).doc | Microsoft Word Documento 2.0. |
| Documentos cifrados | Archivo de prueba (Enc).doc | Encriptado Microsoft Word 95/6.0 o Microsoft Word Documento 97-2003. |
| | Archivo de prueba (Enc).docx | Procesamiento de Word XML encriptado ML document. |
| Formatos de archivo no compatibles | Archivo de prueba (JPG). jpg | Archivo de imagen JPEG. |


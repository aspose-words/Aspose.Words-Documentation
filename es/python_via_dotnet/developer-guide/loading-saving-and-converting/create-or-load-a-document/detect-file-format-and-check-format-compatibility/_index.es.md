---
title: Detectar formato de archivo al cargar
second_title: Aspose.Words para Python via .NET
articleTitle: Detectar formato de archivo y comprobar la compatibilidad del formato
linktitle: Detectar formato de archivo y comprobar la compatibilidad del formato
description: "Determine el formato del archivo en Python si no está seguro de cuál es el contenido real del archivo o para verificar la compatibilidad del formato."
type: docs
weight: 20
url: /es/python-net/detect-file-format-and-check-format-compatibility/
---

A veces es necesario determinar el formato de un documento antes de abrirlo porque la extensión del archivo no garantiza que el contenido del archivo sea apropiado. Por ejemplo, se sabe que Crystal Reports a menudo genera documentos en formato RTF, pero les da la extensión .doc.

Aspose.Words brinda la posibilidad de obtener información sobre el tipo de archivo para evitar una excepción si no está seguro de cuál es el contenido real del archivo.

## Detectar formato de archivo sin excepción

Cuando trabaja con varios documentos en varios formatos de archivo, es posible que necesite separar los archivos que Aspose.Words puede procesar de los que no. Es posible que también desee saber por qué algunos de los documentos no se pueden procesar.

Si intenta cargar un archivo en un objeto [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) y Aspose.Words no puede reconocer el formato del archivo o el formato no es compatible, Aspose.Words generará una excepción. Puede detectar esas excepciones y analizarlas, pero Aspose.Words también proporciona el método [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) que nos permite determinar rápidamente el formato del archivo sin cargar un documento con posibles excepciones. Este método devuelve un objeto [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) que contiene la información detectada sobre el tipo de archivo.

{{% alert color="primary" %}}

[detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) solo verifica el formato del archivo pero no lo valida. No hay garantía de que el archivo se abra correctamente, incluso si [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) indica que es uno de los formatos admitidos. Esto se debe a que el método [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) lee solo datos de formato de archivo parciales, suficientes para verificar el formato del archivo, pero no suficientes para una validación completa.

{{% /alert %}}

## Verifique la compatibilidad del formato de archivos

Podemos verificar la compatibilidad de formato de todos los archivos en la carpeta seleccionada y ordenarlos por formato en las subcarpetas correspondientes.

Dado que estamos tratando con el contenido de una carpeta, lo primero que debemos hacer es obtener una colección de todos los archivos de esta carpeta utilizando el método **listadir** del módulo **sistema operativo**.

El siguiente ejemplo de código muestra cómo obtener una lista de todos los archivos de la carpeta:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-GetListOfFilesInFolder.py" >}}

Cuando se recopilan todos los archivos, el resto del trabajo se realiza mediante el método [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/), que verifica el formato del archivo.

El siguiente ejemplo de código muestra cómo iterar sobre la lista recopilada de archivos, verificar el formato de cada archivo y mover cada archivo a la carpeta adecuada:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-CheckFormatCompatibility.py" >}}

Los archivos se mueven a las subcarpetas apropiadas utilizando el método **copiar archivo** del módulo **callar**.

Los siguientes archivos se utilizan en el ejemplo anterior. El nombre del archivo está a la izquierda y su descripción a la derecha:

| Grupo de archivos | Documento de entrada | Tipo |
|  :-  |  :-  |  :-  |
| Formatos de archivo admitidos | Archivo de prueba (Doc).doc|Documento Microsoft Word 95/6.0 o Microsoft Word 97 – 2003. |
|  | Archivo de prueba (Dot).dot | Plantilla Microsoft Word 95/6.0 o Microsoft Word 97 – 2003. |
|  | Archivo de prueba (Docx).docx | Documento Office Open XML WordprocessingML sin macros. |
|  | Archivo de prueba (Docm).docm | Office Open XML WordprocessingML documento con macros. |
|  | Archivo de prueba (Dotx).dotx | Plantilla Office Open XML WordprocessingML. |
|  | Archivo de prueba (Dotm).dotm | Plantilla Office Open XML WordprocessingML con macros. |
|  | Archivo de prueba (XML).xml | Documento FlatOPC OOXML. |
|  | Archivo de prueba (RTF).rtf | Documento en formato de texto enriquecido. |
|  | Archivo de prueba (WordML).xml | Documento Microsoft Word 2003 WordprocessingML. |
|  | Archivo de prueba (HTML).html | Documento HTML. |
|  | Archivo de prueba (MHTML).mhtml | Documento MHTML (archivo web). |
|  | Archivo de prueba (Odt).odt | Texto OpenDocument (OpenOffice Writer). |
|  | Archivo de prueba (Ott).ott | Plantilla de documento OpenDocument. |
|  | Archivo de prueba (DocPreWord60).doc|Documento Microsoft Word 2.0. |
| Documentos cifrados | Archivo de prueba (Enc).doc|Documento Microsoft Word 95/6.0 o Microsoft Word 97 – 2003 cifrado. |
|  | Archivo de prueba (Enc).docx | Documento cifrado Office Open XML WordprocessingML. |
| Formatos de archivo no compatibles | Archivo de prueba (JPG).jpg | Archivo de imagen JPEG. |


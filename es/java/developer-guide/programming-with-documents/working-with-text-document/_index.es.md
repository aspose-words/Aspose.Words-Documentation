---
title: Trabajar con Documento de texto en Java
second_title: Aspose.Words por Java
articleTitle: Trabajar con Documento de Texto
linktitle: Trabajar con Documento de Texto
description: "Procesamiento avanzado de documentos TXT, listas, BiDi, encabezados / pie de página, usando Java."
type: docs
weight: 430
url: /es/java/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

En este artículo, aprenderemos qué opciones pueden ser útiles para trabajar con un documento de texto a través de Aspose.Words. Tenga en cuenta que esta no es una lista completa de las opciones disponibles, sino solo un ejemplo de cómo trabajar con algunas de ellas.

## Agregar Marcas Bidireccionales

Puede usar la propiedad [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) para especificar si desea agregar marcas bidireccionales antes de cada ejecución de BiDi al exportar en formato de texto sin formato. Aspose.Words inserta caracteres Unicode'RIGHT-TO-LEFT MARK' (U + 200F) antes de cada ejecución bidireccional en texto. Esta opción corresponde a la opción" Agregar marcas bidireccionales " en el cuadro de diálogo Conversión de archivos de Word MS cuando exporta a un formato de texto sin formato. Tenga en cuenta que aparece en el cuadro de diálogo solo si se agrega cualquiera de los idiomas de edición árabe o hebreo en MS Word.

El siguiente ejemplo de código muestra cómo usar la propiedad `TxtSaveOptions.AddBidiMarks`. El valor predeterminado de esta propiedad es *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Reconocer Elementos De La Lista Durante La Carga TXT

Aspose.Words puede importar elementos de lista de un archivo de texto como números de lista o texto sin formato en su modelo de objetos de documento. La propiedad [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) permite especificar cómo se reconocen los elementos de la lista numerada cuando se importa un documento desde formato de texto sin formato:

* Si esta opción se establece en *true*, los espacios en blanco también se utilizan como delimitadores de números de lista: algoritmo de reconocimiento de listas para numeración al estilo árabe (1., 1.1.2.) usa espacios en blanco y símbolos de punto (".").
* Si esta opción se establece en *false*, el algoritmo de reconocimiento de listas detecta los párrafos de la lista, cuando los números de la lista terminan con símbolos de punto, corchete derecho o viñeta (como "•", "*", "-" o "o").

El siguiente ejemplo de código muestra cómo usar esta propiedad:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Maneje los Espacios Iniciales y Finales durante la Carga TXT

Puede controlar la forma de manejar los espacios iniciales y finales durante la carga de archivos TXT. Los espacios iniciales podrían recortarse, conservarse o convertirse en sangría y los espacios finales podrían recortarse o conservarse.

El ejemplo de código que se muestra a continuación muestra cómo recortar los espacios iniciales y finales al importar el archivo TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Detectar la Dirección del Texto del Documento

Aspose.Words proporciona la propiedad [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) en la clase [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) para detectar la dirección del texto (RTL / LTR) en el documento. Esta propiedad establece u obtiene las instrucciones de texto del documento proporcionadas en la enumeración [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/). El valor predeterminado es de izquierda a derecha.

El siguiente ejemplo de código muestra cómo detectar la dirección del texto del documento al importar el archivo TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Exportar Encabezado y Pie de página en el Archivo TXT de salida

Si desea exportar el encabezado y el pie de página en el documento TXT de salida, puede usar la propiedad [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode). Esta propiedad especifica la forma en que los encabezados y pies de página se exportan al formato de texto sin formato.

El siguiente ejemplo de código muestra cómo exportar encabezados y pies de página a formato de texto sin formato:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Sangría de la Lista de Exportación en la salida TXT

Aspose.Words introdujo la clase [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) que permite especificar cómo se sangran los niveles de lista al exportar a un formato de texto sin formato. Al trabajar con [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), se proporciona la propiedad [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) para especificar el carácter que se utilizará para sangrar los niveles de la lista y count especificando cuántos caracteres se utilizarán como sangría por nivel de lista.

El valor predeterminado de la propiedad character es '\0', lo que indica que no hay sangría. Para la propiedad count, el valor predeterminado es 0, lo que significa que no hay sangría.

### Uso del Carácter de Tabulación

El siguiente ejemplo de código muestra cómo exportar niveles de lista usando caracteres de tabulación:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Uso del Carácter de Espacio

El siguiente ejemplo de código muestra cómo exportar niveles de lista usando caracteres de espacio:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Uso de Sangría Predeterminada

El siguiente ejemplo de código muestra cómo exportar niveles de lista utilizando la sangría predeterminada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}

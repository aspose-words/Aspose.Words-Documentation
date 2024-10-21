---
title: Trabajar con Documentos de Texto en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con Documento de Texto
linktitle: Trabajar con Documento de Texto
description: "Procesamiento avanzado de documentos TXT, listas, BiDi, encabezados / pie de página, usando C++."
type: docs
weight: 430
url: /es/cpp/working-with-text-document/
---

En este artículo, aprenderemos qué opciones pueden ser útiles para trabajar con un documento de texto a través de Aspose.Words. Tenga en cuenta que esta no es una lista completa de las opciones disponibles, sino solo un ejemplo de cómo trabajar con algunas de ellas.

## Agregar Marcas Bidireccionales

Puede usar la propiedad [AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/) para especificar si desea agregar marcas bidireccionales antes de cada ejecución BiDi al exportar en formato de texto sin formato. Aspose.Words inserta el carácter Unicode 'MARCA DE DERECHA A IZQUIERDA' (U+200F) antes de cada ejecución bidireccional en el texto. Esta opción corresponde a la opción" Agregar marcas bidireccionales " en el diálogo de conversión de archivos de MS Word cuando exporta a un formato de texto sin formato. Tenga en cuenta que aparece en el diálogo solo si se agrega alguno de los idiomas de edición árabe o hebreo en MS Word.

El siguiente ejemplo de código muestra cómo usar la propiedad **AddBidiMarks**. El valor predeterminado de esta propiedad es *false*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## Reconocer Elementos De La Lista Durante La Carga De TXT

Aspose.Words puede importar elementos de lista de un archivo de texto como números de lista o texto sin formato en su modelo de objetos de documento. La propiedad [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/) permite especificar cómo se reconocen los elementos de la lista numerada cuando se importa un documento desde formato de texto sin formato:

* Si esta opción se establece en *true*, los espacios en blanco también se utilizan como delimitadores de números de lista: algoritmo de reconocimiento de listas para numeración en estilo árabe (1., 1.1.2.) usa espacios en blanco y símbolos de punto (".").
* Si esta opción se establece en *false*, el algoritmo de reconocimiento de listas detecta párrafos de la lista, cuando los números de la lista terminan con símbolos de punto, corchete derecho o viñeta (como "•", "*", "-" o "o").

El siguiente ejemplo de código muestra cómo usar esta propiedad:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## Cómo Manejar los espacios Iniciales y Finales Durante la Carga de TXT

Puede controlar la forma de manejar los espacios iniciales y finales durante la carga del archivo TXT. Los espacios iniciales podrían recortarse, conservarse o convertirse en sangría y los espacios finales podrían recortarse o conservarse.

El siguiente ejemplo de código muestra cómo recortar los espacios iniciales y finales al importar un archivo TXT:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## Exportar Encabezado y pie de página en TXT de salida

Si desea exportar encabezado y pie de página en el documento TXT de salida, puede usar la propiedad [ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/). Esta propiedad especifica la forma en que los encabezados y pies de página se exportan al formato de texto sin formato.

El siguiente ejemplo de código muestra cómo exportar encabezados y pies de página a formato de texto sin formato:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## Sangría de la Lista de Exportación en TXT de salida

Aspose.Words introdujo la clase [TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/) que permite especificar cómo se sangran los niveles de lista al exportar a un formato de texto sin formato. Al trabajar con [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/), se proporciona la propiedad [ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/) para especificar el carácter que se utilizará para sangrar los niveles de la lista y count especificando cuántos caracteres se utilizarán como sangría por nivel de lista.

El valor predeterminado para la propiedad character es '\0', lo que indica que no hay sangría. Para la propiedad count, el valor predeterminado es 0, lo que significa que no hay sangría.

### Uso del Carácter de Tabulación

El siguiente ejemplo de código muestra cómo exportar niveles de lista usando caracteres de tabulación:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### Uso del Carácter de Espacio

El siguiente ejemplo de código muestra cómo exportar niveles de lista usando caracteres de espacio:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### Uso de Sangría Predeterminada

El siguiente ejemplo de código muestra cómo exportar niveles de lista utilizando la sangría predeterminada:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}

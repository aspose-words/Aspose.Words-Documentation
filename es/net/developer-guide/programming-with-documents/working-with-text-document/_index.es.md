---
title: Trabajar con documentos de texto en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con documento de texto
linktitle: Trabajar con documento de texto
description: "Procesamiento avanzado de documentos TXT, listas, BiDi, encabezados/pie de página, usando C#."
type: docs
weight: 430
url: /es/net/working-with-text-document/
---

En este artículo aprenderemos qué opciones pueden resultar útiles para trabajar con un documento de texto a través de Aspose.Words. Tenga en cuenta que esta no es una lista completa de las opciones disponibles, sino solo un ejemplo de cómo trabajar con algunas de ellas.

## Agregar marcas bidireccionales

Puede utilizar la propiedad [AddBidiMarks](https://reference.aspose.com/words/es/net/aspose.words.saving/txtsaveoptions/addbidimarks/) para especificar si se agregan marcas bidireccionales antes de cada ejecución de BiDi al exportar en formato de texto sin formato. Aspose.Words inserta el carácter Unicode 'MARCA DE DERECHA A IZQUIERDA' (U+200F) antes de cada ejecución bidireccional en el texto. Esta opción corresponde a la opción "Agregar marcas bidireccionales" en el cuadro de diálogo Conversión de archivos de MS Word cuando exporta a un formato de texto sin formato. Tenga en cuenta que aparece en el diálogo sólo si se agrega alguno de los idiomas de edición árabe o hebreo en MS Word.

El siguiente ejemplo de código muestra cómo utilizar la propiedad **AddBidiMarks**. El valor predeterminado de esta propiedad es *false*:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## Reconocer elementos de la lista durante la carga de TXT

Aspose.Words puede importar elementos de lista de un archivo de texto como números de lista o texto sin formato en su modelo de objetos de documento. La propiedad [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/es/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) permite especificar cómo se reconocen los elementos de la lista numerados cuando se importa un documento desde formato de texto sin formato:

* Si esta opción está configurada en *true*, los espacios en blanco también se usan como delimitadores de números de lista: el algoritmo de reconocimiento de listas para numeración de estilo árabe (1., 1.1.2.) usa espacios en blanco y símbolos de punto (".").

* Si esta opción está configurada en *false*, el algoritmo de reconocimiento de listas detecta los párrafos de la lista cuando los números de la lista terminan con un punto, un corchete derecho o un símbolo de viñeta (como "•", "*", "-" u "o").

El siguiente ejemplo de código muestra cómo utilizar esta propiedad:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## Manejar espacios iniciales y finales durante la carga de TXT

Puede controlar la forma de manejar los espacios iniciales y finales durante la carga del archivo TXT. Los espacios iniciales podrían recortarse, conservarse o convertirse en sangrías y los espacios finales podrían recortarse o conservarse.

El siguiente ejemplo de código muestra cómo recortar los espacios iniciales y finales al importar un archivo TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## Detectar la dirección del texto del documento

Aspose.Words proporciona la propiedad [DocumentDirection](https://reference.aspose.com/words/es/net/aspose.words.loading/txtloadoptions/documentdirection/) en la clase [TxtLoadOptions](https://reference.aspose.com/words/es/net/aspose.words.loading/txtloadoptions/) para detectar la dirección del texto (RTL/LTR) en el documento. Esta propiedad establece u obtiene instrucciones de texto del documento proporcionadas en la enumeración [DocumentDirection](https://reference.aspose.com/words/es/net/aspose.words.loading/documentdirection/). El valor predeterminado se deja en *right*.

El siguiente ejemplo de código muestra cómo detectar la dirección del texto del documento al importar un archivo TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## Exportar encabezado y pie de página en TXT de salida

Si desea exportar el encabezado y el pie de página en el documento TXT de salida, puede utilizar la propiedad [ExportHeadersFootersMode](https://reference.aspose.com/words/es/net/aspose.words.saving/exportheadersfootersmode/). Esta propiedad especifica la forma en que se exportan los encabezados y pies de página al formato de texto sin formato.

El siguiente ejemplo de código muestra cómo exportar encabezados y pies de página a formato de texto sin formato:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## Exportar sangría de lista en TXT de salida

Aspose.Words introdujo la clase [TxtListIndentation](https://reference.aspose.com/words/es/net/aspose.words.saving/txtlistindentation/) que permite especificar cómo se sangran los niveles de la lista al exportar a un formato de texto sin formato. Al trabajar con [TxtSaveOption](https://reference.aspose.com/words/es/net/aspose.words.saving/txtsaveoptions/), se proporciona la propiedad [ListIndentation](https://reference.aspose.com/words/es/net/aspose.words.saving/txtsaveoptions/listindentation/) para especificar el carácter que se usará para sangrar los niveles de la lista y contar el número que especifica cuántos caracteres usar como sangría por nivel de lista.

El valor predeterminado para la propiedad de carácter es '\0', lo que indica que no hay sangría. Para la propiedad de recuento, el valor predeterminado es 0, lo que significa que no hay sangría.

### Usando el carácter de tabulación

El siguiente ejemplo de código muestra cómo exportar niveles de lista usando caracteres de tabulación:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### Usando carácter de espacio

El siguiente ejemplo de código muestra cómo exportar niveles de lista utilizando caracteres de espacio:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### Usar sangría predeterminada

El siguiente ejemplo de código muestra cómo exportar niveles de lista usando la sangría predeterminada:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}

---
title: Trabajar con el documento de texto en Java
second_title: Aspose.Words para Java
articleTitle: Trabajar con el documento de texto
linktitle: Trabajar con el documento de texto
description: "Procesamiento avanzado de documentos TXT, listas, BiDi, cabeceras / pies, utilizando Java."
type: docs
weight: 430
url: /es/java/working-with-text-document/
---

En este artículo aprenderemos qué opciones pueden ser útiles para trabajar con un documento de texto a través de Aspose.Words. Tenga en cuenta que esta no es una lista completa de opciones disponibles, sino sólo un ejemplo de trabajar con algunas de ellas.

## Añadir Bi-Direccional Marcas

Puedes usar el [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) propiedad para especificar si añadir marcas bi-direccionales antes de cada carrera de BiDi al exportar en formato de texto simple. Aspose.Words inserta Unicode Personaje 'RIGHT-TO-LEFT MARK' (U+200F) antes de cada carrera bidireccional en texto. Esta opción corresponde a la opción "Añadir marcas bidireccionales" en el cuadro de diálogo MS Word File Conversion cuando exporta a un formato de texto simple. Tenga en cuenta que aparece en diálogo sólo si alguno de los idiomas de edición árabe o hebreo se añaden en MS Word.

El siguiente ejemplo de código muestra cómo utilizar `TxtSaveOptions.AddBidiMarks` propiedad. El valor predeterminado de esta propiedad es *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Reconozca los elementos de la lista durante la carga TXT

Aspose.Words puede importar el elemento de lista de un archivo de texto como números de lista o texto simple en su modelo de objeto de documento. El [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) propiedad permite especificar cómo se reconocen los elementos numerados de la lista cuando se importa un documento del formato de texto simple:

* Si esta opción se establece *true*, Los espacios blancos también se utilizan como delimitadores de números de lista: algoritmo de reconocimiento de listas para la numeración de estilo árabe (1., 1.1.2.) utiliza tanto los espacios blancos como los símbolos de puntos (").
* Si esta opción se establece *false*, el algoritmo de reconocimiento de listas detecta párrafos de lista, cuando los números de lista terminan con puntos, soporte derecho o símbolos de bala (como "•", "*", "-" o "o").

El siguiente ejemplo de código muestra cómo utilizar esta propiedad:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Handle Leading and Trailing Spaces during Loading TXT

Puede controlar la forma de manejar espacios líderes y rastreadores durante la carga de archivos TXT. Los espacios principales podrían ser recortados, conservados o convertidos a espacios de identificación y de seguimiento podrían ser recortados o conservados.

El ejemplo de código que aparece a continuación muestra cómo recortar los espacios líderes y de seguimiento al importar el archivo TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Detectar el documento Dirección de texto

Aspose.Words Prestaciones [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) propiedad en [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) clase para detectar la dirección de texto (RTL / LTR) en el documento. Esta propiedad establece o recibe instrucciones de texto de documento proporcionadas en [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) enumeración. El valor predeterminado se deja a la derecha.

El siguiente ejemplo de código muestra cómo detectar la dirección de texto del documento al importar el archivo TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Export Header and Footer in Output TXT File

Si desea exportar el encabezado y el pie en el documento de salida TXT, puede utilizar el [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) propiedad. Esta propiedad especifica la forma en que los encabezados y los pies se exportan al formato de texto llano.

El siguiente ejemplo de código muestra cómo exportar encabezados y calzados al formato de texto simple:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Export List Indentation in Output TXT

Aspose.Words Introducción [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) clase que permite especificar cómo los niveles de lista están identificados mientras exportan a un formato de texto plano. Trabajando con [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), el [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) propiedad se proporciona para especificar el carácter a utilizar para la identificación de los niveles de lista y contar especificar cuántos caracteres a utilizar como indentación por nivel de lista.

El valor predeterminado de la propiedad de caracteres es '\0' indicando que no hay indentación. Para contar la propiedad, el valor predeterminado es 0 que significa ninguna indentación.

### Utilizando Tab Character

El siguiente ejemplo de código muestra cómo exportar niveles de lista usando caracteres de pestañas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Utilizando caracteres espaciales

El siguiente ejemplo de código muestra cómo exportar niveles de lista usando caracteres espaciales:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Usando Indentación por defecto

El siguiente ejemplo de código muestra cómo exportar niveles de lista usando la indentación por defecto:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}

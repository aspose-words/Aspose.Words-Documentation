---
title: Trabajar con separación de palabras en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con separación de palabras
linktitle: Trabajar con separación de palabras
description: "Utilice separación de palabras para una disposición más compacta del texto utilizando Python. Proporciona algoritmos avanzados para trabajar con diccionarios de separación de palabras y utiliza diccionarios de OpenOffice."
type: docs
weight: 220
url: /es/python-net/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

A veces es necesario utilizar la separación de palabras para lograr una disposición más compacta del texto en un documento. Al mismo tiempo, es importante comprender que las características específicas de la separación de palabras pueden diferir en cada idioma.

En la actualidad, la separación de palabras no se utiliza con tanta frecuencia como antes, especialmente en los textos en inglés. Sin embargo, el uso de esta función puede tener un impacto grave en los documentos de usuario: la separación de palabras afecta el diseño y, como resultado, la apariencia de los archivos de salida, por ejemplo, en formato PDF.

Para dividir correctamente las palabras, se utilizan diccionarios de separación de palabras específicos del idioma. Aspose.Words utiliza algoritmos avanzados para trabajar con dichos diccionarios y le permite obtener la misma separación de palabras que en Microsoft Word.

## Diccionarios de separación de palabras

Dado que los diferentes idiomas utilizan diferentes normas y reglas para la separación de palabras, la solución óptima para una separación de palabras correcta es utilizar diccionarios especiales. Aspose.Words utiliza diccionarios de OpenOffice.

Para la revisión ortográfica, OpenOffice utiliza [biblioteca Hunspell](https://hunspell.github.io/), que es una generalización del algoritmo de separación de palabras de TeX. Este algoritmo permite la separación de palabras automática no estándar utilizando patrones de separación de palabras estándar y personalizados de la competencia. Hunspell utiliza [Guión](https://github.com/hunspell/hyphen) para la separación de palabras.

{{% alert color="primary" %}}

Los diccionarios de separación de palabras se pueden obtener del [Diccionarios LibreOffice GitHub](https://github.com/LibreOffice/dictionaries). Por ejemplo, [diccionario de separación de palabras en-US](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Como Microsoft Word utiliza diccionarios distintos de los de OpenOffice para realizar la separación de palabras, la separación de palabras de algunas palabras definidas por los diccionarios de OpenOffice puede diferir de la separación de palabras de Microsoft Word. Por esta razón, a veces tenemos que aconsejar a los clientes que agreguen los patrones necesarios a sus diccionarios para corregir la separación de palabras de determinadas palabras.

{{% /alert %}}

## Algoritmo de separación de palabras

Aspose.Words implementa [el algoritmo de separación de palabras TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) y puede reutilizar los diccionarios de separación de palabras de OpenOffice.

Deben tenerse en cuenta las siguientes características de los algoritmos Aspose.Words:

* Los parámetros de distancia de separación de palabras (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) especificados en el diccionario de separación de palabras se ignoran. Aspose.Words utiliza su propio conjunto de parámetros de distancia según el modo de compatibilidad del documento.
* El algoritmo de separación de palabras en Aspose.Words admite [separación de palabras compuesta](https://github.com/hunspell/hyphen/blob/master/README.compound). Sin embargo, Aspose.Words divide las secuencias de caracteres que contienen caracteres alfabéticos y no alfabéticos mixtos en partes (palabras) solo alfabéticas y las divide con guiones por separado.
 Tenga en cuenta que la lógica de separación de palabras de palabras compuestas en Microsoft Word depende del modo de compatibilidad del documento.
* El algoritmo de separación de palabras en Aspose.Words no implementa el [separación de palabras no estándar](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Se ignoran los patrones no estándar.

## Cargando diccionarios de separación de palabras

Para utilizar la función de separación de palabras, primero registre un diccionario de separación de palabras. El siguiente ejemplo de código muestra cómo cargar diccionarios de separación de palabras para los idiomas especificados desde un archivo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-HyphenateWordsOfLanguages.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo cargar diccionarios de separación de palabras para el idioma especificado desde una secuencia:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-LoadHyphenationDictionaryForLanguage.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Impacto de la separación de sílabas en el diseño

Al dividir el texto en líneas, Aspose.Words comprueba si cada palabra encaja completamente en la línea actual. Si otra palabra es demasiado larga para caber al final de la línea, de forma predeterminada, Aspose.Words la mueve al principio de la siguiente línea en lugar de separarla con guiones.

Sin embargo, la función de separación de palabras se puede utilizar en Aspose.Words para insertar guiones en palabras para eliminar espacios en texto justificado o para mantener una longitud de línea uniforme en columnas estrechas. Obviamente, esto puede afectar al número de líneas y, por tanto, al número de páginas. En otras palabras, el uso de la función de separación de palabras afecta el diseño del documento.

## Separación de sílabas y justificación (H&amp;J)

Microsoft Word tiene una lógica compleja para elegir un punto de interrupción si el texto está justificado y la separación de palabras está habilitada. En resumen, es posible que Microsoft Word prefiera reducir o estirar los espacios para evitar la separación de líneas. Lo más probable es que esta lógica se base en [El artículo de Knuth.](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementa su propio algoritmo H&amp;J que proporciona el mismo resultado que Microsoft Word y proporciona saltos de línea idénticos en el documento de salida.

## Ver también

* [Guión – biblioteca de separación de palabras](https://github.com/hunspell/hyphen/blob/master/README)
* [Separación de palabras no estándar](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Separación de palabras automática no estándar en Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)

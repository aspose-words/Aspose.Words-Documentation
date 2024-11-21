---
title: Trabajar con separación silábica en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con Separación silábica
linktitle: Trabajar con Separación silábica
description: "Use la separación silábica para una disposición más compacta del texto usando C++. Proporciona algoritmos avanzados para trabajar con diccionarios de separación silábica, utiliza diccionarios OpenOffice."
type: docs
weight: 220
url: /es/cpp/working-with-hyphenation/
timestamp: 2024-01-30-16-22-34
---

A veces es necesario utilizar la separación silábica para una disposición más compacta del texto en un documento. Al mismo tiempo, es importante comprender que los detalles de la separación silábica de palabras pueden diferir para cada idioma.

En la actualidad, la separación silábica no se usa con tanta frecuencia como solía ser, especialmente en los textos en inglés. Sin embargo, el uso de esta función puede tener un impacto grave en los documentos del usuario: la separación silábica afecta el diseño y, como resultado, la apariencia de los archivos de salida, por ejemplo, en formato PDF.

Para la división correcta de las palabras, se utilizan diccionarios de separación silábica específicos del idioma. Aspose.Words utiliza algoritmos avanzados para trabajar con dichos diccionarios y le permite obtener la misma separación silábica que en Microsoft Word.

## Diccionarios de Separación Silábica

Dado que los diferentes idiomas usan diferentes normas y reglas para la separación silábica de palabras, la solución óptima para la separación silábica correcta es usar diccionarios especiales. Aspose.Words usa diccionarios OpenOffice.

Para la revisión ortográfica, OpenOffice usa el [Biblioteca Hunspell](https://hunspell.github.io/), que es una generalización del algoritmo de separación silábica de TeX. Este algoritmo permite la separación silábica automática no estándar utilizando patrones de separación silábica estándar y personalizados de la competencia. Hunspell usa el [Guión](https://github.com/hunspell/hyphen) para separación silábica.

{{% alert color="primary" %}}

Los diccionarios de separación silábica se pueden tomar del [LibreOffice diccionarios GitHub](https://github.com/LibreOffice/dictionaries). Por ejemplo, [diccionario de separación silábica en-US](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Dado que Microsoft Word usa diccionarios distintos de los diccionarios OpenOffice para realizar la separación silábica, la separación silábica de algunas palabras definidas por los diccionarios OpenOffice puede diferir de la separación silábica de Microsoft Word. Por esta razón, a veces tenemos que aconsejar a los clientes que agreguen los patrones necesarios a sus diccionarios para corregir la separación de palabras en particular.

{{% /alert %}}

## Algoritmo de Separación Silábica

Aspose.Words implementos [el algoritmo de separación silábica de TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) y puede reutilizar diccionarios de separación silábica OpenOffice.

Se deben tener en cuenta las siguientes características de los algoritmos Aspose.Words::

* Los parámetros de distancia de separación silábica (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) especificados en el diccionario de separación silábica se ignoran. Aspose.Words usa su propio conjunto de parámetros de distancia según el modo de compatibilidad del documento.
* El algoritmo de separación silábica en Aspose.Words admite [separación silábica compuesta](https://github.com/hunspell/hyphen/blob/master/README.compound). Sin embargo, Aspose.Words divide las secuencias de caracteres que contienen caracteres alfabéticos y no alfabéticos mixtos en partes (palabras) solo alfabéticas y las divide por separado.
  Tenga en cuenta que la lógica de separación silábica de palabras compuestas de Microsoft Word depende del modo de compatibilidad del documento.
* El algoritmo de separación silábica en Aspose.Words no implementa el [separación silábica no estándar](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Se ignoran los patrones no estándar.

## Cargando Diccionarios de Separación Silábica

Para usar la función de separación silábica, primero registre un diccionario de separación silábica.El siguiente ejemplo de código muestra cómo cargar diccionarios de separación silábica para los idiomas especificados desde un archivo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.h" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

El siguiente ejemplo de código muestra cómo cargar diccionarios de separación silábica para el idioma especificado desde una secuencia:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.h" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

Como alternativa al registro previo de diccionarios de guiones, es posible registrar solo los diccionarios de guiones requeridos "a pedido". Para lograrlo, implemente la interfaz [IHyphenationCallback](https://reference.aspose.com/words/cpp/aspose.words/ihyphenationcallback/) y use la devolución de llamada estática [Callback](https://reference.aspose.com/words/cpp/aspose.words/hyphenation/get_callback/).

El siguiente ejemplo de código muestra cómo implementar la interfaz **IHyphenationCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-CustomHyphenation.h" >}}

## Impacto de la Separación silábica en el Diseño

Al dividir el texto en líneas, Aspose.Words comprueba si cada palabra encaja completamente en la línea actual. Si otra palabra es demasiado larga para caber al final de la línea, Aspose.Words la mueve al principio de la siguiente línea de forma predeterminada en lugar de dividirla en guiones.

Sin embargo, la función de separación silábica se puede usar en Aspose.Words para insertar guiones en palabras para eliminar espacios en el texto justificado o para mantener una longitud de línea uniforme en columnas estrechas. Obviamente, esto puede afectar el número de líneas y, por lo tanto, el número de páginas. En otras palabras, el uso de la función de separación silábica afecta el diseño del documento.

## Separación silábica y justificación (H &amp; J)

Microsoft Word tiene una lógica compleja para elegir un punto de interrupción si el texto está justificado y la separación silábica está habilitada. En resumen, Microsoft Word puede preferir reducir o estirar los espacios para evitar la separación silábica de las líneas. Lo más probable es que esta lógica se base en [Artículo de Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementa su propio algoritmo H &amp; J que da el mismo resultado que Microsoft Word y proporciona un salto de línea idéntico en el documento de salida.

## Véase También

* [Guión-biblioteca de guiones](https://github.com/hunspell/hyphen/blob/master/README)
* [Separación silábica no estándar](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Separación silábica automática no estándar en Oficina abierta](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)

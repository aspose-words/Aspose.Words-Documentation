---
title: Trabajando con la Hifenación en Java
second_title: Aspose.Words para Java
articleTitle: Trabajando con la Hifenación
linktitle: Trabajando con la Hifenación
description: "Use la hifenación para un arreglo más compacto de texto. Proporciona algoritmos avanzados para trabajar con diccionarios de hifenación, utiliza diccionarios de OpenOffice usando Java."
type: docs
weight: 220
url: /es/java/working-with-hyphenation/
---

A veces es necesario utilizar la hifenación para un arreglo más compacto de texto en un documento. Al mismo tiempo, es importante entender que las características específicas de la palabra hifenación pueden diferir para cada idioma.

En la actualidad, la hifenación no se utiliza tan a menudo como solía ser, especialmente en textos en inglés. Sin embargo, el uso de esta característica puede tener un impacto serio en los documentos de usuario – la hipnación afecta el diseño y, como resultado, la aparición de los archivos de salida, por ejemplo, en formato PDF.

Para una correcta división de palabras, se utilizan diccionarios de hifenación específicos para el lenguaje. Aspose.Words utiliza algoritmos avanzados para trabajar con tales diccionarios y le permite obtener la misma hispana que en Microsoft Word.

## Diccionarios de Hifenación

Puesto que diferentes idiomas utilizan diferentes normas y reglas para la hifenación de palabras, la solución óptima para la hifenación correcta es utilizar diccionarios especiales. Aspose.Words usa diccionarios OpenOffice.

Para la comprobación de hechizos, OpenOffice utiliza el [Hunspell biblioteca](https://hunspell.github.io/), que es una generalización del algoritmo de hifenación de TeX. Este algoritmo permite la hifenación automática no estándar utilizando patrones de hipnación estándar y personalizados. Hunspell usos [Hyphen](https://github.com/hunspell/hyphen) para la hifenación.

{{% alert color="primary" %}}

Los diccionarios de la fenación se pueden tomar de los [LibreOffice diccionarios GitHub](https://github.com/LibreOffice/dictionaries). Por ejemplo, [Diccionario de hispanas en Estados Unidos](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

As Microsoft Word usa diccionarios distintos de los diccionarios de OpenOffice para realizar la hifenación, la hifenación de algunas palabras definidas por los diccionarios de OpenOffice puede diferir de la Microsoft Word Hiphenation. Por esta razón, a veces tenemos que aconsejar a los clientes que añadan los patrones necesarios a sus diccionarios para corregir la hifenación de palabras particulares.

{{% /alert %}}

## Algoritm de la hifenación

Aspose.Words implementos [el algoritmo de hifenación TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) y puede reutilizar los diccionarios de la hifenación OpenOffice.

Las siguientes características Aspose.Words deben tenerse en cuenta los algoritmos:

* Parámetros de distancia de la Hyphenation (LEFTHYPHENMIN, RightHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) especificado en el diccionario de la hifenación son ignorados. Aspose.Words utiliza su propio conjunto de parámetros de distancia dependiendo del modo de compatibilidad de documentos.
* El algoritmo de hisfenación en Aspose.Words soportes [hiphenation composite](https://github.com/hunspell/hyphen/blob/master/README.compound). Sin embargo, Aspose.Words divide secuencias de caracteres que contienen caracteres alfabéticos mixtos y no alfabéticos en partes sólo alfabéticas (palabras) e hiphenates por separado.
  Note que Microsoft Word La lógica de la hifenación de palabras compuestas depende del modo de compatibilidad de documentos.
* El algoritmo de hisfenación en Aspose.Words no implementa [Hifenación no estándar](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Los patrones no estándar son ignorados.

## Cargando Diccionarios de Hifenación

Para usar la característica de la hisfenación, primero registre un diccionario de la hipnación. El siguiente ejemplo de código muestra cómo cargar diccionarios de la hispana para los idiomas especificados de un archivo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo cargar diccionarios de la hifenación para el idioma especificado de un flujo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Como alternativa a los diccionarios de hifenación pre-registrándose, es posible registrar únicamente los diccionarios requeridos de hifenación "bajo petición". Para lograrlo, aplicar [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) interfaz y utilizar el callback estático [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback).

El siguiente ejemplo de código muestra cómo implementar el **IHyphenationCallback** interfaz:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## Impacto de la Hyphenation en el diseño

Al romper texto en líneas, Aspose.Words comprueba cada palabra si encaja completamente en la línea actual. Si otra palabra es demasiado larga para caber al final de la línea, por defecto Aspose.Words lo mueve al comienzo de la siguiente línea en lugar de hipnotizarlo.

Sin embargo, la característica de la hifenación se puede utilizar en Aspose.Words insertar hyphens en palabras para eliminar lagunas en texto justificado o mantener una longitud de línea uniforme en columnas estrechas. Esto obviamente puede afectar el número de líneas y por lo tanto el número de páginas. En otras palabras, el uso de la función de hifenación afecta al diseño de documentos.

## Hiphenation and Justification (H plagaJ)

Microsoft Word tiene lógica compleja para elegir un punto de ruptura si el texto está justificado y la hipnación está habilitada. En resumen, Microsoft Word puede preferir reducir o estirar espacios para evitar la hifenación lineal. Probablemente esta lógica se basa en [Artículo de Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementa su propio algoritmo H cosechaJ que da el mismo resultado Microsoft Word y proporciona una línea de ruptura idéntica en el documento de salida.

## Vea también

* [Hyphen – biblioteca de la hipnación](https://github.com/hunspell/hyphen/blob/master/README)
* [Hifenación no estándar](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Hiphenación automática no estándar en Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)

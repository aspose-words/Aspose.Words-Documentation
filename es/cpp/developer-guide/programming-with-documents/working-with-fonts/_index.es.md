---
title: Trabajar con fuentes en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con Fuentes
linktitle: Trabajar con Fuentes
description: "Formateo de fuentes en detalles usando C++."
type: docs
weight: 230
url: /es/cpp/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Una fuente es un conjunto de caracteres con un tamaño, color y diseño determinados. Aspose.Words le permite trabajar con fuentes usando el espacio de nombres [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/) y la clase [Font](https://reference.aspose.com/words/cpp/aspose.words/font/).

## Formato de Fuente

El formato de fuente actual está representado por el objeto **Font** devuelto por la propiedad [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/). La clase **Font** contiene una amplia variedad de propiedades de fuente, replicando las disponibles en Microsoft Word.

El siguiente ejemplo de código muestra cómo configurar el formato de fuente:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

Las propiedades de relleno ahora también están disponibles para que las fuentes establezcan el formato de relleno del texto. Da la posibilidad de cambiar, por ejemplo, el color de primer plano o la transparencia del relleno del texto.

## Obtener Espaciado de Línea de Fuente

El interlineado de fuente es la distancia vertical entre las líneas base de dos líneas de texto consecutivas. Por lo tanto, el interlineado incluye el espacio en blanco entre líneas junto con la altura del carácter en sí.

La propiedad [LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) se introdujo en la clase **Font** para obtener este valor, como se muestra en el siguiente ejemplo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## Fuente EmphasisMark

Algunas lenguas de Asia oriental usan una marca de énfasis especial para indicar un énfasis. La clase **Font** proporciona la propiedad [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/) para obtener o establecer los valores de enumeración `EmphasisMark` que se aplicarán al formatear.

El siguiente ejemplo de código muestra cómo establecer la propiedad **EphasisMark**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}

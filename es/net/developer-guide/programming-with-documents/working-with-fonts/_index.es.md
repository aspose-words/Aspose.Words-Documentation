---
title: Trabajar con fuentes en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con fuentes
linktitle: Trabajar con fuentes
description: "Formato de fuente en detalle usando C#. Marca de énfasis en C#. Obtenga el interlineado de fuente usando C#."
type: docs
weight: 230
url: /es/net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Una fuente es un conjunto de caracteres con un tamaño, color y diseño determinado. Aspose.Words le permite trabajar con fuentes utilizando el espacio de nombres [Fonts](https://reference.aspose.com/words/es/net/aspose.words.fonts/) y la clase [Font](https://reference.aspose.com/words/es/net/aspose.words/font/).

## Formato de fuente

El formato de fuente actual está representado por el objeto **Font** devuelto por la propiedad [Font](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/font/). La clase **Font** contiene una amplia variedad de propiedades de fuente, replicando las disponibles en Microsoft Word.

El siguiente ejemplo de código muestra cómo configurar el formato de fuente:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

Las propiedades de relleno también están disponibles para fuentes para establecer el formato de relleno de texto. Esto permite cambiar, por ejemplo, el color de primer plano o la transparencia del relleno del texto.

## Obtener el espaciado entre líneas de fuente

El interlineado de fuente es la distancia vertical entre las líneas base de dos líneas de texto consecutivas. Entonces, el interlineado incluye el espacio en blanco entre líneas junto con la altura del carácter en sí.

La propiedad [LineSpacing](https://reference.aspose.com/words/es/net/aspose.words/font/linespacing/) se introdujo en la clase **Font** para obtener este valor, como se muestra en el siguiente ejemplo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## Fuente EmphasisMark

Algunos idiomas de Asia oriental utilizan una marca de énfasis especial para indicar énfasis. La clase **Font** proporciona la propiedad [EmphasisMark](https://reference.aspose.com/words/es/net/aspose.words/font/emphasismark/) para obtener o establecer los valores de enumeración [EmphasisMark](https://reference.aspose.com/words/es/net/aspose.words/emphasismark/) que se aplicarán al formatear.

El siguiente ejemplo de código muestra cómo configurar la propiedad **EphasisMark**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}

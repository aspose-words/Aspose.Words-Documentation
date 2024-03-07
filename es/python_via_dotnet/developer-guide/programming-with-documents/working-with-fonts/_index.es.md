---
title: Trabajar con fuentes en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con fuentes
linktitle: Trabajar con fuentes
description: "Personalice la configuración de fuente usando Python."
type: docs
weight: 230
url: /es/python-net/working-with-fonts/
---

Una fuente es un conjunto de caracteres con un tamaño, color y diseño determinado. Aspose.Words le permite trabajar con fuentes utilizando el módulo [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) y la clase [Font](https://reference.aspose.com/words/python-net/aspose.words/font/).

## Formato de fuente

El formato de fuente actual está representado por el objeto **Font** devuelto por la propiedad [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/). La clase **Font** contiene una amplia variedad de propiedades de fuente, replicando las disponibles en Microsoft Word.

El siguiente ejemplo de código muestra cómo configurar el formato de fuente:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

Las propiedades de relleno ahora también están disponibles para las fuentes para establecer el formato de relleno del texto. Ofrece la posibilidad de cambiar, por ejemplo, el color de primer plano o la transparencia del relleno del texto.

## Obtener el espaciado entre líneas de fuente

El interlineado de fuente es la distancia vertical entre las líneas base de dos líneas de texto consecutivas. Entonces, el interlineado incluye el espacio en blanco entre líneas junto con la altura del carácter en sí.

La propiedad [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) se introdujo en la clase [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) para obtener este valor como se muestra en el ejemplo que se muestra a continuación:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## Fuente EmphasisMark

Algunos idiomas de Asia oriental utilizan una marca de énfasis especial para indicar énfasis. La clase **Font** proporciona la propiedad [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) para obtener o establecer valores de enumeración [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/) que se aplicarán en el formato.

El siguiente ejemplo de código muestra cómo configurar la propiedad **EphasisMark**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}

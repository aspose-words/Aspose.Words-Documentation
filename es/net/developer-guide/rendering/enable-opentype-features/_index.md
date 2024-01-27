---
title: Habilite las funciones OpenType en C#
second_title: Aspose.Words para .NET
articleTitle: Habilitar funciones OpenType
linktitle: Habilitar funciones OpenType
description: "Funciones de tipografía avanzadas usando C#."
type: docs
weight: 25
url: /es/net/enable-opentype-features/
---

OpenType es un formato de fuente, introducido para brindar un mejor soporte para idiomas y sistemas de escritura internacionales en comparación con PostScript y TrueType. Las funciones de diseño de OpenType se conocen comúnmente como funciones OpenType. El paquete Aspose.Words.Shaping.HarfBuzz proporciona soporte para funciones OpenType en Aspose.Words utilizando el motor de modelado de texto HarfBuzz.

Aspose.Words es capaz de utilizar objetos formadores de texto proporcionados externamente. Un modelador de texto representa una fuente y calcula información de forma para un texto. Un documento normalmente hace referencia a varias fuentes, por lo que es necesaria una fábrica de modeladores de texto. Este paquete contiene una implementación de una fábrica de modeladores de texto utilizada por la propiedad Aspose.Words.Layout.LayoutOptions.TextShaperFactory.

{{% alert color="primary" %}}

La configuración del texto solo se realiza al exportar a formatos PDF o XPS.

{{% /alert %}}

En una aplicación típica, una única instancia de una fábrica de modeladores de texto se comparte entre todas las instancias de documentos. Cada vez que se crea un modelador de texto, se accede a un archivo de fuente. Analizar un archivo de fuente es una operación costosa, por lo que se recomienda almacenarlo en caché. Aspose.Words implementa la clase BasicTextShaperCache que envuelve la implementación de la fábrica del modelador de texto y almacena en caché las instancias del modelador de texto devueltas por la fábrica envuelta.

El siguiente ejemplo de código le muestra cómo activar la compatibilidad con funciones OpenType.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-OpenType-OpenTypeFeatures-OpenTypeFeatures.cs" >}}

---
title: Trabajar con rangos en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con rangos
linktitle: Trabajar con rangos
description: "Introducción a la función Rango en Aspose.Words para .NET."
type: docs
weight: 130
url: /es/net/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

En Aspose.Words, un rango es una "ventana plana" en un modelo del documento que de otro modo sería similar a un árbol.

{{% /alert %}}

Si ha trabajado con Microsoft Word Automation, probablemente sepa que una de las principales herramientas para examinar y modificar el contenido de un documento es el objeto **Range**. **Range** es como una "ventana" al contenido y formato del documento.

Aspose.Words también tiene la clase [Range](https://reference.aspose.com/words/es/net/aspose.words/range/) y está diseñado para verse y actuar de manera similar a **Range** en Microsoft Word. Aunque **Range** no puede cubrir una parte arbitraria de un documento y no tiene **Start** ni **End**, puede acceder al rango cubierto por cualquier nodo de documento, incluido el propio [Document](https://reference.aspose.com/words/es/net/aspose.words/document/). En otras palabras, cada nodo tiene su propio rango. El objeto **Range** le permite acceder y modificar texto, marcadores y campos de formulario dentro del rango.

## Recuperar texto sin formato

Utilice la propiedad [Text](https://reference.aspose.com/words/es/net/aspose.words/range/text/) para recuperar texto sin formato y sin formato del rango.

El siguiente ejemplo de código muestra cómo obtener un texto sin formato y sin formato de un rango:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Eliminar texto

Range permite eliminar todos los caracteres del rango llamando a [Delete](https://reference.aspose.com/words/es/net/aspose.words/range/delete/).

El siguiente ejemplo de código muestra cómo eliminar todos los caracteres de un rango:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

---
title: Trabajar con rangos en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con Rangos
linktitle: Trabajar con Rangos
description: "Introducción a la función de rango en Aspose.Words para C++."
type: docs
weight: 130
url: /es/cpp/working-with-ranges/
---

{{% alert color="primary" %}}

En Aspose.Words, un rango es una "ventana plana" en un modelo del documento similar a un árbol.

{{% /alert %}}

Si ha trabajado con la automatización de Microsoft Word, probablemente sepa que una de las principales herramientas para examinar y modificar el contenido del documento es el objeto **Range**. **Range** es como una "ventana" al contenido y formato del documento.

Aspose.Words también tiene la clase [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) y está diseñada para verse y actuar de manera similar a **Range** en Microsoft Word. Aunque **Range** no puede cubrir una parte arbitraria de un documento y no tiene **Start** y **End**, puede acceder al rango cubierto por cualquier nodo de documento, incluido el [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) mismo. En otras palabras, cada nodo tiene su propio rango. El objeto **Range** le permite acceder y modificar texto, marcadores y campos de formulario dentro del rango.

## Recuperar Texto Sin Formato

Utilice la propiedad [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/) para recuperar texto sin formato del rango.

El siguiente ejemplo de código muestra cómo obtener un texto simple y sin formato de un rango:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Eliminar Texto

Range permite eliminar todos los caracteres del rango llamando a [Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/).

El siguiente ejemplo de código muestra cómo eliminar todos los caracteres de un rango:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
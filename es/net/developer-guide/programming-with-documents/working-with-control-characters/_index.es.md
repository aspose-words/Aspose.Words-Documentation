---
title: Trabajar con personajes de control
second_title: Aspose.Words para .NET
articleTitle: Trabajar con personajes de control
linktitle: Trabajar con personajes de control
description: "Introducción al trabajo con caracteres de control en Aspose.Words para .NET."
type: docs
weight: 400
url: /es/net/working-with-control-characters/
---

Los documentos Microsoft Word pueden contener varios caracteres que tienen un significado especial. Normalmente se utilizan con fines de formato y no se dibujan en el modo normal. Puede hacerlos visibles si hace clic en el botón Mostrar/Ocultar marcas de formato ubicado en la barra de herramientas Estándar.

A veces es posible que necesites agregar o eliminar caracteres del texto. Por ejemplo, al obtener texto del documento mediante programación, Aspose.Words conserva la mayoría de los caracteres de control, por lo que si necesita trabajar con este texto probablemente debería eliminar o reemplazar los caracteres.

La clase [ControlChar](https://reference.aspose.com/words/es/net/aspose.words/controlchar/) es un depósito de constantes que representan caracteres de control que se encuentran a menudo en los documentos. Proporciona versiones de caracteres y de cadenas de las mismas constantes. Por ejemplo, la cadena [LineBreak](https://reference.aspose.com/words/es/net/aspose.words/controlchar/linebreak/) y el carácter [LineBreakChar](https://reference.aspose.com/words/es/net/aspose.words/controlchar/linebreakchar) tienen el mismo valor.

El siguiente ejemplo de código muestra cómo utilizar caracteres de control:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cs" >}}/words/net/working-with-content-control-sdt/)

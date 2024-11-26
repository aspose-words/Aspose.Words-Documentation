---
title: Trabajar Con Caracteres De Control
second_title: Aspose.Words para C++
articleTitle: Trabajar Con Caracteres De Control
linktitle: Trabajar Con Caracteres De Control
description: "Introducción al trabajo con caracteres de control en Aspose.Words para C++."
type: docs
weight: 400
url: /es/cpp/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Los documentos de Microsoft Word pueden contener varios caracteres que tienen un significado especial. Normalmente se utilizan con fines de formateo y no se dibujan en el modo normal. Puede hacerlos visibles si hace clic en el botón Mostrar / Ocultar marcas de formato ubicado en la barra de herramientas estándar.

A veces, es posible que deba agregar o eliminar caracteres del texto. Por ejemplo, al obtener texto mediante programación del documento, Aspose.Words conserva la mayoría de los caracteres de control, por lo que si necesita trabajar con este texto, probablemente debería eliminar o reemplazar los caracteres.

La clase [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) es un repositorio para las constantes que representan caracteres de control que se encuentran a menudo en los documentos. Proporciona versiones char y string de las mismas constantes. Por ejemplo, string [LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/) y char **ControlChar.LineBreakChar** tienen el mismo valor.

El siguiente ejemplo de código muestra cómo usar caracteres de control:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}

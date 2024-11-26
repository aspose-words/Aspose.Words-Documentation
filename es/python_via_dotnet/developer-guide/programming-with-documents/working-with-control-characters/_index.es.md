---
title: Trabajar con personajes de control
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con personajes de control
linktitle: Trabajar con personajes de control
description: "Introducción al trabajo con caracteres de control en Aspose.Words para Python."
type: docs
weight: 400
url: /es/python-net/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Los documentos Microsoft Word pueden contener varios caracteres que tienen un significado especial. Normalmente se utilizan con fines de formato y no se dibujan en el modo normal. Puede hacerlos visibles si hace clic en el botón Mostrar/Ocultar marcas de formato ubicado en la barra de herramientas Estándar.

A veces es posible que necesites agregar o eliminar caracteres del texto. Por ejemplo, al obtener texto del documento mediante programación, Aspose.Words conserva la mayoría de los caracteres de control, por lo que si necesita trabajar con este texto probablemente debería eliminar o reemplazar los caracteres.

La clase [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) es un depósito de constantes que representan caracteres de control que se encuentran a menudo en los documentos. Proporciona versiones de caracteres y de cadena de las mismas constantes. Por ejemplo, la cadena [ControlChar.LINE_BREAK](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break) y el carácter [ControlChar.LINE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break_char) tienen el mismo valor.

El siguiente ejemplo de código demuestra cómo utilizar caracteres de control:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-UseControlCharacters.py" >}}

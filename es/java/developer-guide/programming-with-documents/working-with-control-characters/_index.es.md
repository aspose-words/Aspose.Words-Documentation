---
title: Trabajar Con Caracteres De Control
second_title: Aspose.Words por Java
articleTitle: Trabajar Con Caracteres De Control
linktitle: Trabajar Con Caracteres De Control
description: "Introducción al trabajo con caracteres de control en Aspose.Words para Java."
type: docs
weight: 400
url: /es/java/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word los documentos pueden contener varios caracteres que tienen un significado especial. Normalmente se utilizan con fines de formateo y no se dibujan en el modo normal. Puede hacerlos visibles si hace clic en el botón Mostrar / Ocultar marcas de formato ubicado en la barra de herramientas estándar.

A veces, es posible que deba agregar o eliminar caracteres del texto. Por ejemplo, al obtener texto mediante programación del documento, Aspose.Words conserva la mayoría de los caracteres de control, por lo que si necesita trabajar con este texto, probablemente debería eliminar o reemplazar los caracteres.

La clase [ControlChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) es un repositorio para las constantes que representan caracteres de control que se encuentran a menudo en los documentos. Proporciona versiones char y string de las mismas constantes. Por ejemplo, string [LineBreak](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK) y char [LineBreakChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK_CHAR) tienen el mismo valor.

{{% alert color="primary" %}}

Utilice esta clase siempre que desee tratar con caracteres de control.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo usar caracteres de control:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-UseControlCharacters.java" >}}

---
title: Trabajando con caracteres de control
second_title: Aspose.Words para Java
articleTitle: Trabajando con caracteres de control
linktitle: Trabajando con caracteres de control
description: "Introducción a trabajar con personajes de control Aspose.Words para Java."
type: docs
weight: 400
url: /es/java/working-with-control-characters/
---

Microsoft Word documentos pueden contener varios caracteres que tienen un significado especial. Normalmente se utilizan para el formato y no se dibujan en el modo normal. Puede hacerlos visibles si hace clic en el botón Marcas de Formato Show/Hide ubicado en la barra de herramientas estándar.

A veces es posible que necesite añadir o eliminar caracteres al texto. Por ejemplo, al obtener el texto programáticamente del documento, Aspose.Words preserva la mayoría de los caracteres de control, así que si necesita trabajar con este texto probablemente debe eliminar o reemplazar los caracteres.

El [ControlChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) clase es un repositorio para las constantes que representan caracteres de control a menudo encontrados en documentos. Proporciona versiones de char y cadena de las mismas constantes. Por ejemplo, cadena [LineBreak](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK) and char [LineBreakChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK_CHAR) tiene el mismo valor.

{{% alert color="primary" %}}

Usa esta clase cuando quieras tratar con personajes de control.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo utilizar caracteres de control:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-UseControlCharacters.java" >}}

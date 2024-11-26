---
title: Trabajando con TextBoxes vinculado en Java
second_title: Aspose.Words por Java
articleTitle: Trabajando con TextBoxes vinculado
linktitle: Trabajando con TextBoxes vinculado
description: "Introducción a la función de cuadros de texto vinculados en Aspose.Words para Java."
type: docs
weight: 250
url: /es/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

En Aspose.Words, la clase [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) se usa para especificar cómo se muestra un texto dentro de una forma. Proporciona una propiedad pública denominada Padre para obtener la forma principal del cuadro de texto y permitir al cliente encontrar [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) vinculado desde **TextBox** vinculado.

## Crear Un Enlace

La clase **TextBox** proporciona el método [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) para comprobar si el **TextBox** se puede vincular al **Textbox** de destino.

El siguiente ejemplo de código muestra cómo verificar si `TextBox` se puede vincular al cuadro de texto de destino:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Comprobar Secuencia TextBox

Hay varias formas de mostrar texto en una forma. El [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) puede ser la Cabecera, el Centro o la Cola de una secuencia.

El siguiente ejemplo de código muestra cómo verificar si **TextBox** es una Cabecera, Cola o Mitad de la secuencia:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Romper un Enlace

Usando el método [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) puede romper el enlace al siguiente **TextBox**.

El siguiente ejemplo de código muestra cómo romper un enlace para un **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}

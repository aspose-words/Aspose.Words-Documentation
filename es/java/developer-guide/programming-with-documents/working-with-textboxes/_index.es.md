---
title: Trabajando con TextBoxes Enlaces en Java
second_title: Aspose.Words para Java
articleTitle: Trabajando con Boxes de Texto Relacionados
linktitle: Trabajando con Boxes de Texto Relacionados
description: "Introducción a los cuadros de texto enlazados Aspose.Words para Java."
type: docs
weight: 250
url: /es/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

In Aspose.Words, el [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) clase se utiliza para especificar cómo se muestra un texto dentro de una forma. Proporciona una propiedad pública llamada Parent para obtener la forma padre para el cuadro de texto para permitir que el cliente encuentre vinculado [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) de enlace **TextBox**.

## Crear un enlace

El **TextBox** la clase proporciona [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) método para comprobar si el **TextBox** se puede vincular con el objetivo **Textbox**.

El siguiente ejemplo de código muestra cómo comprobar si el `TextBox` se puede vincular con el cuadro de texto objetivo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Texto de verificación Box Sequence

Hay varias maneras de mostrar texto en forma. El [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) puede ser la Cabeza, Medio o Tail de una secuencia.

El siguiente ejemplo de código muestra cómo comprobar si **TextBox** es una Cabeza, Tail o Media de la secuencia:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Romper un enlace

Usando el [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) método que puede romper el enlace al siguiente **TextBox**.

El siguiente ejemplo de código muestra cómo romper un enlace para un **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}

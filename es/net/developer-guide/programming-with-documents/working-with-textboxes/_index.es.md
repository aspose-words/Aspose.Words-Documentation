---
title: Trabajar con cuadros de texto en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con cuadros de texto
linktitle: Trabajar con cuadros de texto
description: "Introducción a la función de cuadros de texto vinculados en Aspose.Words para .NET."
type: docs
weight: 250
url: /es/net/working-with-textboxes/
---

En Aspose.Words, la clase [TextBox](https://reference.aspose.com/words/es/net/aspose.words.drawing/textbox/) se utiliza para especificar cómo se muestra el texto dentro de una forma. Expone una propiedad pública denominada **Parent** para obtener la forma principal del cuadro de texto para que el cliente pueda encontrar el [Shape](https://reference.aspose.com/words/es/net/aspose.words.drawing/shape/) vinculado desde el **TextBox** asociado.

## Creando un enlace

La clase **TextBox** proporciona el método [IsValidLinkTarget](https://reference.aspose.com/words/es/net/aspose.words.drawing/textbox/isvalidlinktarget/) para comprobar si el **TextBox** se puede vincular al **Textbox** de destino.

El siguiente ejemplo de código muestra cómo comprobar si el `TextBox` se puede vincular al cuadro de texto de destino:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## Comprobar secuencia de cuadro de texto

Hay varias formas de mostrar texto en una forma. El [TextBox](https://reference.aspose.com/words/es/net/aspose.words.drawing/shape/textbox/) puede ser el principio, el medio o el final de una secuencia.

El siguiente ejemplo de código muestra cómo comprobar si **TextBox** es el principio, el final o el medio de la secuencia:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## Rompiendo un enlace

Usando el método [BreakForwardLink](https://reference.aspose.com/words/es/net/aspose.words.drawing/textbox/breakforwardlink/) puedes romper el enlace al siguiente **TextBox**.

El siguiente ejemplo de código muestra cómo romper un enlace para un **TextBox**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}

---
title: Trabajando con TextBoxes en C++
second_title: Aspose.Words para C++
articleTitle: Trabajando con TextBoxes
linktitle: Trabajando con TextBoxes
description: "Introducción a la función de cuadros de texto vinculados en Aspose.Words para C++."
type: docs
weight: 250
url: /es/cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

En Aspose.Words, la clase [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) se usa para especificar cómo se muestra el texto dentro de una forma. Expone una propiedad pública llamada **Parent** para obtener la forma principal del cuadro de texto, de modo que el cliente pueda encontrar el [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) vinculado a partir del **TextBox** asociado.

## Crear Un Enlace

La clase **TextBox** proporciona el método [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/) para verificar si el **TextBox** se puede vincular al **Textbox** de destino.

El siguiente ejemplo de código muestra cómo verificar si `TextBox` se puede vincular al cuadro de texto de destino:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## Comprobar Secuencia TextBox

Hay varias formas de mostrar texto en una forma. El [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) puede ser la Cabecera, el Centro o la Cola de una secuencia.

El siguiente ejemplo de código muestra cómo verificar si **TextBox** es una Cabecera, Cola o Mitad de la secuencia:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## Romper un Enlace

Usando el método [BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/) puede romper el enlace al siguiente **TextBox**.

El siguiente ejemplo de código muestra cómo romper un enlace para un **TextBox**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}

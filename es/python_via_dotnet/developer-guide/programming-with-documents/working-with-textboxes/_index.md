---
title: Trabajar con cuadros de texto en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con cuadros de texto
linktitle: Trabajar con cuadros de texto
description: "Trabaje con cuadros de texto en un documento usando Python."
type: docs
weight: 250
url: /es/python-net/working-with-textboxes/
---

En Aspose.Words, la clase [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) se utiliza para especificar cómo se muestra un texto dentro de una forma. Proporciona una propiedad pública denominada [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/) para obtener la forma principal del cuadro de texto y permitir al cliente encontrar [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) vinculado desde [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) vinculado.

## Creando un enlace

La clase [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) proporciona el método [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) para verificar si el [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) se puede vincular al cuadro de texto de destino.

El siguiente ejemplo de código muestra cómo comprobar si el `TextBox` se puede vincular al cuadro de texto de destino:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## Comprobar secuencia de cuadro de texto

Hay varias formas de mostrar texto en una forma. El [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) puede ser el principio, el medio o el final de una secuencia.

El siguiente ejemplo de código muestra cómo comprobar si **TextBox** es el principio, el final o el medio de la secuencia:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## Rompiendo un enlace

Usando el método [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) puedes romper el enlace al siguiente **TextBox**.

El siguiente ejemplo de código muestra cómo romper un enlace para un **TextBox**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}

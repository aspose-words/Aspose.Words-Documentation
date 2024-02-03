---
title: Trabalhando com TextBoxes em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com TextBoxes
linktitle: Trabalhando com TextBoxes
description: "Trabalhe com caixas de texto em um documento usando Python."
type: docs
weight: 250
url: /pt/python-net/working-with-textboxes/
---

No Aspose.Words, a classe [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) é usada para especificar como um texto é exibido dentro de uma forma. Ele fornece uma propriedade pública chamada [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/) para obter o formato pai da caixa de texto para permitir que o cliente encontre [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) vinculado a partir de [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) vinculado.

## Criando um link

A classe [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) fornece o método [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) para verificar se o [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) pode ser vinculado à caixa de texto de destino.

O exemplo de código a seguir mostra como verificar se o `TextBox` pode ser vinculado à caixa de texto de destino:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## Verifique a sequência do TextBox

Existem diversas maneiras de exibir texto em uma forma. O [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) pode ser o início, o meio ou o final de uma sequência.

O exemplo de código a seguir mostra como verificar se **TextBox** é inicial, final ou intermediário da sequência:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## Quebrando um link

Usando o método [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) você pode quebrar o link para o próximo **TextBox**.

O exemplo de código a seguir mostra como quebrar um link para um **TextBox**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}

---
title: Trabalhando com TextBoxes em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhando com TextBoxes
linktitle: Trabalhando com TextBoxes
description: "Introdução ao recurso de caixas de texto vinculadas em Aspose.Words para .NET."
type: docs
weight: 250
url: /pt/net/working-with-textboxes/
---

No Aspose.Words, a classe [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) é usada para especificar como o texto é exibido dentro de uma forma. Ele expõe uma propriedade pública chamada **Parent** para obter o formato pai da caixa de texto para que o cliente possa encontrar o [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) vinculado no **TextBox** associado.

## Criando um link

A classe **TextBox** fornece o método [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/) para verificar se o **TextBox** pode ser vinculado ao **Textbox** de destino.

O exemplo de código a seguir mostra como verificar se o `TextBox` pode ser vinculado à caixa de texto de destino:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## Verifique a sequência do TextBox

Existem diversas maneiras de exibir texto em uma forma. O [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) pode ser o início, o meio ou o final de uma sequência.

O exemplo de código a seguir mostra como verificar se **TextBox** é inicial, final ou intermediário da sequência:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## Quebrando um link

Usando o método [BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/) você pode quebrar o link para o próximo **TextBox**.

O exemplo de código a seguir mostra como quebrar um link para um **TextBox**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}

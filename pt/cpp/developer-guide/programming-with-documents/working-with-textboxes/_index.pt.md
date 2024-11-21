---
title: Trabalhando com TextBoxes Em C++
second_title: Aspose.Words para C++
articleTitle: Trabalhando com TextBoxes
linktitle: Trabalhando com TextBoxes
description: "Introdução ao recurso de caixas de texto vinculadas em Aspose.Words para C++."
type: docs
weight: 250
url: /pt/cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

Em Aspose.Words, a classe [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) é usada para especificar como o texto é exibido dentro de uma forma. Ele expõe uma propriedade pública chamada **Parent** para obter a forma pai para a caixa de texto para que o cliente possa encontrar o [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) vinculado do **TextBox** associado.

## Criar Uma Ligação

A classe **TextBox** fornece o método [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/) para verificar se o **TextBox** pode ser vinculado ao destino **Textbox**.

O exemplo de código a seguir mostra como verificar se o `TextBox` pode ser vinculado à caixa de texto de destino:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## Verificar TextBox Sequência

Existem várias maneiras de exibir o texto em uma forma. O [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) pode ser a cabeça, o meio ou a cauda de uma sequência.

O exemplo de código a seguir mostra como verificar se **TextBox** é uma cabeça, cauda ou meio da sequência:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## Quebrar um Link

Usando o método [BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/), você pode quebrar o link para o próximo **TextBox**.

O exemplo de código a seguir mostra como quebrar um link para um **TextBox**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}

---
title: Trabalhando com TextBoxes vinculado em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com Linked TextBoxes
linktitle: Trabalhando com Linked TextBoxes
description: "Introdução ao recurso de caixas de texto vinculadas em Aspose.Words para Java."
type: docs
weight: 250
url: /pt/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

Em Aspose.Words, a classe [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) é usada para especificar como um texto é exibido dentro de uma forma. Ele fornece uma propriedade pública nomeada como pai para obter a forma pai para a caixa de texto para permitir que o cliente encontre linked [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) from linked **TextBox**.

## Criar Uma Ligação

A classe **TextBox** fornece o método [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) para verificar se o **TextBox** pode ser vinculado ao destino **Textbox**.

O exemplo de código a seguir mostra como verificar se o `TextBox` pode ser vinculado à caixa de texto de destino:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Verificar TextBox Sequência

Existem várias maneiras de exibir o texto em uma forma. O [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) pode ser a cabeça, o meio ou a cauda de uma sequência.

O exemplo de código a seguir mostra como verificar se **TextBox** é uma cabeça, cauda ou meio da sequência:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Quebrar um Link

Usando o método [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink), você pode quebrar o link para o próximo **TextBox**.

O exemplo de código a seguir mostra como quebrar um link para um **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}

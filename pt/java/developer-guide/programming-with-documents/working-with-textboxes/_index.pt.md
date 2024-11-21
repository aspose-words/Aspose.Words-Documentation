---
title: Trabalhando com TextBoxes Ligados em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com TextBoxes Ligados
linktitle: Trabalhando com TextBoxes Ligados
description: "Introdução às caixas de texto vinculadas Aspose.Words para Java."
type: docs
weight: 250
url: /pt/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

Em Aspose.Words, o [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) classe é usada para especificar como um texto é exibido dentro de uma forma. Ele fornece uma propriedade pública nomeada como Pai para obter a forma pai para a caixa de texto para permitir que o cliente encontre vinculado [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) de ligado **TextBox**.

## Criar um link

O **TextBox** classe fornece a [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) método para verificar se o **TextBox** pode ser ligado ao alvo **Textbox**.

O seguinte exemplo de código mostra como verificar se o `TextBox` pode ser ligado ao alvo Caixa de texto:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Verificar texto Sequência de caixa

Existem várias maneiras de exibir texto em uma forma. O [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) pode ser a Cabeça, Médio ou Cauda de uma sequência.

O seguinte exemplo de código mostra como verificar se **TextBox** é uma cabeça, cauda ou meio da sequência:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Quebrar um Link

Usando o [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) método que você pode quebrar o link para o próximo **TextBox**.

O exemplo de código a seguir mostra como quebrar um link para um **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}

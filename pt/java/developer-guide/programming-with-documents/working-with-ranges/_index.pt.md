---
title: Trabalhando com Ranges em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com Ranges
linktitle: Trabalhando com Ranges
description: "Introdução ao recurso Range em Aspose.Words para Java."
type: docs
weight: 130
url: /pt/java/working-with-ranges/
---

{{% alert color="primary" %}}

Em Aspose.Words, um intervalo é uma "janela plana" em um modelo de outra árvore do documento.

{{% /alert %}}

Se você trabalhou com Microsoft Word Automação, você provavelmente sabe que uma das principais ferramentas para examinar e modificar o conteúdo do documento é o `Range` objeto. Range é como uma "janela" no conteúdo do documento e formatação.

Aspose.Words também tem [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) classe e é projetado para olhar e agir de forma semelhante **Range** em Microsoft Word. Embora **Range** não pode cobrir uma parte arbitrária de um documento e não tem **Start** e **End**, você pode acessar o intervalo coberto por qualquer nó de documento, incluindo [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) em si. Em outras palavras, cada nó tem sua própria gama. O **Range** objeto permite acessar e modificar texto, marcadores e campos de formulário dentro do intervalo.

## Recuperando texto simples

Use o [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) propriedade para recuperar o texto simples e não formatado do intervalo.

O exemplo de código a seguir mostra como obter um texto simples e não formatado de um intervalo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Excluir texto

O `Range` classe permite a exclusão de todos os caracteres do intervalo chamando [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

O exemplo de código a seguir mostra como excluir todos os caracteres de um intervalo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 
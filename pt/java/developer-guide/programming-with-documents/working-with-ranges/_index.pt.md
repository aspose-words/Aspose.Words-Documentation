---
title: Trabalhando com intervalos em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhar com gamas
linktitle: Trabalhar com gamas
description: "Introdução ao recurso de intervalo em Aspose.Words para Java."
type: docs
weight: 130
url: /pt/java/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Em Aspose.Words, um intervalo é uma "janela plana" em um modelo semelhante a uma árvore do documento.

{{% /alert %}}

Se você trabalhou com automação Microsoft Word, provavelmente sabe que uma das principais ferramentas para examinar e modificar o conteúdo do documento é o objeto `Range`.Intervalo é como uma "janela" para o conteúdo do documento e formatação.

Aspose.Words também tem a classe [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) e é projetada para parecer e agir de forma semelhante a **Range** em Microsoft Word. Embora **Range** não possa cobrir uma parte arbitrária de um documento e não tenha **Start** e **End**, Você pode acessar o intervalo coberto por qualquer nó de documento, incluindo o próprio [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). Em outras palavras, cada nó tem seu próprio intervalo. O objecto **Range** permite-lhe aceder e modificar texto, marcadores e campos de formulário dentro do intervalo.

## Recuperação De Texto Simples

Use a propriedade [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) para recuperar o texto simples e não formatado do intervalo.

O exemplo de código a seguir mostra como obter um texto simples e não formatado de um intervalo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Apagar Texto

A classe `Range` permite a eliminação de todos os caracteres do intervalo chamando [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

O exemplo de código a seguir mostra como excluir todos os caracteres de um intervalo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}



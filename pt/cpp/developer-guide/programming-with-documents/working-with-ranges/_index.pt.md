---
title: Trabalhando com intervalos Em C++
second_title: Aspose.Words para C++
articleTitle: Trabalhar com gamas
linktitle: Trabalhar com gamas
description: "Introdução ao recurso de intervalo em Aspose.Words para C++."
type: docs
weight: 130
url: /pt/cpp/working-with-ranges/
---

{{% alert color="primary" %}}

Em Aspose.Words, um intervalo é uma "janela plana" em um modelo semelhante a uma árvore do documento.

{{% /alert %}}

Se você trabalhou com automação Microsoft Word, provavelmente sabe que uma das principais ferramentas para examinar e modificar o conteúdo do documento é o objeto **Range**. **Range** é como uma "janela" para o conteúdo e formatação do documento.

Aspose.Words também tem a classe [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) e é projetada para parecer e agir de forma semelhante a **Range** em Microsoft Word. Embora **Range** não possa cobrir uma parte arbitrária de um documento e não tenha **Start** e **End**, você pode acessar o intervalo coberto por qualquer nó de documento, incluindo o próprio [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Em outras palavras, cada nó tem seu próprio intervalo. O objecto **Range** permite-lhe aceder e modificar texto, marcadores e campos de formulário dentro do intervalo.

## Recuperar Texto Simples

Use a propriedade [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/) para recuperar texto simples e não formatado do intervalo.

O exemplo de código a seguir mostra como obter um texto simples e não formatado de um intervalo:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Apagar Texto

Intervalo permite a eliminação de todos os caracteres do intervalo chamando [Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/).

O exemplo de código a seguir mostra como excluir todos os caracteres de um intervalo:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
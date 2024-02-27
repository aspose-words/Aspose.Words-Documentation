---
title: Trabalhando com intervalos em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhando com intervalos
linktitle: Trabalhando com intervalos
description: "Introdução ao recurso Range em Aspose.Words para .NET."
type: docs
weight: 130
url: /pt/net/working-with-ranges/
---

{{% alert color="primary" %}}

No Aspose.Words, um intervalo é uma "janela plana" em um modelo do documento em forma de árvore.

{{% /alert %}}

Se você já trabalhou com Microsoft Word Automation, provavelmente sabe que uma das principais ferramentas para examinar e modificar o conteúdo de documentos é o objeto **Range**. **Range** é como uma "janela" para o conteúdo e formatação do documento.

Aspose.Words também possui a classe [Range](https://reference.aspose.com/words/net/aspose.words/range/) e foi projetado para ter aparência e agir de forma semelhante ao **Range** em Microsoft Word. Embora o **Range** não possa cobrir uma parte arbitrária de um documento e não tenha **Start** e **End**, você pode acessar o intervalo coberto por qualquer nó do documento, incluindo o próprio [Document](https://reference.aspose.com/words/net/aspose.words/document/). Em outras palavras, cada nó possui seu próprio intervalo. O objeto **Range** permite acessar e modificar texto, marcadores e campos de formulário dentro do intervalo.

## Recuperar texto simples

Use a propriedade [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) para recuperar texto simples e não formatado do intervalo.

O exemplo de código a seguir mostra como obter um texto simples e não formatado de um intervalo:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Excluir texto

Range permite a exclusão de todos os caracteres do intervalo chamando [Delete](https://reference.aspose.com/words/net/aspose.words/range/delete/).

O exemplo de código a seguir mostra como excluir todos os caracteres de um intervalo:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
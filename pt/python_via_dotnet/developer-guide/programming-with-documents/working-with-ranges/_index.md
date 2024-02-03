---
title: Trabalhando com intervalos em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com intervalos
linktitle: Trabalhando com intervalos
description: "Trabalhe com intervalos em um documento usando Python."
type: docs
weight: 130
url: /pt/python-net/working-with-ranges/
---

{{% alert color="primary" %}}

No Aspose.Words, um [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) é uma "janela plana" em um modelo do documento em forma de árvore.

{{% /alert %}}

Se você já trabalhou com Microsoft Word Automation, provavelmente sabe que uma das principais ferramentas para examinar e modificar o conteúdo de documentos é o objeto [Range](https://reference.aspose.com/words/python-net/aspose.words/range/). [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) é como uma "janela" para o conteúdo e formatação do documento. Aspose.Words também possui a classe [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) e foi projetado para ter aparência e agir de forma semelhante ao **Range** em Microsoft Word. Embora o **Range** não possa cobrir uma parte arbitrária de um documento e não tenha **Start** e **End**, você pode acessar o intervalo coberto por qualquer nó do documento, incluindo o próprio [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Em outras palavras, cada nó possui seu próprio intervalo. O objeto [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) permite acessar e modificar texto, marcadores e campos de formulário dentro do intervalo.

## Recuperar texto simples

Use a propriedade [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) para recuperar texto simples e não formatado do intervalo.

O exemplo de código a seguir mostra como obter um texto simples e não formatado de um intervalo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Excluindo Texto

Range permite a exclusão de todos os caracteres do intervalo chamando [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/)

O exemplo de código a seguir mostra como excluir todos os caracteres de um intervalo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
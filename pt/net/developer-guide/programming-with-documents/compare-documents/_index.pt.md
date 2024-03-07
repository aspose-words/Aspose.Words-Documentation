---
title: Compare documentos em C#
second_title: Aspose.Words para .NET
articleTitle: Comparar documentos
linktitle: Comparar documentos
description: "Compare dois documentos em qualquer formato compatível e mostre as alterações de conteúdo usando C#. Você pode aplicar opções avançadas ao comparar."
type: docs
weight: 60
url: /pt/net/compare-documents/
---

Comparar documentos é um processo que identifica alterações entre dois documentos e contém as alterações como revisões. Este processo compara quaisquer dois documentos, incluindo versões de um documento específico, então as alterações entre os dois documentos serão mostradas como revisões no primeiro documento.

O método de comparação é obtido comparando palavras no nível do caractere ou no nível da palavra. Se uma palavra contiver uma alteração de pelo menos um caractere, no resultado a diferença será exibida como uma alteração da palavra inteira e não de um caractere. Este processo de comparação é uma tarefa comum nos setores jurídico e financeiro.

Em vez de procurar manualmente diferenças entre documentos ou entre diferentes versões deles, você pode usar Aspose.Words para comparar documentos e obter alterações de conteúdo na formatação, cabeçalho/rodapé, tabelas e muito mais.

Este artigo explica como comparar documentos e como especificar as propriedades de comparação avançadas.

{{% alert color="primary" %}}

**Experimente on-line**

Você pode comparar dois documentos online usando a ferramenta [Comparação de documentos on-line](https://products.aspose.app/words/comparison).

Observe que o método de comparação descrito abaixo é usado nesta ferramenta para garantir a obtenção de resultados iguais. Assim, você obterá os mesmos resultados mesmo usando a ferramenta de comparação online ou o método de comparação em Aspose.Words.

{{% /alert %}}

## Limitações e formatos de arquivo suportados {#limitations-and-supported-file-formats}

Comparar documentos é um recurso muito complexo. Existem diversas partes da combinação de conteúdo que precisam ser analisadas para reconhecer todas as diferenças. A razão para esta complexidade se deve ao fato de que o Aspose.Words visa obter os mesmos resultados de comparação que o algoritmo de comparação Microsoft Word.

A limitação geral para dois documentos comparados é que eles não devem ter revisões antes de chamar o método compare, pois essa limitação existe no Microsoft Word.

{{% alert color="primary" %}}

Observe que você pode comparar dois documentos quaisquer no [Formatos de documentos suportados](/words/pt/net/supported-document-formats/). Basicamente, você pode comparar objetos de documentos e até mesmo criar esses objetos do zero, sem ter nenhum formato específico.

{{% /alert %}}

## Compare dois documentos {#compare-two-documents}

Quando você compara documentos, as diferenças entre o último documento e o anterior aparecem como revisões do primeiro. Ao modificar um documento, cada edição terá sua própria revisão após executar o método compare.

Aspose.Words permite identificar diferenças de documentos usando o método [Compare](https://reference.aspose.com/words/net/aspose.words/document/compare/#compare/) – isso é semelhante ao recurso de comparação de documentos Microsoft Word. Ele permite que você verifique documentos ou versões de documentos para encontrar diferenças e alterações, incluindo modificações de formatação, como alterações de fonte, alterações de espaçamento, adição de palavras e parágrafos.

Como resultado da comparação, os documentos podem ser determinados como iguais ou diferentes. O termo documentos "iguais" significa que o método de comparação não é capaz de representar alterações como revisões. Isso significa que o texto do documento e a formatação do texto são iguais. Mas pode haver outras diferenças entre os documentos. Por exemplo, Microsoft Word oferece suporte apenas a revisões de formato para estilos e você não pode representar inserção/exclusão de estilo. Assim, os documentos podem ter um conjunto diferente de estilos e o método **Compare** ainda não produz revisões.

O exemplo de código a seguir mostra como verificar se dois documentos são iguais ou não:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-CompareForEqual.cs" >}}

O exemplo de código a seguir mostra como simplesmente aplicar o método `Compare` a dois documentos:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-ApplyCompareTwoDocuments.cs" >}}

## Especifique opções de comparação avançada {#specify-advanced-comparing-properties}

Existem muitas propriedades diferentes da classe [CompareOptions](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/) que você pode aplicar quando quiser comparar documentos.

Por exemplo, Aspose.Words permite ignorar alterações feitas durante uma operação de comparação para certos tipos de objetos no documento original. Você pode selecionar a propriedade apropriada para o tipo de objeto, como [IgnoreHeadersAndFooters](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignorecomments/) e outros, definindo-os como "true".

Além disso, Aspose.Words fornece a propriedade [Granularity](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/granularity/) com a qual você pode especificar se deseja rastrear alterações por caractere ou por palavra.

Outra propriedade comum é a escolha de qual documento mostrar as alterações de comparação. Por exemplo, a "caixa de diálogo Comparar documentos" em Microsoft Word tem a opção "Mostrar alterações em" – isso também afeta os resultados da comparação. Aspose.Words fornece a propriedade [Target](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/target/) que atende a esse propósito.

O exemplo de código a seguir mostra como definir as propriedades de comparação avançada:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-SetAdvancedComparingProperties.cs" >}}

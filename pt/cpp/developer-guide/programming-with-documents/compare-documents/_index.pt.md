---
title: Comparar documentos em C++
second_title: Aspose.Words para C++
articleTitle: Comparar Documentos
linktitle: Comparar Documentos
type: docs
description: "Compare dois documentos em qualquer formato suportado e mostre alterações de conteúdo usando C++. Você pode aplicar opções avançadas ao comparar."
weight: 60
url: /pt/cpp/compare-documents/
timestamp: 2024-01-27-14-07-04
---

A comparação de documentos é um processo que identifica as alterações entre dois documentos e contém as alterações como revisões. Este processo compara quaisquer dois documentos, incluindo versões de um documento específico, e as alterações entre ambos os documentos serão apresentadas como revisões no primeiro documento.

O método de comparação é obtido comparando palavras no nível do caractere ou no nível da palavra. Se uma palavra contiver uma mudança de pelo menos um caractere, no resultado, a diferença será exibida como uma mudança da palavra inteira, não como um caractere. Este processo de comparação é uma tarefa habitual nos sectores jurídico e financeiro.

Em vez de procurar manualmente diferenças entre documentos ou entre diferentes versões deles, pode utilizar Aspose.Words para comparar documentos e obter alterações de conteúdo na formatação, cabeçalho/rodapé, tabelas e muito mais.

Este artigo explica como comparar documentos e como especificar propriedades de comparação avançadas.

{{% alert color="primary" %}}

**Experimente online**

Você pode comparar dois documentos on-line usando o [Comparação de documentos online](https://products.aspose.app/words/comparison) ferramenta.

Note-se que o método de comparação, descrito a seguir, é utilizado nesta ferramenta para garantir a obtenção de resultados iguais. Assim, você obterá os mesmos resultados, mesmo usando a ferramenta de comparação on-line ou usando o método de comparação em Aspose.Words.

{{% /alert %}}

## Limitações e formatos de ficheiro suportados {#limitations-and-supported-file-formats}

A comparação de documentos é uma característica muito complexa. Existem várias partes da combinação de conteúdo que precisam ser analisadas para reconhecer todas as diferenças. A razão para esta complexidade deve-se ao facto de Aspose.Words Ter como objectivo obter os mesmos resultados de comparação que o algoritmo de comparação Microsoft Word.

A limitação geral para dois documentos que estão a ser comparados é que eles não devem ter revisões antes de chamar o método compare, uma vez que esta limitação existe em Microsoft Word.

{{% alert color="primary" %}}

Observe que você pode comparar quaisquer dois documentos dentro do [formatos de ficheiro suportados](/words/cpp/supported-document-formats/). Você pode comparar objetos de documento e até mesmo criar esses objetos do zero sem ter nenhum formato específico.

{{% /alert %}}

## Comparar Dois Documentos {#compare-two-documents}

Quando se compara documentos, as diferenças entre o último documento e o primeiro aparecem como revisões do primeiro. Ao modificar um documento, cada edição terá a sua própria revisão depois de executar o método de comparação.

Aspose.Words permite identificar diferenças de documentos utilizando o método [Compare](https://reference.aspose.com/words/cpp/aspose.words/document/compare/) – isto é semelhante à funcionalidade de comparação de documentos Microsoft Word. Ele permite que você verifique documentos ou versões de documentos para encontrar diferenças e alterações, incluindo modificações de formatação, como alterações de fonte, alterações de espaçamento, adição de palavras e parágrafos.

Como resultado da comparação, os documentos podem ser determinados como iguais ou não iguais. O termo documentos "iguais" significa que o método de comparação não é capaz de representar alterações como revisões. Isso significa que tanto o texto do documento quanto a formatação do texto são iguais. Mas pode haver outras diferenças entre os documentos. Por exemplo, Microsoft Word suporta apenas revisões de formato para estilos e não pode representar a inserção/eliminação de estilos. Portanto, os documentos podem ter um conjunto diferente de estilos e o método **Compare** ainda não produz revisões.

O exemplo de código a seguir mostra como verificar se dois documentos são iguais ou não:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareForEqual.cpp" >}}

O exemplo de código a seguir mostra como simplesmente aplicar o método `Compare` a dois documentos:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareWhenDocumentHasRevisions.cpp" >}}

## Especificar Opções Avançadas De Comparação {#specify-advanced-comparing-properties}

Existem muitas propriedades diferentes da classe [CompareOptions](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/) que pode aplicar quando pretender comparar documentos.

Por exemplo, Aspose.Words permite ignorar alterações feitas durante uma operação de comparação para determinados tipos de objetos no documento original. Você pode selecionar a propriedade apropriada para o tipo de objeto, como [IgnoreHeadersAndFooters](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignorecomments/), e outros, definindo-os como"verdadeiros".

Além disso, Aspose.Words fornece a propriedade [Granularity](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_granularity/) com a qual você pode especificar se deseja rastrear alterações por caractere ou por palavra.

Outra propriedade comum é a escolha de qual documento mostrar as alterações de comparação. Por exemplo, a caixa de diálogo "comparar documentos" em Microsoft Word tem a opção "Mostrar alterações em" – isso também afeta os resultados da comparação. Aspose.Words fornece a propriedade [Target](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_target/) que serve a esse propósito.

O exemplo de código a seguir mostra como definir as propriedades de comparação avançadas:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareDocumentWithCompareOptions.cpp" >}}

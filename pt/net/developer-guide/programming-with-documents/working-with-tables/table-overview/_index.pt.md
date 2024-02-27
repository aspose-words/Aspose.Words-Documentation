---
title: Visão geral da tabela
second_title: Aspose.Words para .NET
articleTitle: Visão geral da tabela
linktitle: Visão geral da tabela
description: "Trabalhe com tabelas e seus componentes, como células, linhas e colunas em Aspose.Words para .NET. Como trabalhar com tabelas em C#."
type: docs
weight: 10
url: /pt/net/table-overview/
---

Aspose.Words é uma biblioteca de classes projetada para processamento de documentos no lado do servidor em vários formatos – PDF, HTML, diferentes formatos Microsoft Word e outros – e suporta tabelas das seguintes maneiras:

* tabelas em um documento são preservadas durante a abertura/salvamento e conversões
* é possível editar a tabela, o conteúdo e sua formatação e depois exportar as alterações para um arquivo em um formato que suporte tabelas

Neste artigo, aprenderemos mais sobre a estrutura da tabela, células, linhas e colunas suportadas pelo Aspose.Words e os detalhes de como trabalhar com essas tabelas.

## Estrutura da tabela

Como já mencionado, a tabela consiste em elementos como **Cell**, **Row** e **Column**. São conceitos comuns a todas as tabelas em geral, independente do formato do documento.

Este é um exemplo comum de tabela encontrada em um documento Microsoft Word:

![tables-overview-aspose-words-net-1](/words/net/table-overview/tables-overview-1.png)

### Nós de tabela

Uma tabela de qualquer documento carregado em Aspose.Words é importada como **Nó de tabela**. A tabela pode ser encontrada como filha de:

- Texto principal
- uma história embutida, como um comentário ou uma nota de rodapé
- células quando uma tabela está aninhada em outra tabela

{{% alert color="primary" %}}

Observe que as tabelas podem ser aninhadas dentro de outras tabelas em qualquer profundidade.

{{% /alert %}}

### Conteúdo da tabela

O nó da tabela não contém nenhum conteúdo real – em vez disso, é um contêiner para outros nós que compõem o conteúdo:

- **Table** contém muitos nós **Row**. A tabela fornece todos os elementos usuais do nó, permitindo mover, modificar e remover livremente a tabela no documento.
- **Row** representa uma única linha da tabela e contém muitos nós **Cell**. Além disso, o **Row** fornece elementos que definem como a linha é exibida, como altura e alinhamento.
- **Cell** é o que contém o conteúdo true visível na tabela e é composto por um **Paragraph** e outros nós em nível de bloco. Além disso, as células podem conter tabelas aninhadas.

![tables-overview-aspose-words-net-2](/words/net/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

Você pode verificar a estrutura dos nós da tabela em um documento usando o **DocumentExplorer**.

{{% /alert %}}

### Parágrafo vazio após tabela

A imagem acima mostra que o documento contém uma tabela de várias linhas, que por sua vez consiste em duas células. Cada uma das duas células inclui um parágrafo, que contém o texto formatado da célula.

É importante notar também que separar duas tabelas consecutivas em um documento requer pelo menos um parágrafo vazio após a tabela. Sem tal parágrafo, tabelas consecutivas seriam unidas em uma só. Este comportamento é idêntico em Microsoft Word e Aspose.Words.

No Aspose.Words, todas as classes e propriedades relacionadas às tabelas estão contidas no namespace [Aspose.Words.Tables](https://reference.aspose.com/words/net/aspose.words.tables/).

## Veja também

* [Aspose.Words Document Object Model (DOM)](/words/pt/net/aspose-words-document-object-model/)
* [Níveis lógicos de nós em um documento](/words/pt/net/logical-levels-of-nodes-in-a-document/)
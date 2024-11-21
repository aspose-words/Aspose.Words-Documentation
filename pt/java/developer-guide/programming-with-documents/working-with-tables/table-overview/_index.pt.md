---
title: Visão geral da tabela
second_title: Aspose.Words para Java
articleTitle: Visão geral da tabela
linktitle: Visão geral da tabela
description: "Trabalhe com tabelas e seus componentes, como células, linhas, colunas em Aspose.Words para Java. Como trabalhar com tabelas em Java."
type: docs
weight: 10
url: /pt/java/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words é uma biblioteca de classe projetada para processamento do lado do servidor de documentos em vários formatos – PDF, HTML, diferente Microsoft Word formatos e outros – e suporta tabelas das seguintes formas:

* tabelas em um documento são preservadas durante a abertura/save e conversões
* é possível editar tabela, conteúdo e sua formatação, e depois exportar as alterações em um arquivo em um formato que suporta tabelas

Neste artigo, aprenderemos mais sobre a estrutura da tabela, células, linhas e colunas suportadas por Aspose.Words, e os detalhes de trabalhar com tais tabelas.

## Estrutura da tabela

Como já mencionado, a tabela consiste em elementos como **Cell**, **Row** e **Column**. Estes são conceitos que são comuns a todas as tabelas em geral, independentemente do formato do documento.

Este é um exemplo comum de uma tabela encontrada em uma Microsoft Word documento:

![tables-overview-aspose-words-java-1](/words/java/table-overview/tables-overview-1.png)

### Números de tabela

Uma tabela de qualquer documento carregado em Aspose.Words é importado como um **Node da tabela**. A tabela pode ser encontrada como uma criança de:

- texto principal
- uma história inline como um comentário ou uma nota de rodapé
- células quando uma tabela está aninhada dentro de outra tabela

{{% alert color="primary" %}}

Note que as tabelas podem ser aninhadas dentro de outras tabelas para qualquer profundidade.

{{% /alert %}}

### Conteúdo da tabela

O nó da tabela não contém nenhum conteúdo real – em vez disso, é um recipiente para outros nós que compõem o conteúdo:

- Não. **Table** contém muitos **Row** nós. A tabela fornece todos os elementos de nó habituais, permitindo que você livremente mover, modificar e remover a tabela no documento.
- Não. **Row** representa uma única linha de tabela e contém muitos **Cell** nós. Além disso, o **Row** fornece elementos que definem como a linha é exibida, como altura e alinhamento.
- Não. **Cell** é o que contém o true conteúdo visível na tabela e é composto por uma **Paragraph** e outros nós de nível de bloco. Além disso, as células podem conter tabelas aninhadas.

![tables-overview-aspose-words-java-2](/words/java/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

Você pode verificar a estrutura dos nós de tabela em um documento usando o **DocumentExplorer**.

{{% /alert %}}

### Parágrafo vazio após tabela

A imagem acima mostra que o documento contém uma tabela de várias linhas, que por sua vez consiste de duas células. Cada uma das duas células inclui um parágrafo, que é o recipiente para o texto formatado da célula.

Também vale a pena notar que a separação de duas tabelas consecutivas em um documento requer pelo menos um parágrafo vazio após a tabela. Sem tal parágrafo, tabelas consecutivas seriam unidas em um. Este comportamento é idêntico em ambos Microsoft Word e Aspose.Words.

Aspose.Words tem uma série de classes relacionadas a tabelas – [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/), e outros.

## Ver também

* [Aspose.Words Document Object Model (DOM)](/words/pt/java/aspose-words-document-object-model/)
* [Níveis Lógicos de Nós em um Documento](/words/pt/java/logical-levels-of-nodes-in-a-document/)

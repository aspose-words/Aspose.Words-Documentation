---
title: Visão Geral Da Tabela
second_title: Aspose.Words para Java
articleTitle: Visão Geral Da Tabela
linktitle: Visão Geral Da Tabela
description: "Trabalhar com tabelas e seus componentes, como células, linhas, colunas em Aspose.Words para Java. Como trabalhar com tabelas em Java."
type: docs
weight: 10
url: /pt/java/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words é uma biblioteca de classes concebida para o processamento do lado do servidor de documentos em vários formatos - PDF, HTML, diferentes Microsoft Word formatos e outros-e suporta tabelas das seguintes formas:

* as tabelas em um documento são preservadas durante a abertura / salvamento e as conversões
* é possível editar a tabela, o conteúdo e sua formatação e, em seguida, exportar as alterações para um arquivo em um formato que suporte tabelas

Neste artigo, aprenderemos mais sobre a estrutura da tabela, células, linhas e Colunas suportadas por Aspose.Words e os detalhes do trabalho com essas tabelas.

## Estrutura Da Tabela

Como já mencionado, a tabela consiste em elementos como **Cell**, **Row** e **Column**. São conceitos comuns a todas as tabelas em geral, independentemente do formato do documento.

Este é um exemplo comum de uma tabela encontrada em um documento Microsoft Word:

![tables-overview-aspose-words-java-1](/words/java/table-overview/tables-overview-1.png)

### Nós Da Tabela

Uma tabela de qualquer documento carregado em Aspose.Words é importada como a **Table node**. A tabela pode ser encontrada como um filho de:

- texto principal
- uma história em linha, como um comentário ou uma nota de rodapé
- células quando uma tabela está aninhada dentro de outra tabela

{{% alert color="primary" %}}

Observe que as tabelas podem ser aninhadas dentro de outras tabelas em qualquer profundidade.

{{% /alert %}}

### Conteúdo Da Tabela

O nó da tabela não contém nenhum conteúdo real – em vez disso, é um contêiner para outros nós que compõem o conteúdo:

- **Table** contém muitos **Row** Nós. A tabela fornece todos os elementos de nó usuais, permitindo que você mova, modifique e remova livremente a tabela no documento.
- **Row** representa uma única linha de tabela e contém muitos **Cell** nós. Além disso, o **Row** fornece elementos que definem como a linha é exibida, como altura e alinhamento.
- **Cell** é o que contém o conteúdo verdadeiro visível na tabela e é composto por um **Paragraph** e outros nós de nível de bloco. Além disso, as células podem conter tabelas aninhadas.

![tables-overview-aspose-words-java-2](/words/java/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

Você pode verificar a estrutura dos nós da tabela em um documento usando o **DocumentExplorer**.

{{% /alert %}}

### Parágrafo vazio após a tabela

A figura acima mostra que o documento contém uma tabela de várias linhas, que por sua vez consiste em duas células. Cada uma das duas células inclui um parágrafo, que é o recipiente para o texto formatado da célula.

É importante notar também que a separação de duas tabelas consecutivas em um documento requer pelo menos um parágrafo vazio após a tabela. Sem esse parágrafo, as tabelas consecutivas seriam Unidas em um. Este comportamento é idêntico em Microsoft Word e Aspose.Words.

Aspose.Words tem um número de classes relacionadas com tabelas– [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/), e outros.

## Ver Também

* [Aspose.Words Modelo De Objecto Do Documento (DOM)](/words/java/aspose-words-document-object-model/)
* [* * * * * * * * * * *](/words/java/logical-levels-of-nodes-in-a-document/)

---
title: Aninhado Mail Merge com regiões em C++
second_title: Aspose.Words para C++
articleTitle: Aninhado Mail Merge com regiões
linktitle: Aninhado Mail Merge com regiões
type: docs
description: "Executar um mail merge operação com regiões aninhadas usando C++. A mesclagem aninhada é um recurso que permite mesclar dados hierárquicos de sua fonte de dados em seu modelo de mesclagem."
keywords: "mail merge with nested regions c++"
weight: 30
url: /pt/cpp/nested-mail-merge-with-regions/
---

Em alguns cenários, pode ser necessário usar mail merge com regiões. Mesclagem aninhada é um recurso que permite mesclar dados hierárquicos de sua fonte de dados em seu modelo de mesclagem para preencher facilmente seu documento. Basicamente, os dados hierárquicos são representados como um conjunto de itens de dados, e as relações hierárquicas descrevem como os itens de dados estão relacionados entre si (um item de dados é o pai de outro).

Aspose.Words permite que você execute um mail merge operação com regiões aninhadas. Você pode usar esse recurso se tiver uma fonte de dados organizada em uma estrutura semelhante a uma árvore e quiser executar um mail merge operação para preencher um modelo com dados hierárquicos.

{{% alert color="primary" %}}

Aninhado mail merge é relevante apenas quando se realiza um mail merge com regiões.

{{% /alert %}}

## O que é um aninhado Mail Merge

O mail merge região é chamada aninhada se você tiver dois ou mais mail merge regiões onde uma delas se encontra dentro da outra de forma hierárquica. Observe que cada região contém dados de uma tabela.

O exemplo mais comum de um aninhado mail merge é uma ordem que contém alguns itens onde você precisa vincular muitas tabelas de dados e apresentar as informações em um modelo.

A figura abaixo mostra duas regiões aninhadas onde o *Order* mail merge a região é a mãe do *Item* mail merge região.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Como processar Mail Merge com regiões aninhadas

Os dados a fundir num modelo podem provir de várias fontes, principalmente de bases de dados relacionais ou XML documentos. No nosso exemplo, vamos usar um [SQLite](https://www.sqlite.org/index.html) banco de dados para armazenar nossos dados e carregá-los com implementação de fonte de dados personalizada.

A imagem abaixo demonstra como os dados do *Order* a tabela passada para as regiões de mesclagem aninhadas será vinculada ao *Item* tabela, bem como a saída gerada durante a operação de mesclagem.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Como você pode ver no documento de saída, cada pedido do **Order** a tabela é inserida no modelo de mesclagem com todos os itens relacionados do pedido **Item** mesa. O próximo pedido será inserido junto com seus itens até que todos os pedidos e itens sejam listados. A ordem de nidificação mail merge com regiões no modelo deve corresponder às relações de dados entre as tabelas na fonte de dados.

## Como criar relações de dados a partir de uma fonte de dados personalizada

Implementar o [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) interface para criar relações na estrutura pai-filho da sua fonte de dados personalizada. Use o [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) método para retornar os dados Filho relevantes de um registro pai atual.

O exemplo de código a seguir demonstra como gerar uma fatura usando mail merge com regiões de [SQLite](https://www.sqlite.org/index.html) base de dados com [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}
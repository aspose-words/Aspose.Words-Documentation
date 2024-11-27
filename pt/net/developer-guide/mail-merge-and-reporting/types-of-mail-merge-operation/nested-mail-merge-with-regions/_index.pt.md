---
title: Aninhado Mail Merge com regiões em C#
second_title: Aspose.Words para .NET
articleTitle: Aninhado Mail Merge com regiões
linktitle: Aninhado Mail Merge com regiões
type: docs
description: "Execute uma operação Mail Merge com regiões aninhadas usando C#. A mesclagem aninhada é um recurso que permite mesclar dados hierárquicos de sua fonte de dados em seu modelo de mesclagem."
keywords: "mail merge with nested regions c#"
weight: 10
url: /pt/net/nested-mail-merge-with-regions/
timestamp: 2024-07-11-08-07-06
---

Em alguns cenários, pode ser necessário usar Mail Merge aninhado com regiões. A mesclagem aninhada é um recurso que permite mesclar dados hierárquicos de sua fonte de dados em seu modelo de mesclagem para preencher facilmente seu documento. Basicamente, os dados hierárquicos são representados como um conjunto de itens de dados, e as relações hierárquicas descrevem como os itens de dados estão relacionados entre si (um item de dados é o pai de outro).

Aspose.Words permite executar uma operação Mail Merge com regiões aninhadas. Você pode usar esse recurso se tiver uma fonte de dados organizada em uma estrutura semelhante a uma árvore e quiser executar uma operação Mail Merge para preencher um modelo com dados hierárquicos.

{{% alert color="primary" %}}

Aninhado Mail Merge é relevante apenas ao executar um Mail Merge com regiões.

{{% /alert %}}

## O que é um aninhado Mail Merge

A região Mail Merge é chamada de aninhada se você tiver duas ou mais regiões Mail Merge onde uma delas está dentro da outra de forma hierárquica. Observe que cada região contém dados de uma tabela.

O exemplo mais comum de um Mail Merge aninhado é uma ordem que contém vários itens em que é necessário vincular várias tabelas de dados e apresentar as informações em um modelo.

A figura abaixo mostra duas regiões aninhadas onde a Região *Order* Mail Merge é o pai da Região *Item* Mail Merge.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Como processar Mail Merge com regiões aninhadas

Os dados a fundir num modelo podem provir de várias fontes, principalmente de bases de dados relacionais ou de documentos XML. Em nosso exemplo, vamos usar um arquivo XML para armazenar nossos dados e carregá-los diretamente no **DataSet**.

Aspose.Words permite processar Mail Merge com regiões aninhadas usando as relações de dados especificadas no **DataSet**. Quando o objeto **DataSet** carrega XML, ele usa o esquema fornecido ou o infere da estrutura do Próprio XML para realizar isso. A partir dessa estrutura, cria relações entre tabelas, quando necessário.

A imagem abaixo mostra como os dados da tabela *Order* passados para as regiões de mesclagem aninhadas serão vinculados à tabela *Item*, bem como a saída gerada durante a operação de mesclagem.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Como você pode ver no documento de saída, cada pedido da tabela **Order** é inserido no modelo de mesclagem com todos os itens relacionados do pedido da tabela **Item**. O próximo pedido será inserido junto com seus itens até que todos os pedidos e itens sejam listados. A ordem de aninhamento Mail Merge com regiões no modelo deve corresponder às relações de dados entre as tabelas na fonte de dados.

O exemplo de código a seguir mostra como gerar uma fatura usando Mail Merge aninhado com regiões:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "nested-mail-merge.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Orders.xml).

Você pode verificar a implementação da configuração das relações de dados manualmente a partir de [Aspose.Words Github](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Complex%20examples%20and%20helpers/Nested%20MailMerge%20custom.cs).

{{% /alert %}}

## Como configurar relações de dados em Mail Merge aninhado com regiões

Você precisa configurar todas as relações de dados na estrutura pai-filho para executar o Mail Merge aninhado com regiões corretamente. Ignorar esta etapa importante pode levar a uma falha na execução do Mail Merge aninhado com regiões.

Ao recuperar dados para um Mail Merge aninhado de um arquivo XML usando o método **ReadXml**, as relações são criadas automaticamente de acordo com a estrutura do documento XML. No entanto, é necessário certificar-se de que foram criadas relações correctas.

Se Mail Merge não estiver funcionando como esperado, talvez seja necessário reestruturar seu arquivo XML ou criar explicitamente relações entre objetos DataTable no DataSet.

Um `DataSet` que tenha tabelas de dados relacionadas usará o objeto **DataRelation** para representar a relação pai-filho entre as tabelas.

O exemplo de código a seguir mostra como estabelecer um `DataRelation` entre a tabela de um cliente e a tabela de um pedido usando um objeto `DataRelation`:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "disable-foreign-key-constraints.cs" >}}

## Como criar relações de dados a partir de uma fonte de dados personalizada

Implemente a interface [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/) para criar relações na estrutura pai-filho da sua fonte de dados personalizada. Use o método [GetChildDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) para retornar os dados Filho relevantes de um registro pai atual.

O exemplo a seguir mostra como criar relações de dados usando **GetChildDataSource**:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "get-child-data-source.cs" >}}

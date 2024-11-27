---
title: Tipos de Mail Merge operação em C#
second_title: Aspose.Words para .NET
articleTitle: Tipos de operação Mail Merge
linktitle: Tipos de operação Mail Merge
type: docs
description: "Execute dois tipos diferentes de operações Mail Merge: simples Mail Merge e Mail Merge com regiões usando C#. Simples Mail Merge repete todo o documento por cada registo da fonte de dados, enquanto Mail Merge com regiões repete apenas regiões designadas por Registo."
keywords: "how to execute Mail Merge c#"
weight: 20
url: /pt/net/types-of-mail-merge-operations/
timestamp: 2024-07-11-08-07-06
---

A ideia principal de Mail Merge é criar automaticamente um documento ou vários documentos com base no seu modelo e nos dados obtidos da sua fonte de dados. Aspose.Words permite executar dois tipos diferentes de operações Mail Merge: simples Mail Merge e Mail Merge com regiões.

O exemplo mais comum de Utilização do simple Mail Merge é quando pretende enviar um documento para clientes diferentes, incluindo os seus nomes no início do documento. Para fazer isso, você precisa criar campos de mesclagem como *First Name* e *Last Name* em seu modelo e, em seguida, preenchê-los com dados de sua fonte de dados. Considerando que o exemplo mais comum de usar Mail Merge com regiões é quando você deseja enviar um documento que inclui pedidos específicos com a lista de todos os itens dentro de cada pedido. Para fazer isso, você precisará criar regiões de mesclagem dentro do seu modelo – região própria para cada pedido, a fim de preenchê-lo com todos os dados necessários para os itens.

A principal diferença entre as duas operações de mesclagem é que simples Mail Merge (sem regiões) repete todo o documento por cada registro da fonte de dados, enquanto Mail Merge com regiões repete apenas regiões designadas por registro. Você pode pensar em uma operação simples Mail Merge como um caso particular de mesclagem com regiões onde a única região é o documento inteiro.

{{% alert color="primary" %}}

A classe [MailMerge](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/) representa uma funcionalidade Mail Merge. Com suas propriedades, Você pode personalizar o comportamento necessário antes de executar uma operação Mail Merge.

{{% /alert %}}

## Operação Simples Mail Merge {#simple-mail-merge-operation}

Um simples Mail Merge é usado para preencher os campos Mail Merge dentro do seu modelo com os dados necessários da sua fonte de dados (representação de tabela única). Portanto, é semelhante ao clássico Mail Merge em Microsoft Word.

Você pode adicionar um ou mais campos de mesclagem em seu modelo e, em seguida, executar a operação simples Mail Merge. Recomenda-se usá-lo se o seu modelo não contiver regiões de mesclagem.

A principal limitação da utilização deste tipo é que todo o conteúdo do documento será repetido para cada registo na fonte de dados.

### Como executar uma operação simples Mail Merge {#how-to-execute-a-simple-mail-merge-operation}

Assim que o modelo estiver pronto, pode começar a executar a operação simples Mail Merge. Aspose.Words permite executar uma operação simples Mail Merge usando diferentes [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/#execute/) que aceitam vários objetos de dados como fonte de dados.

O exemplo de código a seguir mostra como executar uma operação Mail Merge simples usando um dos métodos [Execute](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/):

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "execute-simple-mail-merge.cs" >}}

Você pode notar a diferença entre o documento antes de executar simples mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template" style="width:300px"/>

E depois de executar simples mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge" style="width:300px"/>

### Como criar vários documentos mesclados

Em Aspose.Words, a operação padrão Mail Merge preenche apenas um único documento com conteúdo da sua fonte de dados. Portanto, você precisará executar a operação Mail Merge várias vezes para criar vários documentos mesclados como saída.

O exemplo de código a seguir mostra como gerar vários documentos mesclados durante uma operação Mail Merge:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "produce-multiple-documents.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

## Mail Merge com regiões

Você pode criar diferentes regiões em seu modelo para ter áreas especiais que você pode simplesmente preencher com seus dados. Use Mail Merge com regiões se quiser inserir tabelas, linhas com dados repetidos para fazer seus documentos crescerem dinamicamente, especificando essas regiões em seu modelo.

Você pode criar regiões aninhadas (filho), bem como mesclar regiões. A principal vantagem de usar este tipo é aumentar dinamicamente as partes dentro de um documento. Veja mais detalhes no próximo artigo"aninhado Mail Merge com regiões".

{{% alert color="primary" %}}

Informações sobre uma Região Mail Merge podem ser obtidas usando a classe [MailMergeRegionInfo](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/).

{{% /alert %}}

### Como executar Mail Merge com regiões

Uma Região Mail Merge é uma parte específica dentro de um documento que tem um ponto inicial e um ponto final. Ambos os pontos são representados como Mail Merge campos com nomes específicos *"TableStart:XXX"* e *"TableEnd:XXX"*. Todo o conteúdo incluído numa região Mail Merge será automaticamente repetido para cada registo na fonte de dados.

Aspose.Words permite executar Mail Merge com regiões usando diferentes [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/) que aceitam vários objetos de dados como fonte de dados.

Como primeiro passo, precisamos criar o `DataSet` para passá-lo posteriormente como um parâmetro de entrada para o método `ExecuteWithRegions`:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "create-data-set.cs" >}}

O exemplo de código a seguir mostra como executar Mail Merge com regiões usando o método [ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/):

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "mail-merge-with-regions.cs" >}}

Você pode notar a diferença entre o documento antes de executar Mail Merge com regiões:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

E depois de executar Mail Merge com regiões:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

### Limitações de Mail Merge com regiões

Existem alguns pontos importantes que você precisa considerar ao executar um Mail Merge com regiões:

* O ponto inicial *TableStart:Orders* e o ponto final *TableEnd:Orders* precisam estar na mesma linha ou célula. Por exemplo, se você iniciar uma região de mesclagem em uma célula de uma tabela, deverá encerrar a região de mesclagem na mesma linha da primeira célula.
* O nome do campo de mesclagem deve corresponder ao nome da coluna em seu DataTable. A menos que você tenha especificado campos mapeados, o Mail Merge com regiões não será bem-sucedido para qualquer campo de mesclagem que tenha um nome diferente do nome da coluna.

Se uma destas regras for violada, obterá resultados inesperados ou poderá ser lançada uma excepção.

{{% alert color="primary" %}}

Se você não usar Mail Merge regiões, ela será semelhante a Microsoft Word mail merge e todo o conteúdo do documento será repetido para cada registro na fonte de dados.

{{% /alert %}}


---
title: Recursos avançados Mail Merge em C#
second_title: Aspose.Words para .NET
articleTitle: Recursos Avançados Mail Merge
linktitle: Recursos Avançados Mail Merge
type: docs
description: "Aspose.Words para .NET fornece alguns recursos avançados Mail Merge que permitem que você execute mais Mail Merge personalização usando C#. Por exemplo, obter informações sobre a estrutura do modelo, definir regras, limpar após uma operação Mail Merge e outros."
keywords: "use advanced Mail Merge features c#"
weight: 50
url: /pt/net/advanced-mail-merge-features/
timestamp: 2024-07-11-08-07-06
---

Aspose.Words fornece algumas propriedades e métodos adicionais Mail Merge que permitem realizar uma personalização adicional do processo Mail Merge em simples Mail Merge ou Mail Merge com regiões.

Os recursos avançados Mail Merge incluem, mas não estão limitados a, obter informações sobre a estrutura do modelo antes de executar uma operação Mail Merge, definir regras para uma operação Mail Merge e limpar durante uma operação Mail Merge. Este artigo abordará apenas algumas propriedades e exemplos para mostrar como usar recursos avançados.

## Definir regras para operações Mail Merge

Adicionar regras ao seu modelo permite tornar o processo de fluxo de trabalho mais eficaz e flexível. Usando regras Mail Merge, você pode configurar conteúdo que pode ser alterado rapidamente e evitar a necessidade de gerar vários documentos.

Aspose.Words permite que você personalize o Mail Merge com base em regras que são executadas quando você executa a operação Mail Merge e controla as informações de mesclagem. Por exemplo, quando cria um e-mail ou uma carta para enviar a todos os seus clientes. Você pode configurar uma regra para que a letra possa conter vários dados com base nos diferentes valores em determinados campos da sua fonte de dados.

Dê uma olhada em algumas regras Mail Merge que você pode implementar.

### Implementar o próximo campo para mesclar registros de dados no documento atual

É possível implementar o campo [Next](https://reference.aspose.com/words/net/aspose.words.fields/fieldnext/) para mesclar o próximo registro de dados no documento mesclado resultante atual, em vez de iniciar um novo documento mesclado. Ele é usado para exibir vários registros em um documento.

### Implementar campos NextIf e SkipIf para comparar duas expressões

Você pode usar o campo [NextIf](https://reference.aspose.com/words/net/aspose.words.fields/fieldnextif/) ou o campo [SkipIf](https://reference.aspose.com/words/net/aspose.words.fields/fieldskipif/) Se quiser comparar duas expressões (expressões[right](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/rightexpression/) e [left](https://reference.aspose.com/words/net/aspose.words.fields/fieldnextif/leftexpression/)) por cerca de [operator](https://reference.aspose.com/words/net/aspose.words.fields/fieldskipif/comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words mesclará o próximo registro de dados no documento de mesclagem atual, e todos os campos de mesclagem no modelo que estão após o campo *NextIf* serão substituídos por valores do próximo registro de dados em vez do registro de dados atual. | Aspose.Words mesclará o próximo registro de dados em um novo documento de mesclagem. |
| `SkipIf` | Aspose.Words cancelará o documento de mesclagem atual, passará para o próximo registro de dados na fonte de dados e iniciará um novo documento de mesclagem. | Aspose.Words continuará o documento de mesclagem atual. |

O exemplo de código a seguir mostra como comparar duas expressões com **NextIf** ou **SkipIf**:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "field-next.cs" >}}

## Obter Informações Sobre A Estrutura Do Modelo

Aspose.Words permite que você reúna informações diferentes em seu modelo por meio de vários métodos. Por exemplo, pode ser necessário obter os nomes de alguns campos de mesclagem ou a hierarquia de regiões em seu modelo. Agora vamos explicar as possíveis variantes para obter algumas informações específicas do seu modelo.

### Obter Nomes De Campos De Mesclagem

Você pode se deparar com um cenário em que desejará mesclar dados com campos de mesclagem criados por outros e, nesse caso, não terá certeza sobre os nomes exatos dos campos de mesclagem. Portanto, para atingir o objetivo Mail Merge, Primeiro, você precisará ler e exibir os nomes de todos os campos de mesclagem. Aspose.Words permite obter uma coleção de nomes de campos de mesclagem usando o método [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/).

O exemplo de código a seguir mostra como obter nomes de todos os campos de mesclagem no modelo:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-field-names.cs" >}}

### Obter Informações Sobre Regiões De Fusão

Você pode ter um cenário em que deseja entender como seu modelo é estruturado por meio das regiões de mesclagem especificadas. Você pode usar alguns métodos para reunir todas as informações necessárias sobre regiões de mesclagem ou para obter a hierarquia de regiões de mesclagem em seu modelo, como o método [GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/). Você pode usar as propriedades e métodos da classe [MailMergeRegionInfo](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/).O exemplo de código a seguir mostra como obter a hierarquia de regiões de mesclagem:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-regions-hierarchy.cs" >}}

O exemplo de código a seguir mostra como obter regiões de mesclagem específicas dentro do seu modelo com base em seus nomes:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-regions-by-name.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20regions.docx).

{{% /alert %}}

### Adicionar Campos Mapeados

Aspose.Words permite mapear automaticamente nomes de campos na fonte de dados e nomes de Mail Merge campos no modelo usando a propriedade [MappedDataFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/mappeddatafields/). Por exemplo, se você tiver um nome de campo chamado "sobrenome" em seu modelo e na sua fonte de dados tiver o nome de campo "Sobrenome" ou outra variação como "Last_Name" ou "LastName", o campo na fonte de dados será mapeado automaticamente para o campo mapeado correspondente. Se um modelo de mesclagem deve ser mesclado com muitas fontes de dados, os campos mapeados tornam desnecessário inserir novamente os campos no modelo para concordar com os nomes dos Campos no banco de dados.

O exemplo de código a seguir mostra como adicionar um campo mapeado usando o método [Add](https://reference.aspose.com/words/net/aspose.words.mailmerging/mappeddatafieldcollection/add/) quando um campo de mesclagem em um modelo e um campo de dados em uma fonte de dados têm nomes diferentes:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "mapped-data-fields.cs" >}}

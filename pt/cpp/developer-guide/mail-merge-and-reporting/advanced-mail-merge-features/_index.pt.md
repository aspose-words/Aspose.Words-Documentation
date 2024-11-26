---
title: Avançado Mail Merge Características em C++
second_title: Aspose.Words para C++
articleTitle: Avançado Mail Merge Características
linktitle: Avançado Mail Merge Características
type: docs
description: "Aspose.Words para C++ fornece alguns avançados Mail Merge recursos que permitem que você execute mais Mail Merge personalização. Por exemplo, obter informações sobre a estrutura do modelo, definir regras, limpar após um Mail Merge operação, e outros."
keywords: "use advanced Mail Merge features c++"
weight: 50
url: /pt/cpp/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words fornece alguns adicionais Mail Merge propriedades e métodos que permitem realizar uma personalização adicional do Mail Merge processo em simples Mail Merge ou Mail Merge com regiões.

Avançado Mail Merge os recursos incluem, mas não estão limitados a, obter informações sobre a estrutura do modelo antes de executar um Mail Merge operação, estabelecendo regras para a Mail Merge operação e limpeza durante a Mail Merge operação. Este artigo abordará apenas algumas propriedades e exemplos para mostrar como usar recursos avançados.

## Definir regras para Mail Merge Operações

Adicionar regras ao seu modelo permite tornar o processo de fluxo de trabalho mais eficaz e flexível. Utilização Mail Merge regras, você pode configurar conteúdo que pode ser alterado rapidamente e evitar a necessidade de gerar vários documentos.

Aspose.Words permite personalizar o Mail Merge com base em regras que são executadas quando você executa o Mail Merge operação e controlo fusão de informações. Por exemplo, quando cria um e-mail ou uma carta para enviar a todos os seus clientes. Você pode configurar uma regra para que a letra possa conter vários dados com base nos diferentes valores em determinados campos da sua fonte de dados.

Dê uma olhada em alguns Mail Merge regras que podem ser aplicadas.

### Implementar Próximo campo para Mesclar Registros de Dados no Documento Atual

Você pode implementar o [Next](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnext/) campo para mesclar o próximo registro de dados no documento mesclado resultante atual, em vez de iniciar um novo documento mesclado. Ele é usado para exibir vários registros em um documento.

### Implementar NextIf e SkipIf Campos para comparar duas expressões

Você pode usar qualquer um [NextIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnextif) campo ou [SkipIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/) campo se pretender comparar duas expressões ([right]https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/) and [left](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/get_leftexpression/) expressões) por alguns [operator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/get_comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words mesclará o próximo registro de dados no documento de mesclagem atual e todos os campos de mesclagem no modelo que estão após *NextIf* o campo será substituído por valores do próximo registo de dados em vez do registo de dados actual. | Aspose.Words mesclará o próximo registro de dados em um novo documento de mesclagem. |
| `SkipIf` | Aspose.Words cancelará o documento de mesclagem atual, passará para o próximo registro de dados na fonte de dados e iniciará um novo documento de mesclagem. | Aspose.Words continuará o documento de mesclagem atual. |

## Obter Informações Sobre A Estrutura Do Modelo

Aspose.Words permite que você reúna informações diferentes em seu modelo por meio de vários métodos. Por exemplo, pode ser necessário obter os nomes de alguns campos de mesclagem ou a hierarquia de regiões em seu modelo. Agora vamos explicar as possíveis variantes para obter algumas informações específicas do seu modelo.

### Obter Nomes De Campos De Mesclagem

Você pode se deparar com um cenário em que desejará mesclar dados com campos de mesclagem criados por outros e, nesse caso, não terá certeza sobre os nomes exatos dos campos de mesclagem. Assim, para alcançar o Mail Merge objetivo, primeiro, você precisará ler e exibir os nomes de todos os campos de mesclagem. Aspose.Words permite obter uma coleção de nomes de campos de mesclagem usando o [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/) método.

O exemplo de código a seguir mostra como obter nomes de todos os campos de mesclagem no modelo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### Obter Informações Sobre Regiões De Fusão

Você pode ter um cenário em que deseja entender como seu modelo é estruturado por meio das regiões de mesclagem especificadas. Você pode usar alguns métodos para reunir todas as informações necessárias sobre regiões de mesclagem ou para obter a hierarquia de regiões de mesclagem em seu modelo, como [GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/) método. Você pode usar as propriedades e métodos do [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) classe.O exemplo de código a seguir mostra como obter a hierarquia de regiões de mesclagem:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Adicionar Campos Mapeados

Aspose.Words permite mapear automaticamente nomes de campos na sua fonte de dados e nomes de Mail Merge campos no modelo usando o [MappedDataFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_mappeddatafields/) propriedade. Por exemplo, se você tiver um nome de campo chamado " sobrenome "em seu modelo e na fonte de dados tiver o nome de campo" Sobrenome "ou outra variação como" sobrenome "ou"LastName", então o campo na fonte de dados mapeará automaticamente para o campo mapeado correspondente. Se um modelo de mesclagem deve ser mesclado com muitas fontes de dados, os campos mapeados tornam desnecessário inserir novamente os campos no modelo para concordar com os nomes dos Campos no banco de dados.

O exemplo de código a seguir mostra como adicionar um campo mapeado [Add](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mappeddatafieldcollection/add/) método quando um campo de mesclagem em um modelo e um campo de dados em uma fonte de dados têm nomes diferentes:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}

---
title: Limpeza antes ou durante um Mail Merge Operação
second_title: Aspose.Words para C++
articleTitle: Limpeza antes ou durante um Mail Merge Operação
linktitle: Limpeza antes ou durante um Mail Merge Operação
type: docs
description: "Aplique diferentes opções de limpeza e remoção, como excluir campos de mesclagem antes de executar um mail merge operação ou remoção de regiões não utilizadas durante um mail merge operação."
keywords: "cleanup options mail merge c#"
weight: 10
url: /pt/cpp/clean-up-before-or-during-mail-merge/
---

Aspose.Words permite que você aplique diferentes opções de limpeza e remoção, como excluir campos de mesclagem antes de executar um mail merge operação ou remoção de regiões não utilizadas durante um mail merge operação. Esta seção explicará como excluir campos mesclados e como configurar uma opção de remoção.

## Excluir Campos Mesclados

Quando estiver a utilizar um modelo longo criado por outra pessoa, poderá querer eliminar todos os campos de mesclagem que já existem nesse modelo antes de executar um mail merge operação. Você pode usar o [DeleteFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/deletefields/) método se você deseja excluir todos os campos de mesclagem de um documento sem executar um mail merge operação. Este método não é afectado por quaisquer opções de remoção do [CleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_cleanupoptions/) propriedade e executá-lo apenas remove campos mesclados, Não quaisquer campos contendo ou parágrafos vazios.

O exemplo de código a seguir mostra como excluir todos os campos de mesclagem do modelo sem executar um mail merge operação:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-DeleteFields.h" >}}

## Criação de um `Removing` Opção

Aspose.Words permite remover campos, regiões e parágrafos não misturados de um modelo durante um mail merge operação usando opções de remoção.

Use o **CleanupOptions** propriedade juntamente com o [MailMergeCleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergecleanupoptions/) enumeração para definir a opção de remoção. Especifique quais itens você deseja remover escolhendo as seguintes opções (você pode combinar mais de um):

* Remover parágrafos vazios
* Remover regiões não utilizadas
* Remover campos não utilizados
* Remover os campos que contêm
* Remover campos estáticos
* Remover linhas vazias da tabela

É possível considerar um campo de mesclagem como não mesclado em uma das seguintes condições:

1. Se o campo de mesclagem na fonte de dados não tiver uma coluna ou um campo de mapeamento.
2. Se o campo de mesclagem na fonte de dados contiver um campo de mapeamento, mas os dados forem nulos.

{{% alert color="primary" %}}

Se você estiver mesclando dados usando fontes de dados separadas, essas opções de remoção serão ativadas apenas com a última chamada do mail merge método de execução.

{{% /alert %}}

### Remover Parágrafos Vazios

Um parágrafo que inclua apenas campos de mesclagem estará vazio quando o mail merge process remove todos os seus campos de mesclagem como não mesclados. Esses parágrafos vazios podem adicionar espaço indesejado e alterar a aparência do relatório gerado. Você pode enfrentar duas situações com parágrafos durante um mail merge operação:

1. O mail merge campo será mesclado com os dados vazio.
2. O campo de mesclagem não é utilizado e será removido.

Em ambas as situações, o **RemoveEmptyParagraphs** a opção removerá automaticamente parágrafos vazios do documento. Além disso, removerá o `TableStart` e TableEnd mesclar campos se o restante do parágrafo estiver vazio.

O exemplo de código a seguir mostra como remover os parágrafos vazios:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Mail Merge and Reporting-Working with CleanupOptions-RemoveEmptyParagraphs.h" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Remover Campos Não Utilizados

Aspose.Words permite que você remova qualquer não utilizado mail merge campos atribuindo o **RemoveUnusedFields** bandeira para **CleanupOptions**. Esta opção removerá os campos de mesclagem que não possuem os dados correspondentes na fonte de dados.

O exemplo de código a seguir mostra como remover quaisquer campos de mesclagem não utilizados de um documento automaticamente mail merge operação:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveUnusedFields.cpp" >}}

### Removendo Os Campos Que Contêm

Um campo de mesclagem pode estar contido em outro campo, como um **IF** campo ou um campo de Fórmula. Remova este campo externo quando o campo de mesclagem for mesclado ou removido do documento.

O exemplo de código a seguir mostra como remover campos que contêm campos de mesclagem de um documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveContainingFields.cpp" >}}

**Nota**

### Remover Linhas Vazias Da Tabela

Aspose.Words permite remover linhas de tabela vazias atribuindo o **RemoveEmptyTableRows** bandeira para **CleanupOptions**. Esta opção removerá as linhas da tabela que contêm campos de mesclagem vazios.

O exemplo de código a seguir mostra como remover linhas de tabela vazias que contêm mail merge regiões de um documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveEmptyTableRows.cpp" >}}

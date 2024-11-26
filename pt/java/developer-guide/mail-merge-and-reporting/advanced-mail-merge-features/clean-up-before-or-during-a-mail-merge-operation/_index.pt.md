---
title: Limpeza antes ou durante uma operação Mail Merge
second_title: Aspose.Words para Java
articleTitle: Limpeza antes ou durante uma operação Mail Merge
linktitle: Limpeza antes ou durante uma operação Mail Merge
type: docs
description: "Aplique diferentes opções de limpeza e remoção, como excluir campos de mesclagem antes de executar uma operação Mail Merge ou remover regiões não utilizadas durante uma operação Mail Merge usando Java."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /pt/java/clean-up-before-or-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words permite que você aplique diferentes opções de limpeza e remoção, como excluir campos de mesclagem antes de executar uma operação Mail Merge ou remover regiões não utilizadas durante uma operação Mail Merge. Esta seção explicará como excluir campos mesclados e como configurar uma opção de remoção.

## Excluir Campos Mesclados

Quando estiver a utilizar um modelo longo criado por outra pessoa, poderá querer eliminar todos os campos de mesclagem que já existem nesse modelo antes de executar uma operação Mail Merge. Você pode usar o método [DeleteFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#deleteFields) se quiser excluir todos os campos de mesclagem de um documento sem executar uma operação Mail Merge. Este método não é afetado por nenhuma opção de remoção da propriedade [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getCleanupOptions) e executá-lo apenas remove campos mesclados, Não quaisquer campos contendo ou parágrafos vazios.

O exemplo de código a seguir mostra como excluir todos os campos de mesclagem do modelo sem executar uma operação Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-DeleteFields.java" >}}

## Configurar uma opção `Removing`

Aspose.Words permite remover campos, regiões e parágrafos não mesclados de um modelo durante uma operação Mail Merge usando opções de remoção.

Use a propriedade **CleanupOptions** juntamente com a enumeração [MailMergeCleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/mailmergecleanupoptions/) para definir a opção de remoção. Especifique quais itens você deseja remover escolhendo as seguintes opções (você pode combinar mais de um):

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

Se você estiver mesclando dados usando fontes de dados separadas, essas opções de remoção serão ativadas apenas com a última chamada do método Mail Merge execute.

{{% /alert %}}

### Remover Parágrafos Vazios

Um parágrafo que inclua apenas campos de mesclagem ficará vazio quando o processo Mail Merge remover todos os seus campos de mesclagem como não mesclados. Esses parágrafos vazios podem adicionar espaço indesejado e alterar a aparência do relatório gerado. Você pode enfrentar duas situações com parágrafos durante uma operação Mail Merge:

1. O campo Mail Merge será mesclado com dados vazios.
2. O campo de mesclagem não é utilizado e será removido.

Em ambas as situações, a opção **RemoveEmptyParagraphs** removerá automaticamente parágrafos vazios do documento. Além disso, removerá os campos de mesclagem `TableStart` e TableEnd se o restante do parágrafo estiver vazio.

O exemplo de código a seguir mostra como remover os parágrafos vazios:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveEmptyParagraphs.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Table%20with%20fields.docx).

{{% /alert %}}

### Remover Regiões Não Utilizadas

Nas versões anteriores de Aspose.Words, as regiões vazias de Mail Merge eram removidas do documento automaticamente durante a operação de Mail Merge. Com a versão mais recente do Aspose.palavras, regiões Mail Merge vazias permanecem após a operação Mail Merge por padrão. No entanto, pode utilizar a opção **RemoveUnusedRegions** para remover as regiões Mail Merge não utilizadas durante a operação Mail Merge. Por exemplo, é possível mesclar um documento com uma fonte de dados vazia que não contenha tabelas de dados que levem a regiões não utilizadas no documento.

O exemplo de código a seguir mostra como remover as regiões de mesclagem não utilizadas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveUnmergedRegions.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

**Nota**

### Remover Campos Não Utilizados

Aspose.Words permite remover quaisquer campos Mail Merge não utilizados atribuindo o sinalizador **RemoveUnusedFields** a **CleanupOptions**. Esta opção removerá os campos de mesclagem que não possuem os dados correspondentes na fonte de dados.

O exemplo de código a seguir mostra como remover quaisquer campos de mesclagem não utilizados de um documento automaticamente durante uma operação Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveUnusedFields.java" >}}

### Removendo Os Campos Que Contêm

Um campo de mesclagem pode estar contido em outro campo, como um campo **IF** ou um campo de Fórmula. Remova este campo externo quando o campo de mesclagem for mesclado ou removido do documento.

O exemplo de código a seguir mostra como remover campos que contêm campos de mesclagem de um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveContainingFields.java" >}}

**Nota**

### Remover Linhas Vazias Da Tabela

Aspose.Words permite remover linhas de tabela vazias atribuindo o sinalizador **RemoveEmptyTableRows** a **CleanupOptions**. Esta opção removerá as linhas da tabela que contêm campos de mesclagem vazios.

O exemplo de código a seguir mostra como remover linhas de tabela vazias que contêm regiões Mail Merge de um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveEmptyTableRows.java" >}}

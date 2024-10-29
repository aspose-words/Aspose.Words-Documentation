---
title: Mail Merge com regiões em C++
second_title: Aspose.Words para C++
articleTitle: Mail Merge com regiões
linktitle: Mail Merge com regiões
type: docs
description: "Crie diferentes regiões em seu modelo para ter áreas especiais que você pode simplesmente preencher com seus dados. Use o mail merge com regiões se você deseja inserir tabelas, linhas com dados repetidos para fazer seus documentos crescer dinamicamente."
keywords: "how to execute mail merge c++"
weight: 20
url: /pt/cpp/mail-merge-with-regions/
---

Você pode criar diferentes regiões em seu modelo para ter áreas especiais que você pode simplesmente preencher com seus dados. Use o mail merge com regiões se você deseja inserir tabelas, linhas com dados repetidos para fazer seus documentos crescerem dinamicamente, especificando essas regiões em seu modelo.

Você pode criar regiões aninhadas (filho), bem como mesclar regiões. A principal vantagem de usar este tipo é aumentar dinamicamente as partes dentro de um documento. Veja mais detalhes no próximo artigo " aninhado Mail Merge com regiões".

{{% alert color="primary" %}}

Informações sobre a mail merge região pode ser obtida usando o [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) classe.

{{% /alert %}}

## Como executar Mail Merge com regiões

A mail merge região é uma parte específica dentro de um documento que tem um ponto de partida e um ponto final. Ambos os pontos são representados como mail merge campos com nomes específicos *"TableStart:XXX"* e *"TableEnd:XXX"*. Todo o conteúdo incluído numa mail merge a região será repetida automaticamente para cada registo na fonte de dados.

Aspose.Words permite executar mail merge com regiões que utilizam um dos [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/) métodos que aceitam [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) fonte de dados personalizada.

O exemplo de código a seguir mostra como executar mail merge com regiões do banco de dados sqlite com [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

Você pode notar a diferença entre o documento antes de executar mail merge com regiões:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

E depois de executar mail merge com regiões:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## Limitações do Mail Merge com regiões

Existem alguns pontos importantes que você precisa considerar ao realizar um mail merge com regiões:

* O ponto de partida *TableStart:Orders* e o ponto final *TableEnd:Orders* ambos precisam estar na mesma linha ou célula. Por exemplo, se você iniciar uma região de mesclagem em uma célula de uma tabela, deverá encerrar a região de mesclagem na mesma linha da primeira célula.
  O nome do campo de mesclagem deve corresponder ao nome da coluna DataTable. A menos que você especifique campos mapeados, mail merge com regiões não será bem-sucedido para qualquer campo de mesclagem que tenha um nome diferente do nome da coluna.
* Aspose.Words para C++ só suporta [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) e [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) com base fontes de dados. Ao contrário .NET e Java, C++ não ter aceito multi-plataforma API para trabalhar com bases de dados (como ADODB, ODBC, ou JDBC). Para funcionar com uma fonte de dados específica, você precisará implementar [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) ou [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) interface.

Se uma destas regras for violada, obterá resultados inesperados ou poderá ser lançada uma excepção.

{{% alert color="primary" %}}

Se não utilizar mail merge regiões, então será semelhante a Microsoft Word mail merge, e todo o conteúdo do documento será repetido para cada registro na fonte de dados.

{{% /alert %}}


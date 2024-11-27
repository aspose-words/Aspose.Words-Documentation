---
title: Mail Merge e relatórios em C#
second_title: Aspose.Words para .NET
articleTitle: Mail Merge e relatórios
linktitle: Mail Merge e relatórios
type: docs
description: "Mail Merge é um recurso popular para criar documentos rapidamente usando C#. Aspose.Words for .NET leva a funcionalidade padrão Mail Merge e avança muitos passos à frente, transformando-a em uma solução de relatórios completa que permite criar documentos ainda mais complexos, como relatórios, catálogos, inventários e faturas."
keywords: "how to use Mail Merge c#"
weight: 30
url: /pt/net/mail-merge-and-reporting/
timestamp: 2024-07-11-08-07-06
---

Mail Merge é um recurso popular para criar documentos de forma rápida e fácil, como cartas, etiquetas e envelopes. Aspose.Words permite gerar documentos a partir de modelos com campos Mail Merge.

Um campo Mail Merge é um campo que pode ser inserido num modelo mail merge para incluir valores específicos de um registo de origem de dados em documentos de saída. Por exemplo, você pode inserir um campo de mesclagem em um modelo de E-mail para que a saudação tenha o primeiro nome do destinatário em vez de um genérico "Olá!". Aspose.Words coloca dados de uma fonte externa, como um banco de dados ou arquivo, nesses campos e os Formata. O documento resultante é salvo na pasta especificada.

Aspose.Words usa a funcionalidade padrão Mail Merge e avança muitos passos à frente, transformando-a em uma solução de relatórios completa que permite criar documentos ainda mais complexos, como relatórios, catálogos, inventários e faturas. Aqui estão algumas vantagens da solução de relatórios Aspose.Words:

- Relatórios de conceção em Microsoft Word utilizando campos padrão Mail Merge
- Definir regiões no documento que estão crescendo, como linhas de ordem detalhadas
- Inserir imagens durante um mail merge
- Execute qualquer lógica personalizada, controle a formatação ou insira conteúdo complexo usando manipuladores de eventos Mail Merge
- Preencher documentos com dados de qualquer tipo de fonte de dados

{{% alert color="primary" %}}

O namespace [Aspose.Words.MailMerging](https://reference.aspose.com/words/net/aspose.words.mailmerging/) é usado para trabalhar com mesclagem de correio.

{{% /alert %}}

## Mecanismo e Componentes principais de Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words fornece a capacidade de carregar documentos em vários [supported formats](https://reference.aspose.com/words/net/aspose.words/loadformat/) e, em seguida, permite que os usuários executem uma operação Mail Merge.

Normalmente, um documento carregado permite armazenar campos de mesclagem, por exemplo, um documento no formato DOCX. Mas existem formatos que não armazenam esses campos, por exemplo, TXT. Se Aspose.Words suportar o carregamento desses formatos de arquivo, você poderá adicionar os campos de mesclagem diretamente ao modelo do documento, salvar o documento em um [supported format](https://reference.aspose.com/words/net/aspose.words/saveformat/) conveniente e executar a operação Mail Merge.

A operação Mail Merge irá fundir o seu *mail merge template* e o seu *data source* para gerar o indivíduo *merged documents*.

## O que é um modelo Mail Merge {#what-is-a-mail-merge-template}

O objetivo de aplicar uma operação mail merge usando um modelo de mesclagem é simplificar o processo de criação de um documento.

Existem várias maneiras de criar e projetar um modelo de mesclagem. Você pode usar Microsoft Word, e o modelo de mesclagem não precisa ser um modelo Microsoft Word, ou seja, um documento no formato DOT ou DOTX, pode ser um documento regular no formato DOC ou DOCX. Você precisa inserir alguns campos especiais chamados campos de mesclagem neste modelo em locais onde deseja que os dados de sua fonte de dados sejam inseridos posteriormente. Ou você pode criar programaticamente um modelo de mesclagem usando a classe [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).

O modelo de mesclagem contém o texto principal, que deve ser o mesmo em todos os documentos de saída depois de executar a operação Mail Merge. Você pode usar qualquer formato para o seu modelo se houver a capacidade de adicionar campos de mesclagem a ele. Todos os campos de mesclagem dentro do seu modelo serão preenchidos a partir da sua fonte de dados durante a operação Mail Merge.

## Fontes de dados para uma operação Mail Merge {#data-source-types-for-a-mail-merge-operation}

Aspose.Words Mail Merge Aceita várias fontes de dados. Pode ser a DataTable, DataView, DataSet, IDataReader, uma matriz de valores suportados por ADO .NET, ou fontes de dados personalizadas representadas por [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/) implementações.

A fonte de dados contém todas as informações que são extraídas durante a operação Mail Merge para personalizar e-mails e documentos individuais. As fontes de dados podem ser criadas manualmente ou geradas através de relatórios a partir de uma base de dados ou aplicação existente. Se você tiver dados no formato XML, poderá carregá-los e mesclá-los com o DataSet. A operação Mail Merge irá percorrer todos os registos da fonte de dados e inseri-los nos campos Mail Merge do documento. É possível implementar algumas interfaces mail merge, como [IMailMergeDataSourceRoot](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasourceroot/), para mesclar dados de qualquer fonte de dados, incluindo uma consulta LINQ, um arquivo XML ou objetos de negócios.

O exemplo de código a seguir mostra como carregar uma tabela de dados como fonte de dados para a operação Mail Merge:

{{< gist "aspose-words-gists" "de5e13f5d5bb7d8cb88da900b4f9ed8b" "execute-with-regions-data-table.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Orders.docx).

{{% /alert %}}

## Documentos fundidos de uma operação Mail Merge {#merged-documents-of-a-mail-merge-operation}

Um documento mesclado é o resultado da operação Mail Merge quando você mescla o modelo com a fonte de dados. Todos os campos de mesclagem no documento mesclado são substituídos por dados reais da sua fonte de dados.

A imagem a seguir mostra um exemplo do modelo de mesclagem com campos mesclados antes de executar a operação Mail Merge.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

A imagem a seguir mostra um exemplo do documento mesclado de saída como resultado da execução da operação Mail Merge.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## Ver Também

- [Trabalhar com Mail Merge modelos em Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)

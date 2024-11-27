---
title: Mail Merge e relatórios em Python
second_title: Aspose.Words Para Python via .NET
articleTitle: Mail Merge e relatórios
linktitle: Mail Merge e relatórios
type: docs
description: "Mail Merge é um recurso popular para criar documentos rapidamente usando Python. Aspose.Words for Python via .NET leva a funcionalidade padrão Mail Merge e avança muitos passos à frente, transformando-a em uma solução de relatórios completa que permite criar documentos ainda mais complexos, como relatórios, catálogos, inventários e faturas."
keywords: "how to use Mail Merge python"
weight: 30
url: /pt/python-net/mail-merge-and-reporting/
timestamp: 2024-01-27-14-07-04
---

Mail Merge é um recurso popular para criar documentos de forma rápida e fácil, como cartas, etiquetas e envelopes. Aspose.Words permite gerar documentos a partir de modelos com campos Mail Merge.

Um campo Mail Merge é um campo que pode ser inserido num modelo mail merge para incluir valores específicos de um registo de origem de dados em documentos de saída. Por exemplo, você pode inserir um campo de mesclagem em um modelo de E-mail para que a saudação tenha o primeiro nome do destinatário em vez de um genérico "Olá!". Aspose.Words coloca dados de uma fonte externa, como um banco de dados ou arquivo, nesses campos e os Formata. O documento resultante é salvo na pasta especificada.

Aspose.Words usa a funcionalidade padrão Mail Merge e avança muitos passos à frente, transformando-a em uma solução de relatórios completa que permite criar documentos ainda mais complexos, como relatórios, catálogos, inventários e faturas. Aqui estão algumas vantagens da solução de relatórios Aspose.Words:

- Relatórios de conceção em Microsoft Word utilizando campos padrão Mail Merge
- Defina regiões no documento que estão crescendo, como linhas de ordem detalhadas (atualmente não há suporte na versão Python)
- Inserir imagens durante um mail merge
- Execute qualquer lógica personalizada, controle a formatação ou insira conteúdo complexo usando manipuladores de eventos Mail Merge (atualmente não há suporte na versão Python)
- Preencha documentos com dados de qualquer tipo de fonte de dados (atualmente não é suportado na versão Python, apenas a fonte de dados arrays é suportada)

{{% alert color="primary" %}}

O módulo [aspose.words.mailmerging](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/) é utilizado para trabalhar com a fusão de correio.

{{% /alert %}}

## Mecanismo e Componentes principais de uma operação Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words fornece a capacidade de carregar documentos em vários [supported formats](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) e, em seguida, permite que os usuários executem uma operação Mail Merge.

Normalmente, um documento carregado permite armazenar campos de mesclagem, por exemplo, um documento no formato DOCX. Mas existem formatos que não armazenam esses campos, por exemplo, TXT. Se Aspose.Words suportar o carregamento desses formatos de arquivo, você poderá adicionar os campos de mesclagem diretamente ao modelo do documento, salvar o documento em um [supported format](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) conveniente e executar a operação Mail Merge.

A operação Mail Merge irá fundir o seu *mail merge template* e o seu *data source* para gerar o indivíduo *merged documents*.

## O que é um modelo Mail Merge {#what-is-a-mail-merge-template}

O objetivo de aplicar uma operação mail merge usando um modelo de mesclagem é simplificar o processo de criação de um documento.

Existem várias maneiras de criar e projetar um modelo de mesclagem. Você pode usar Microsoft Word, e o modelo de mesclagem não precisa ser um modelo Microsoft Word, ou seja, um documento no formato DOT ou DOTX, pode ser um documento regular no formato DOC ou DOCX. Você precisa inserir alguns campos especiais chamados campos de mesclagem neste modelo em locais onde deseja que os dados de sua fonte de dados sejam inseridos posteriormente. Ou você pode criar programaticamente um modelo de mesclagem usando a classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

O modelo de mesclagem contém o texto principal, que deve ser o mesmo em todos os documentos de saída depois de executar a operação Mail Merge. Você pode usar qualquer formato para o seu modelo se houver a capacidade de adicionar campos de mesclagem a ele. Todos os campos de mesclagem dentro do seu modelo serão preenchidos a partir da sua fonte de dados durante a operação Mail Merge.

## Tipos de fontes de dados para uma operação Mail Merge {#data-source-types-for-a-mail-merge-operation}

Atualmente Aspose.Words Para Python via .NET Mail Merge Aceita apenas uma matriz de valores como fonte de dados. Outros tipos serão adicionados nas versões futuras.

O exemplo de código a seguir mostra como criar um modelo simples e preenchê-lo com dados usando a funcionalidade Mail Merge:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-SimpleMailMerge.py" >}}


## Documentos fundidos de uma operação Mail Merge {#merged-documents-of-a-mail-merge-operation}

Um documento mesclado é o resultado da operação Mail Merge quando você mescla o modelo com a fonte de dados. Todos os campos de mesclagem no documento mesclado são substituídos por dados reais da sua fonte de dados.

A imagem a seguir mostra um exemplo do modelo de mesclagem com campos mesclados antes de executar a operação Mail Merge.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

A imagem a seguir mostra um exemplo do documento mesclado de saída como resultado da execução da operação Mail Merge.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## Ver Também

- [Trabalhar com Mail Merge modelos em Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)

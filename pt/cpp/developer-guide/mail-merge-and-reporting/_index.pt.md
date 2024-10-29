---
title: Mail Merge e relatórios em C++
second_title: Aspose.Words para C++
articleTitle: Mail Merge e relatórios
linktitle: Mail Merge e relatórios
type: docs
description: "Mail Merge é um recurso popular para criar documentos rapidamente usando C++. Aspose.Words para C++ toma o padrão mail merge funcionalidade e avanços muitos passos à frente, transformando-o em uma solução de relatórios de pleno direito que permite criar documentos ainda mais complexos, como relatórios, catálogos, inventários e faturas."
keywords: "how to use mail merge c++"
weight: 30
url: /pt/cpp/mail-merge-and-reporting/
---

Mail Merge é um recurso popular para criar documentos de forma rápida e fácil, como cartas, etiquetas e envelopes. Aspose.Words permite gerar documentos a partir de modelos com mail merge fields.

A mail merge campo é um campo que você pode inserir em um mail merge modelo para incluir valores específicos de um registo de fonte de dados em documentos de saída. Por exemplo, você pode inserir um campo de mesclagem em um modelo de E-mail para que a saudação tenha o primeiro nome do destinatário em vez de um genérico "Olá!". Aspose.Words coloca dados de uma fonte externa, como um banco de dados ou arquivo, nesses campos e os Formata. O documento resultante é salvo na pasta especificada.

Aspose.Words toma o padrão mail merge funcionalidade e avanços muitos passos à frente, transformando-o em uma solução de relatórios de pleno direito que permite criar documentos ainda mais complexos, como relatórios, catálogos, inventários e faturas. Aqui estão algumas vantagens do Aspose.Words solução de relatórios:

- Relatórios de concepção em Microsoft Word usando o padrão mail merge campos
- Definir regiões no documento que estão crescendo, como linhas de ordem detalhadas
- Inserir imagens durante um mail merge
- Execute qualquer lógica personalizada, controle a formatação ou insira conteúdo complexo usando mail merge manipuladores de eventos
- Preencher documentos com dados de qualquer tipo de fonte de dados

{{% alert color="primary" %}}

O [Aspose.Words.MailMerging](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/) namespace é usado para trabalhar com fusão de correio.

{{% /alert %}}

## Mecanismo e principais componentes do Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words fornece a capacidade de carregar documentos em vários [supported formats](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) e, em seguida, permite que os usuários realizem um mail merge operação.

Normalmente, um documento carregado permite armazenar campos de mesclagem, por exemplo, um documento em DOCX formato. Mas existem formatos que não armazenam esses campos, por exemplo, TXT. Se Aspose.Words suporta o carregamento de tais formatos de arquivo, você pode adicionar os campos de mesclagem diretamente ao modelo do documento, salvar o documento em um conveniente [supported format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/), e executar o mail merge operação.

O mail merge operação irá fundir o seu *mail merge template* e o seu *data source* para gerar indivíduo *merged documents*.

## O que é um Mail Merge Modelo {#what-is-a-mail-merge-template}

O objectivo da aplicação de um mail merge a operação usando um modelo de mesclagem é simplificar o processo de criação de um documento.

Existem várias maneiras de criar e projetar um modelo de mesclagem. Você pode usar Microsoft Word, e o modelo de mesclagem não precisa ser um Microsoft Word modelo, que é um documento no DOT ou DOTX formato, pode ser um documento regular no DOC ou DOCX formato. Você precisa inserir alguns campos especiais chamados campos de mesclagem neste modelo em locais onde deseja que os dados de sua fonte de dados sejam inseridos posteriormente. Ou você pode criar programaticamente um modelo de mesclagem usando o [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) classe.

O modelo de mesclagem contém o texto principal, que deve ser o mesmo em todos os documentos de saída mail merge operação. Você pode usar qualquer formato para o seu modelo se houver a capacidade de adicionar campos de mesclagem a ele. Todos os campos de mesclagem em seu modelo serão preenchidos a partir de sua fonte de dados durante o mail merge operação.


## Ver Também

- [Trabalhar com mail merge modelos no Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)

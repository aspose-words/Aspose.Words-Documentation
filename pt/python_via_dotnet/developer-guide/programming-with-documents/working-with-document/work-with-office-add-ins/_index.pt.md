---
title: Trabalhe com suplementos do Office em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhe com suplementos do Office
linktitle: Trabalhe com suplementos do Office
description: "Aspose.Words para Python via .NET oferece várias classes para trabalhar com suplementos do Office. Você pode adicionar o painel de tarefas por meio da extensão da web e personalizar o painel e as propriedades da extensão."
type: docs
weight: 50
url: /pt/python-net/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Às vezes você pode querer dar acesso a controles de interface que executam código para modificar documentos. Aspose.Words API fornece o módulo [webextensions](https://reference.aspose.com/words/python-net/aspose.words.webextensions/), que concede diversas classes para personalizar elementos e atributos estendendo o vocabulário XML para representar suplementos do Office.

O namespace WebExtensions pode ser condicionalmente dividido em:

* Objetos para trabalhar com o painel de tarefas
* Objetos para trabalhar com extensões web

## Usando painéis de tarefas

Os painéis de tarefas são superfícies de interface exibidas no lado direito da janela no Microsoft Word. O painel de tarefas permite que os usuários acessem controles de interface que podem executar código para modificar documentos.

Por exemplo, usando Aspose.Words API, você pode adicionar um complemento do painel de tarefas e personalizar sua aparência.

## Usando extensões da web

As extensões da Web são ferramentas que expandem os recursos dos aplicativos do Office e interagem com o conteúdo dos documentos do Office. As extensões da Web fornecem funcionalidades adicionais aos clientes do Office para melhorar a experiência do usuário.

Aspose.Words fornece a capacidade de adicionar extensões da Web do tipo Painel de Tarefas usando as classes [WebExtension](https://reference.aspose.com/words/python-net/aspose.words.webextensions/webextension/) e [TaskPane](https://reference.aspose.com/words/python-net/aspose.words.webextensions/taskpane/) e também permite personalizar o painel e as propriedades da extensão.

O exemplo de código a seguir mostra como criar painéis de tarefas e adicionar painéis de tarefas de extensão da Web com propriedades básicas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-UsingWebExtensionTaskPanes.py" >}}

Para ver uma lista de suplementos do painel de tarefas, use a propriedade [web_extension_task_panes](https://reference.aspose.com/words/python-net/aspose.words/document/web_extension_task_panes/).

O exemplo de código a seguir mostra como obter essa lista de suplementos:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-GetListOfAddins.py" >}}

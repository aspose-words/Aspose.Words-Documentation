---
title: Trabalhe com suplementos do Office em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhe com suplementos do Office
linktitle: Trabalhe com suplementos do Office
description: "Aspose.Words para .NET fornece várias classes para trabalhar com suplementos do Office usando C#. Você pode adicionar o painel de tarefas por meio da extensão da web e personalizar o painel e as propriedades da extensão."
type: docs
weight: 50
url: /pt/net/work-with-office-add-ins/
---

Às vezes você pode querer dar acesso a controles de interface que executam código para modificar documentos. Aspose.Words API fornece o namespace `WebExtensions`, que concede várias classes para personalizar elementos e atributos que estendem o vocabulário XML para representar suplementos do Office.

O namespace WebExtensions pode ser condicionalmente dividido em:

* Objetos para trabalhar com o painel de tarefas
* Objetos para trabalhar com extensões web

## Usando painéis de tarefas

Os painéis de tarefas são superfícies de interface exibidas no lado direito da janela no Microsoft Word. O painel de tarefas permite que os usuários acessem controles de interface que podem executar código para modificar documentos.

Por exemplo, usando Aspose.Words API, você pode adicionar um complemento do painel de tarefas e personalizar sua aparência.

## Usando extensões da web

As extensões da Web são ferramentas que expandem os recursos dos aplicativos do Office e interagem com o conteúdo dos documentos do Office. As extensões da Web fornecem funcionalidades adicionais aos clientes do Office para melhorar a experiência do usuário.

Aspose.Words fornece a capacidade de adicionar extensões da Web do tipo Painel de Tarefas usando as classes [WebExtension](https://reference.aspose.com/words/net/aspose.words.webextensions/webextension/) e [TaskPane](https://reference.aspose.com/words/net/aspose.words.webextensions/taskpane/) e também permite personalizar o painel e as propriedades da extensão.

O exemplo de código a seguir mostra como criar painéis de tarefas e adicionar painéis de tarefas de extensão da Web com propriedades básicas:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

Para ver uma lista de suplementos do painel de tarefas, use a propriedade [WebExtensionTaskPanes](https://reference.aspose.com/words/net/aspose.words/document/webextensiontaskpanes/).

O exemplo de código a seguir mostra como obter essa lista de suplementos:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}

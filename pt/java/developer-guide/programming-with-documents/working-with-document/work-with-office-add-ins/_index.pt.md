---
title: Trabalho com complementos de escritório em Java
second_title: Aspose.Words para Java
articleTitle: Trabalho com complementos de escritório
linktitle: Trabalho com complementos de escritório
description: "Aspose.Words para Java fornece várias classes para trabalhar com Complementos de escritório. Você pode adicionar o painel de tarefas via extensão da web e personalizar as propriedades do painel e da extensão."
type: docs
weight: 50
url: /pt/java/work-with-office-add-ins/
---

Às vezes você pode querer dar acesso a controles de interface que executam o código para modificar documentos. Aspose.Words API fornece o `WebExtensions` namespace, que concede várias classes para personalizar elementos e atributos que estendem o vocabulário XML para representar o Office Add-ins.

O namespace WebExtensions pode ser dividido condicionalmente em:

* Objetos para trabalhar com o painel de tarefas
* Objetos para trabalhar com extensões web

## Usando Tarefas

Os painéis de tarefa são superfícies de interface que são exibidos no lado direito da janela em Microsoft Word. O painel de tarefas permite que os usuários acessem controles de interface que podem executar o código para modificar documentos.

Por exemplo, usando Aspose.Words API, você pode adicionar um painel de tarefas e personalizar sua aparência.

## Usando extensões da Web

As extensões Web são ferramentas que expandem as capacidades dos aplicativos do Office e interagem com o conteúdo do documento do Office. As extensões Web fornecem funcionalidades adicionais aos clientes do Office para melhorar a experiência do usuário.

Aspose.Words fornece a capacidade de adicionar extensões Web do tipo de painel de tarefas usando o [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) e [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) classes, e também permite que você personalize o painel e propriedades de extensão.

O exemplo de código a seguir mostra como criar painéis de tarefas e adicionar ao painel de tarefas de extensão web com propriedades básicas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

Para ver uma lista de complementos do painel de tarefas, use o [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes) propriedade.

O exemplo de código a seguir mostra como obter tal lista de add-ins:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}


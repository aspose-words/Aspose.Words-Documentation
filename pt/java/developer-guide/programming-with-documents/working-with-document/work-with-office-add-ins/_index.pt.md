---
title: Trabalhar com suplementos do Office em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhar com suplementos do Office
linktitle: Trabalhar com suplementos do Office
description: "Aspose.Words for Java fornece várias classes para trabalhar com suplementos do Office. Pode adicionar o painel de tarefas através da extensão web e personalizar as propriedades do painel e da extensão."
type: docs
weight: 50
url: /pt/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Às vezes, você pode querer dar acesso a controles de interface que executam código para modificar documentos. Aspose.Words API fornece o namespace `WebExtensions`, que concede várias classes para personalizar elementos e atributos que estendem o vocabulário XML para representar suplementos do Office.

WebExtensions o namespace pode ser dividido condicionalmente em:

* Objetos para trabalhar com o painel de Tarefas
* Objetos para trabalhar com extensões da web

## Utilização De Painéis De Tarefas

Os painéis de tarefas são superfícies de interface que são apresentadas no lado direito da janela em Microsoft Word. O painel de Tarefas permite aos utilizadores aceder a controlos de interface que podem executar código para modificar documentos.

Por exemplo, usando Aspose.Words API, você pode adicionar um suplemento do painel de tarefas e personalizar sua aparência.

## Utilização De Extensões Web

As extensões da Web são ferramentas que expandem os recursos dos aplicativos do Office e interagem com o conteúdo do documento do Office. As extensões da Web fornecem funcionalidades adicionais aos clientes do Office para melhorar a experiência do utilizador.

Aspose.Words fornece a capacidade de adicionar extensões da web do tipo painel de tarefas usando as classes [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) e [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) e também permite personalizar as propriedades do painel e da extensão.

O exemplo de código a seguir mostra como criar painéis de tarefas e Adicionar aos painéis de tarefas de extensão da web com propriedades básicas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

Para ver uma lista de suplementos do painel de Tarefas, utilize a propriedade [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes).

O exemplo de código a seguir mostra como obter essa lista de suplementos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}


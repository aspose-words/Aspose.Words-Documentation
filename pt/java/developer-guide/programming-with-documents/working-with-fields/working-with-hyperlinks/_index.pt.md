---
title: Trabalhando com Hyperlinks em Java
second_title: Aspose.Words para Java
articleTitle: Adicionar ou Modificar hiperlinks
linktitle: Adicionar ou Modificar hiperlinks
description: "Como adicionar um hiperlink em seu documento usando Java."
type: docs
weight: 50
url: /pt/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Um hiperlink em Microsoft Word os documentos são `HYPERLINK` campo. Em Aspose.Words, hiperlinks são implementados através do [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) classe.

## Insira um hiperlink

Use o [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) método para inserir um hiperlink no documento. Este método aceita três parâmetros:

1. Texto do link a ser exibido no documento
2. Destino de ligação (URL ou nome de um marcador dentro do documento)
3. Parâmetro booleano que deve ser true se `URL` é um nome de um marcador dentro de um documento

O **InsertHyperlink** método sempre adiciona apostrophes no início e fim da URL

{{% alert color="primary" %}}

Note que você precisa especificar formatação de fonte para o texto de exibição de hiperlink explicitamente usando o `Font` propriedade.

{{% /alert %}}

O exemplo de código a seguir mostra como inserir um hiperlink em um documento usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Substituir ou modificar hiperlinks

Hyperlink em Microsoft Word documentos é um campo. Um campo em um documento do Word, como dissemos anteriormente, é uma estrutura complexa que consiste em vários nós que incluem início de campo, código de campo, separador de campo, resultado de campo e fim de campo. Os campos podem ser aninhados, conter conteúdo rico e abranger vários parágrafos ou seções em um documento.

Para substituir ou modificar hiperlinks, é necessário encontrar os hiperlinks no documento e substituir seu texto, URLs ou ambos.

O exemplo de código a seguir mostra como encontrar todos os hiperlinks no documento do Word e altera seus `URL` e nome de exibição:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}

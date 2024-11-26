---
title: Trabalhar com hiperligações em Java
second_title: Aspose.Words para Java
articleTitle: Adicionar ou modificar hiperligações
linktitle: Adicionar ou modificar hiperligações
description: "Como adicionar um hiperlink ao seu documento usando Java."
type: docs
weight: 50
url: /pt/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Um hiperlink em Microsoft Word Documentos é o campo `HYPERLINK`. Em Aspose.Words, os hiperlinks são implementados através da classe [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/).

## Inserir uma hiperligação

Utilize o método [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) para inserir uma hiperligação no documento. Este método Aceita três parâmetros:

1. Texto da ligação a apresentar no documento
2. Destino do Link (URL ou o nome de um marcador dentro do documento)
3. Parâmetro booleano que deve ser verdadeiro se `URL` for o nome de um marcador dentro de um documento

O método **InsertHyperlink** sempre adiciona apóstrofos no início e no final do URL.

{{% alert color="primary" %}}

Observe que você precisa especificar a formatação da fonte para o texto de exibição do hiperlink explicitamente usando a propriedade `Font`.

{{% /alert %}}

O exemplo de código a seguir mostra como inserir um hiperlink em um documento usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Substituir ou modificar hiperligações

Hiperligação em Microsoft Word documentos é um campo. Um campo em um documento do Word, como dissemos anteriormente, é uma estrutura complexa que consiste em vários nós que incluem início de campo, Código de campo, separador de campo, Resultado de campo e fim de campo. Os campos podem ser aninhados, conter conteúdo rico e abranger vários parágrafos ou seções em um documento.

Para substituir ou modificar hiperligações, é necessário encontrar as hiperligações no documento e substituir o seu texto, URLs, ou ambos.

O exemplo de código a seguir mostra como encontrar todos os hiperlinks no documento do Word e altera seu `URL` e nome de exibição:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}

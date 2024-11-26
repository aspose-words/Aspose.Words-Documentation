---
title: Trabalhando com Markdown recursos em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com Markdown recursos
linktitle: Trabalhando com Markdown recursos
description: "Como implementar Markdown recursos usando Java. Todos os recursos são representados como estilos correspondentes ou formatação direta."
type: docs
weight: 420
url: /pt/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Este tópico discute como implementar Markdown recursos usando Aspose.Words. Markdown é uma forma simples de formatar texto sem formatação que pode ser facilmente convertido para HTML. Aspose.Words suporta os seguintes recursos Markdown:

- Posições
- Blockquotes
- Regras horizontais
- Ênfase ousada
- Ênfase em itálico

A implementação do recurso Markdown segue principalmente a especificação `CommonMark` em Aspose.Words API e todos os recursos são representados como estilos correspondentes ou formatação direta. O que significa que

- Negrito e itálico são representados como `Font.Bold` e `Font.Italic`.
- Os títulos são parágrafos com estilos Heading 1 - Heading 6.
- Aspas são parágrafos com "aspas" no nome do estilo.
- HorizontalRule é um parágrafo com uma forma `HorizontalRule`.

{{% alert color="primary" %}}

Existem nuances de traduzir Markdown para o modelo de objeto de Documento Aspose.Words (DOM), descrito no artigo [Traduzir Markdown para Document Object Model (DOM)](/words/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown documento com ênfase

Esta secção demonstra - lhe como produzir um documento markdown com ênfases conforme indicado abaixo:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

O trecho de código a seguir pode ser usado para produzir o documento markdown fornecido acima.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown documento com rubricas

Esta secção demonstra - lhe como produzir um documento markdown com os títulos indicados abaixo:

{{< highlight csharp >}}
The following produces headings:
# Heading1
## Heading2
### Heading3
#### Heading4
##### Heading5
###### Heading6
# **Bold Heading1**
{{< /highlight >}}

O trecho de código a seguir pode ser usado para produzir o documento markdown fornecido acima.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown documento com aspas em bloco

Esta secção demonstra - lhe como produzir um documento markdown com aspas em bloco, conforme indicado abaixo:

{{< highlight csharp >}}
We support blockquotes in Markdown:
>*Lorem*
>*ipsum*
>The quotes can be of any level and can be nested:
>>>Quote level 3
>>>
>>>>Nested quote level 4
>
>*Back to first level*
>### Headings are allowed inside Quotes
>{{< /highlight >}}

O trecho de código a seguir pode ser usado para produzir o documento markdown fornecido acima.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown documento com Regra Horizontal

Esta secção demonstra - lhe como produzir um documento markdown com uma regra Horizontal, conforme indicado abaixo:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

O trecho de código a seguir pode ser usado para produzir o documento markdown fornecido acima.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## Leitura de um documento Markdown

O snippet de código a seguir mostra como ler um documento markdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Especificar Markdown Opções De Gravação

Aspose.Words API fornece a classe [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) para especificar opções adicionais ao salvar um documento no formato Markdown.

O exemplo de código a seguir demonstrou como especificar várias opções de salvamento Markdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## Como alinhar o conteúdo dentro da tabela ao exportar para Markdown

Aspose.Words API fornece [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) enumeração que define as direções de alinhamento para alinhar o conteúdo em tabelas durante a exportação para o documento Markdown. O exemplo de código a seguir demonstra como alinhar o conteúdo dentro da tabela.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}

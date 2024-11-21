---
title: Trabalhar com Markdown Características em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhar com Markdown Características
linktitle: Trabalhar com Markdown Características
description: "Como implementar Markdown recursos usando Java. Todas as características são representadas como estilos correspondentes ou formatação direta."
type: docs
weight: 420
url: /pt/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Este tópico discute como implementar Markdown recursos usando Aspose.Words. Markdown é uma maneira simples de formatar texto simples que pode ser facilmente convertido em HTML. Aspose.Words suporta o seguinte Markdown características:

- Categoria
- Blockquotes
- Regras horizontais
- ênfase negrito
- ênfase itálica

O Markdown implementação de recursos principalmente segue a `CommonMark` especificação em Aspose.Words API e todas as características são representadas como estilos correspondentes ou formatação direta. O que significa que

- Bold e Itálico são representados como `Font.Bold` e `Font.Italic`
- Categoria são parágrafos com cabeçalho 1 - cabeçalho 6 estilos
- As citações são parágrafos com "Quote" no nome de estilo
- HorizontalRule é um parágrafo com um `HorizontalRule` forma.

{{% alert color="primary" %}}

Há nuances de tradução Markdown ao Aspose.Words Document Object Model (DOM), descrito no artigo [Traduzir comentário Markdown para Document Object Model (DOM)](/words/pt/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown Documento com ênfases

Esta seção mostra como produzir uma markdown documento com ênfases como indicado abaixo:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

O seguinte snippet de código pode ser usado para produzir o markdown documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown Documento com Categoria

Esta seção mostra como produzir uma markdown documento com cabeçalhos como indicado abaixo:

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

O seguinte snippet de código pode ser usado para produzir o acima dado markdown documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown Documento com citações de bloco

Esta seção mostra como produzir uma markdown documento com citações de bloco como dado abaixo:

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

O seguinte snippet de código pode ser usado para produzir o acima dado markdown documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown Documento com Regra Horizontal

Esta seção mostra como produzir uma markdown documento com Horizontal Regra como indicado abaixo:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

O seguinte snippet de código pode ser usado para produzir o markdown documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## Ler um Markdown Documento

O seguinte snippet de código mostra como ler um markdown documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Especificar Markdown Salvar opções

Aspose.Words API fornece [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) classe para especificar opções adicionais ao salvar um documento no Markdown formato.

O seguinte exemplo de código demonstrou como especificar vários Markdown salvar opções.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## Como Alinhar conteúdo dentro da tabela enquanto exporta para Markdown

Aspose.Words API fornece [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) enumeração que define direções de alinhamento para alinhar conteúdo em tabelas ao exportar para o Markdown documento. O exemplo de código a seguir demonstra como alinhar conteúdo dentro da tabela.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}

---
title: Trabalhando com recursos Markdown
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com recursos Markdown
linktitle: Trabalhando com recursos Markdown
description: "Como implementar recursos Markdown usando Python. Todos os recursos são representados como estilos correspondentes ou formatação direta."
type: docs
weight: 420
url: /pt/python-net/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Este tópico discute como implementar recursos Markdown usando Aspose.Words. Markdown é uma maneira simples de formatar texto simples que pode ser facilmente convertido em HTML. Aspose.Words oferece suporte aos seguintes recursos Markdown:

- Títulos
- Citações em bloco
- Regras horizontais
- Ênfase ousada
- Ênfase em itálico

A implementação do recurso Markdown segue principalmente a especificação `CommonMark` em Aspose.Words API e todos os recursos são representados como estilos correspondentes ou formatação direta. O que significa que

- Negrito e Itálico são representados como [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/font/bold/) e [Font.Italic](https://reference.aspose.com/words/python-net/aspose.words/font/italic/)
- Os títulos são parágrafos com estilos Título 1 - Título 6
- Aspas são parágrafos com "Citação" no nome do estilo
- HorizontalRule é um parágrafo com formato HorizontalRule.

{{% alert color="primary" %}}

Existem nuances na tradução de Markdown para Document Object Model Aspose.Words (DOM), descritas no artigo [Traduzir Markdown para Document Object Model (DOM)](/words/pt/python-net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Documento Markdown com ênfases

Esta seção demonstra como produzir um documento markdown com as ênfases fornecidas abaixo:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

O trecho de código a seguir pode ser usado para produzir o documento markdown fornecido acima.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Emphases.py" >}}

## Documento Markdown com títulos

Esta seção demonstra como produzir um documento markdown com os títulos fornecidos abaixo:

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

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}

## Documento Markdown com cotações em bloco

Esta seção demonstra como produzir um documento markdown com aspas em bloco, conforme mostrado abaixo:

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

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-BlockQuotes.py" >}}

## Documento Markdown com regra horizontal

Esta seção demonstra como produzir um documento markdown com regra horizontal conforme mostrado abaixo:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

O trecho de código a seguir pode ser usado para produzir o documento markdown fornecido acima.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}

## Lendo um documento Markdown

O trecho de código a seguir mostra como ler um documento markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-ReadMarkdownDocument.py" >}}

## Especifique opções de salvamento Markdown

Aspose.Words API fornece classe [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) para especificar opções adicionais ao salvar um documento no formato Markdown.

O exemplo de código a seguir demonstrou como especificar várias opções de salvamento Markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

## Como alinhar o conteúdo dentro da tabela ao exportar para Markdown

Aspose.Words API fornece enumeração [TableContentAlignment](https://reference.aspose.com/words/python-net/aspose.words.saving/tablecontentalignment/) que define direções de alinhamento para alinhar o conteúdo das tabelas durante a exportação para o documento Markdown. O exemplo de código a seguir demonstra como alinhar o conteúdo dentro da tabela.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-ExportIntoMarkdownWithTableContentAlignment.py" >}}

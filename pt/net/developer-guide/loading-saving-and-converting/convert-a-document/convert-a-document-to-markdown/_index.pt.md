---
title: Converter um documento para Markdown em C#
second_title: Aspose.Words para .NET
articleTitle: Converter um documento em Markdown
linktitle: Converter um documento em Markdown
type: docs
description: "Converta um documento em qualquer formato de carregamento compatível para Markdown e vice-versa usando C#."
keywords: how to convert a document to markdown c#
weight: 40
url: /pt/net/convert-a-document-to-markdown/
timestamp: 2024-07-10-08-10-45
---

Markdown é um formato popular usado para marcação de texto e posterior conversão para HTML, PDF, DOCX ou outros formatos. Muitos desenvolvedores escolhem esse formato para escrever documentação, preparar artigos para publicação em blogs, descrever projetos e assim por diante.

Markdown é muito popular porque é fácil de trabalhar com este formato e também pode ser simplesmente convertido para outros formatos. Por esse motivo, o Aspose.Words oferece a capacidade de converter um documento em [qualquer formato de carregamento suportado](https://reference.aspose.com/words/net/aspose.words/loadformat/) para Markdown e vice-versa – o Aspose.Words também oferece suporte ao [salvar formatos](https://reference.aspose.com/words/net/aspose.words/saveformat/) mais popular.

Agora, a funcionalidade para trabalhar com o formato Markdown está sendo desenvolvida ativamente para fornecer mais oportunidades de trabalho conveniente e confortável com documentos.

## Converter um documento

Para converter um documento em Markdown, você só precisa carregar um documento em qualquer formato compatível ou criar um novo programaticamente. Então você precisa salvar o documento no formato Markdown.

O exemplo de código a seguir mostra como converter DOCX em Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cs" >}}

Você também pode especificar a pasta física na qual deseja salvar as imagens ao exportar um documento para o formato Markdown. Por padrão, o Aspose.Words salva as imagens na mesma pasta onde o arquivo do documento foi salvo, mas você pode substituir esse comportamento usando a propriedade [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/).

Especificar uma pasta via **ImagesFolder** também é útil se você salvar um documento em um fluxo e o Aspose.Words não tiver uma pasta para salvar imagens.

Se o **ImagesFolder** especificado não existir, ele será criado automaticamente.

O exemplo de código a seguir mostra como especificar uma pasta para imagens ao salvar um documento em um fluxo:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cs" >}}

## Especifique as opções de salvamento ao converter para Markdown

Aspose.Words oferece a capacidade de usar a classe [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) para trabalhar com opções avançadas ao salvar um documento no formato Markdown. A maioria das propriedades herda ou sobrecarrega propriedades que já existem em outras classes de namespace [Aspose.Words.Saving](https://reference.aspose.com/words/net/aspose.words.saving/). Além delas, também foram adicionadas diversas propriedades específicas para o formato Markdown. Por exemplo, a propriedade [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) para controlar o alinhamento do conteúdo nas tabelas, ou [ImageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesavingcallback/) e [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) para controlar como as imagens são salvas ao converter um documento para o formato Markdown.

## Recursos Markdown suportados

Aspose.Words atualmente oferece suporte aos seguintes recursos Markdown, que seguem principalmente a especificação `CommonMark` no Aspose.Words API e são representados como estilos apropriados ou formatação direta:

* Os títulos são parágrafos com estilos Título 1 – Título 6
* Blockquotes são parágrafos com "Citação" no nome do estilo
* IndentedCode são parágrafos com "IndentedCode" no nome do estilo
* FencedCode são parágrafos com "FencedCode" no nome do estilo
* InlineCode são executados com "InlineCode" no nome do estilo `Font`
* As regras horizontais são parágrafos com formato `HorizontalRule`
* Ênfase ousada
* Ênfase em itálico
* Formatação tachado
* As listas são parágrafos numerados ou com marcadores
*As tabelas são representadas com a classe `Table`
*Os links são representados como a classe `FieldHyperlink`

O exemplo a seguir mostra como criar um documento com alguns estilos e salvá-lo em Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cs" >}}

O resultado deste exemplo de código é mostrado abaixo.

![markdown-example-aspose-words-net](/words/net/convert-a-document-to-markdown/markdown-example.png)

## Dicas úteis

Existem várias nuances e casos interessantes, tendo aprendido quais você poderá trabalhar com arquivos Markdown de forma mais flexível e conveniente. Por exemplo, existe a capacidade de usar:

* SetextHeading que permite criar títulos de várias linhas em Markdown, enquanto títulos regulares em Markdown só podem ser de uma linha. SetextHeading é baseado em um estilo "Título N" e seu nível só pode ser 1 ou 2. Se N em "Título N" for maior ou igual a 2, então o SetextHeading correspondente será baseado em "Título 2", caso contrário, em "Cabeçallho 1".
* Diferentes marcadores para o primeiro nível de listas com marcadores ("-", "+" ou "*", o marcador padrão é "-".) e diferentes tipos de numeração para listas ordenadas ("." ou ")", o o marcador padrão é ".").

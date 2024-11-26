---
title: Converter um documento em Markdown em Java
second_title: Aspose.Words para Java
articleTitle: Converter um documento em Markdown
linktitle: Converter um documento em Markdown
type: docs
description: "Converta um documento em qualquer formato de carregamento suportado para Markdown e vice-versa usando Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /pt/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown é um formato popular usado para marcar texto e está ainda convertendo para HTML, PDF, DOCX, ou outros formatos. Muitos desenvolvedores escolhem esse formato para escrever documentação, preparar artigos para publicação em blogs, descrever projetos e assim por diante.

Markdown é tão popular porque é fácil trabalhar com este formato, assim como pode ser simplesmente convertido para outros formatos. Por esta razão, Aspose.Words fornece a capacidade de converter um documento em [qualquer formato de carga suportado](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) para Markdown e vice – versa - Aspose.Words também suporta o mais popular [salvar formatos](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

Agora, a funcionalidade para trabalhar com o formato Markdown está sendo ativamente desenvolvida para fornecer mais oportunidades de trabalho conveniente e confortável com documentos.

## Converter um documento em Markdown

Para converter um documento em Markdown, basta carregar um documento em qualquer formato suportado ou criar um novo programaticamente. Em seguida, você precisa salvar o documento no formato Markdown.

O exemplo de código a seguir mostra como converter DOCX em Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Especifique as opções de salvamento ao converter para Markdown

Aspose.Words fornece a capacidade de usar a classe [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) para trabalhar com opções avançadas ao salvar um documento no formato Markdown. Além de outras propriedades herdadas ou de sobrecarga, também foram adicionadas várias propriedades específicas para o formato Markdown. Por exemplo, a propriedade [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) para controlar o alinhamento do conteúdo em tabelas ou [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) e [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) para controlar como as imagens são salvas ao converter um documento para o formato Markdown.

## Recursos Markdown Suportados

Aspose.Words atualmente suporta os seguintes recursos Markdown, que seguem principalmente a especificação `CommonMark` no Aspose.Words API e são representados como estilos apropriados ou formatação direta:

* Os títulos são parágrafos com estilos Heading 1 - Heading 6
* Blockquotes são parágrafos com "aspas" no nome do estilo
* IndentedCode são parágrafos com "IndentedCode " no nome do estilo
* FencedCode são parágrafos com "FencedCode " no nome do estilo
* InlineCode são executadas com "InlineCode " no nome do estilo `Font`
* Regras horizontais são parágrafos com a forma `HorizontalRule`
* Ênfase ousada
* Ênfase em itálico
* StrikeThrough formatação
* As listas são parágrafos numerados ou com marcadores
* As tabelas são representadas com a classe `Table`
* Os Links são representados como a classe `FieldHyperlink`

O exemplo a seguir mostra como criar um documento com alguns estilos e salvá-lo em Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

O resultado deste exemplo de código é mostrado abaixo.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## Dicas Úteis

Existem várias nuances e casos interessantes, tendo aprendido que você pode trabalhar com Markdown arquivos de forma mais flexível e conveniente. Por exemplo, existe a capacidade de usar:

* SetextHeading que permite criar títulos de várias linhas em Markdown, enquanto os títulos regulares em Markdown só podem ser de uma única linha. SetextHeading baseia-se num estilo "título N" e o seu nível só pode ser 1 ou 2. Se N na " posição N "for maior ou igual a 2, então o SetextHeading correspondente é baseado em" Heading 2", caso contrário, em"Heading 1".
* Marcadores diferentes para o primeiro nível de listas com marcadores ("-", "+" ou "*", o marcador predefinido é "-".) e diferentes tipos de numeração para listas ordenadas ("." ou ")", o marcador predefinido é ".").

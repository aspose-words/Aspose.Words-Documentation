---
title: Converter um documento em Markdown Em C++
second_title: Aspose.Words para C++
articleTitle: Converter um documento em Markdown
linktitle: Converter um documento em Markdown
type: docs
description: "Converta um documento em qualquer formato de carregamento suportado para Markdown e vice-versa usando C++."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /pt/cpp/convert-a-document-to-markdown/
---

Markdown é um formato popular usado para marcar texto e sua posterior conversão para HTML, PDF, DOCX, ou outros formatos. Muitos desenvolvedores escolhem esse formato para escrever documentação, preparar artigos para publicação em blogs, descrever projetos e assim por diante.

Markdown é tão popular porque é fácil trabalhar com este formato, assim como pode ser simplesmente convertido para outros formatos. Por esta razão, Aspose.Words fornece a capacidade de converter um documento em [any supported load format](https://reference.aspose.com/words/cpp/aspose.words/) para Markdown e vice – versa - Aspose.Words também suporta o mais popular [save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

Agora, a funcionalidade para trabalhar com o formato Markdown está sendo ativamente desenvolvida para fornecer mais oportunidades de trabalho conveniente e confortável com documentos.

## Converter um documento

Para converter um documento em Markdown, basta carregar um documento em qualquer formato suportado ou criar um novo programaticamente. Em seguida, você precisa salvar o documento no formato Markdown.

O exemplo de código a seguir mostra como converter DOCX em Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

Você também pode especificar a pasta física na qual deseja salvar as imagens ao exportar um documento para o formato Markdown. Por padrão, Aspose.Words salva imagens na mesma pasta onde o arquivo de documento é salvo, mas você pode substituir esse comportamento usando a propriedade [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/).

Especificar uma pasta via **ImagesFolder** também é útil se você salvar um documento em um fluxo e Aspose.Words não tiver uma pasta para salvar imagens.

Se o **ImagesFolder** especificado não existir, ele será criado automaticamente.

O exemplo de código a seguir mostra como especificar uma pasta para imagens ao salvar um documento em um fluxo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## Especifique as opções de salvamento ao converter para Markdown

Aspose.Words fornece a capacidade de usar a classe [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) para trabalhar com opções avançadas ao salvar um documento no formato Markdown. A maioria das propriedades está herdando ou sobrecarregando propriedades que já existem em outras classes de Namespace [Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/). Além deles, também foram adicionadas várias propriedades específicas para o formato Markdown. Por exemplo, a propriedade [TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/) para controlar o alinhamento do conteúdo em tabelas ou [ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/) e [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) para controlar como as imagens são salvas ao converter um documento para o formato Markdown.

## Recursos Markdown Suportados

Aspose.Words Atualmente suporta os seguintes recursos Markdown, que seguem principalmente a especificação `CommonMark` no Aspose.Words API e são representados como estilos apropriados ou formatação direta:

* Os títulos são parágrafos com estilos de Título 1 - Título 6
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

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

O resultado deste exemplo de código é mostrado abaixo.

![markdown-example-aspose-words-cpp](markdown-example.png)

## Dicas Úteis

Existem várias nuances e casos interessantes, tendo aprendido que você pode trabalhar com Markdown arquivos de forma mais flexível e conveniente. Por exemplo, existe a capacidade de usar:

* SetextHeading que permite criar títulos de várias linhas em Markdown, enquanto os títulos regulares em Markdown só podem ser de uma única linha. SetextHeading é baseado em um estilo "título N", e seu nível só pode ser 1 ou 2. Se N na " rubrica N "for maior ou igual a 2, então o SetextHeading correspondente baseia-se na" rubrica 2", caso contrário, na"rubrica 1".
* Marcadores diferentes para o primeiro nível de listas com marcadores ("-", "+" ou "*", o marcador predefinido é "-".) e diferentes tipos de numeração para listas ordenadas ("." ou ")", o marcador predefinido é ".").

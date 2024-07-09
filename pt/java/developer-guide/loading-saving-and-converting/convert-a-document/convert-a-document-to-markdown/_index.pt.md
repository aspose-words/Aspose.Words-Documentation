---
title: Converter um documento para Markdown em Java
second_title: Aspose.Words para Java
articleTitle: Converter um documento para Markdown
linktitle: Converter um documento para Markdown
type: docs
description: "Converta um documento em qualquer formato de carga suportado Markdown e vice-versa usando Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /pt/java/convert-a-document-to-markdown/
---

Markdown é um formato popular usado para marcar texto e é mais conversão para HTML, PDF, DOCX, ou outros formatos. Muitos desenvolvedores escolhem este formato para escrever documentação, preparando artigos para publicação em blogs, descrevendo projetos e assim por diante.

Markdown é tão popular porque é fácil trabalhar com este formato, bem como pode ser bastante simplesmente convertido para outros formatos. Por esta razão, Aspose.Words fornece a capacidade de converter um documento em [qualquer formato de carga](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) para Markdown e vice-versa – Aspose.Words também suporta o mais popular [- Não](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

Agora a funcionalidade para trabalhar com o Markdown formato está sendo desenvolvido ativamente para fornecer-lhe mais oportunidades para o trabalho conveniente e confortável com documentos.

## Converter um documento para Markdown

Para converter um documento para <span notrans="<span notrans=" Markdown"=""></span>, você só precisa carregar um documento em qualquer formato suportado ou criar um novo programaticamente. Então você precisa salvar o documento para Markdown formato.

O seguinte exemplo de código mostra como converter DOCX para Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Especificar Salvar opções ao converter para Markdown

Aspose.Words fornece a capacidade de usar o [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) classe para trabalhar com opções avançadas ao salvar um documento para Markdown formato. Além de outras propriedades herdadas ou sobrecarga, um número de propriedades específicas para Markdown formato também foram adicionados. Por exemplo, o [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) propriedade para controlar o alinhamento de conteúdo em tabelas ou [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) e [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) para controlar como as imagens são salvas ao converter um documento para Markdown formato.

## Apoiado Markdown Características

Aspose.Words atualmente suporta o seguinte Markdown características, que seguem principalmente o `CommonMark` especificação na Aspose.Words API e são representados como estilos apropriados ou formatação direta:

* Categoria são parágrafos com Cabeçalho 1 – Cabeçalho 6 estilos
* Blockquotes são parágrafos com "Quote" no nome de estilo
* IndentedCode são parágrafos com "IndentedCode" no nome de estilo
* Fenced Código são parágrafos com "FencedCode" no nome de estilo
* InlineCode são executados com "InlineCode" no `Font` nome de estilo
* Regras horizontais são parágrafos com o `HorizontalRule` forma
* ênfase negrito
* ênfase itálica
* StrikeThrough formatação
* As listas são numeradas ou marcadores
* As tabelas são representadas com o `Table` classe
* Os links são representados como `FieldHyperlink` classe

O exemplo a seguir mostra como criar um documento com alguns estilos e salvá-lo para Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

O resultado deste exemplo de código é mostrado abaixo.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## Dicas úteis

Existem várias nuances e casos interessantes, tendo aprendido com que você pode trabalhar Markdown arquivos de forma mais flexível e conveniente. Por exemplo, há a capacidade de usar:

* SetextHeading que permite criar cabeçalhos multi-linha em <span notrans="<span notrans=" Markdown"=""></span>, enquanto cabeçalhos regulares Markdown só pode ser uma linha única. SetextHeading é baseado em um estilo "Heading N", e seu nível só pode ser 1 ou 2. Se N em "Heading N" for maior ou igual a 2, então o SetextHeading correspondente é baseado em "Heading 2", caso contrário em "Heading 1".
* Diferentes marcadores para o primeiro nível de listas de marcadores ("-", "+" ou "*", o marcador padrão é "-".) e diferentes tipos de numeração para listas ordenadas ("." ou ")", o marcador padrão é ".").

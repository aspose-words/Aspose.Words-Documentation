---
title: Especifique as opções de Layout em Java
second_title: Aspose.Words para Java
articleTitle: Especificar Opções De Disposição
linktitle: Especificar Opções De Disposição
description: "Crie documentos de saída com vários layouts, dependendo dos parâmetros especificados no documento usando Java."
type: docs
weight: 10
url: /pt/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words permite criar documentos de saída com vários layouts, dependendo dos parâmetros especificados na propriedade [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) do **Document**. Esta propriedade assemelha-se a algumas das opções de menu da interface de Utilizador Microsoft Word descritas neste artigo.

Para obter uma lista completa de parâmetros, como [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) para calcular números de página em uma seção contínua que reinicia a numeração de página ou [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) para ignorar a opção de compatibilidade "usar métricas da Impressora para definir o documento", consulte a página de classe [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/).

## Marcas De Formatação

Aspose.Words permite gerir marcas de formatação utilizando as seguintes propriedades:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) - um valor `Boolean`, que especifica se o texto oculto é renderizado.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) - um valor `Boolean`, que especifica se os caracteres da marca do parágrafo são renderizados.

A página descrita no exemplo abaixo contém três parágrafos. O segundo está escondido. Um usuário pode alterar a opção **ShowHiddenText** para exibir este texto oculto na página. Além disso, cada parágrafo tem uma marca de parágrafo no final. A marca de parágrafo geralmente não é visível, a menos que a propriedade **ShowParagraphMarks** seja definida para renderizá-la.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

Em Microsoft Word, estes parâmetros são definidos utilizando a caixa de diálogo "Ficheiro de Opções de arquivo de Opções de exibição" da seguinte forma:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## Observações e Revisões

Com Aspose.Words, você pode renderizar comentários de documentos com a mesma aparência de Microsoft Word. Para especificar se os comentários são renderizados, use a propriedade [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/).

Em Microsoft Word, este parâmetro é definido usando a caixa de diálogo "Opções de alterações de faixa", conforme mostrado abaixo:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

Além disso, Aspose.Words permite exibir revisões em um documento. Use a propriedade [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) da classe **LayoutOptions** para definir se as revisões do documento são exibidas. Para controlar a sua aparência (cor de realce da revisão, cor da barra de revisão, etc.), use a classe [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/).

Você também pode exibir as revisões como comentários ao conteúdo. Para esse fim, use a propriedade [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) e o valor [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/).

O exemplo de código a seguir mostra como personalizar a exibição de revisões:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

A imagem abaixo mostra como Aspose.Words renderiza comentários e as revisões de exclusão:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Modelador de texto para renderização tipográfica avançada

A propriedade [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) permite definir a funcionalidade de modelagem de texto, bem como o suporte a recursos `OpenType`.

Use a modelagem de texto para processamento de documentos nos seguintes casos principais:

- Um documento usa Kerning, Modelagem Numeral, formas Numerais ou ligaduras.
- Um documento usa Scripts complexos, como árabe, Khmer, Tailandês, etc.

{{% alert color="primary" %}}

A modelagem de texto será habilitada somente ao exportar um documento para PDF ou XPS.

{{% /alert %}}

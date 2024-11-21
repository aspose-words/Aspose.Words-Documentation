---
title: Especifique opções de layout em C#
second_title: Aspose.Words para .NET
articleTitle: Especifique opções de layout
linktitle: Especifique opções de layout
description: "Especifique opções de layout para vários layouts de documentos usando C#."
type: docs
weight: 10
url: /pt/net/specify-layout-options/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words permite criar documentos de saída com vários layouts, dependendo dos parâmetros especificados nas propriedades da classe [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/). Algumas dessas propriedades se assemelham a algumas opções de menu da interface do usuário Microsoft Word – elas serão descritas neste artigo.

Para obter uma lista completa de parâmetros como [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) para calcular números de páginas em uma seção contínua que reinicia a numeração de páginas ou [IgnorePrinterMetrics](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) para ignorar a opção de compatibilidade "Usar métricas da impressora para organizar o documento", consulte a página da classe [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/).

## Marcas de formatação

Aspose.Words permite gerenciar marcas de formatação usando as seguintes propriedades:

- [ShowHiddenText](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showhiddentext/) – um valor `Boolean`, que especifica se o texto oculto é renderizado.
- [ShowParagraphMarks](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showparagraphmarks/) – um valor `Boolean`, que especifica se os caracteres de marca de parágrafo serão renderizados.

A página representada no exemplo abaixo contém três parágrafos. O segundo está oculto. Um usuário pode alterar a opção **ShowHiddenText** para exibir esse texto oculto na página. Além disso, cada parágrafo possui uma marca de parágrafo no final. A marca de parágrafo geralmente não fica visível, a menos que a propriedade **ShowParagraphMarks** esteja definida para renderizá-la.

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

No Microsoft Word, esses parâmetros são definidos usando a caixa de diálogo "Arquivo → Opções → Exibir" da seguinte forma:

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## Comentários e revisões

Com Aspose.Words, você pode renderizar comentários de documentos que terão a mesma aparência de Microsoft Word. Para especificar se os comentários serão renderizados, use a propriedade [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/).

No Microsoft Word, este parâmetro é definido usando a caixa de diálogo "Track Changes Options", conforme mostrado abaixo:

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

Além disso, Aspose.Words permite exibir revisões em um documento. Utilize a propriedade [RevisionOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/revisionoptions/) da classe **LayoutOptions** para definir se as revisões do documento serão exibidas. Para controlar sua aparência (cor de destaque da revisão, cor da barra de revisão, etc.), use a classe [RevisonOptions](https://reference.aspose.com/words/net/aspose.words.layout/revisionoptions/).

Você também pode exibir as revisões como comentários ao conteúdo. Para isso, utilize a propriedade [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) e o valor [ShowInBalloons](https://reference.aspose.com/words/net/aspose.words.layout/commentdisplaymode/).

O exemplo de código a seguir mostra como personalizar a exibição de revisões:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

A imagem abaixo mostra como o Aspose.Words renderiza os comentários e as revisões de exclusão:

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comentários_e_revisions_example_aspose_words_net" style="width:800px"/>

## Modelador de texto para renderização tipográfica avançada

A propriedade [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/) permite definir a funcionalidade de modelagem de texto, bem como o suporte aos recursos `OpenType`.

Use modelagem de texto para processamento de documentos nos seguintes casos principais:

- Um documento usa Kerning, Numeral Shaping, Numeral Forms ou Ligatures.
- Um documento usa scripts complexos, como árabe, Khmer, tailandês, etc.

{{% alert color="primary" %}}

A modelagem de texto será habilitada somente ao exportar um documento para PDF ou XPS.

{{% /alert %}}

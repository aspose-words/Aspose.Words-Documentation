---
title: Especifique opções de layout em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Especifique opções de layout
linktitle: Especifique opções de layout
description: "Especifique opções de layout para vários layouts de documentos usando Python."
type: docs
weight: 10
url: /pt/python-net/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words permite criar documentos de saída com vários layouts, dependendo dos parâmetros especificados nas propriedades da classe [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/). Algumas dessas propriedades se assemelham a algumas opções de menu da interface do usuário Microsoft Word – elas serão descritas neste artigo.

Para obter uma lista completa de parâmetros como [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) para calcular números de páginas em uma seção contínua que reinicia a numeração de páginas ou [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) para ignorar a opção de compatibilidade "Usar métricas da impressora para organizar o documento", consulte a página da classe [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/).

## Marcas de formatação

Aspose.Words permite gerenciar marcas de formatação usando as seguintes propriedades:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) – um valor `Boolean`, que especifica se o texto oculto é renderizado.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) – um valor `Boolean`, que especifica se os caracteres de marca de parágrafo serão renderizados.

A página representada no exemplo abaixo contém três parágrafos. O segundo está oculto. Um usuário pode alterar a opção [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) para exibir esse texto oculto na página. Além disso, cada parágrafo possui uma marca de parágrafo no final. A marca de parágrafo geralmente não fica visível, a menos que a propriedade [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) esteja definida para renderizá-la.

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

No Microsoft Word, esses parâmetros são definidos usando a caixa de diálogo "Arquivo → Opções → Exibir" da seguinte forma:

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## Comentários e revisões

Com Aspose.Words, você pode renderizar comentários de documentos que terão a mesma aparência de Microsoft Word. Para especificar se os comentários serão renderizados, use a propriedade [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/).

No Microsoft Word, este parâmetro é definido usando a caixa de diálogo "Track Changes Options", conforme mostrado abaixo:

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

Além disso, Aspose.Words permite exibir revisões em um documento. Utilize a propriedade [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) da classe [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) para definir se as revisões do documento serão exibidas. Para controlar sua aparência (cor de destaque da revisão, cor da barra de revisão, etc.), use a classe [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/).

Você também pode exibir as revisões como comentários ao conteúdo. Para isso, utilize a propriedade [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) e o valor [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons).

O exemplo de código a seguir mostra como personalizar a exibição de revisões:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

A imagem abaixo mostra como o Aspose.Words renderiza os comentários e as revisões de exclusão:

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comentários_e_revisions_example_aspose_words_net" style="width:800px"/>

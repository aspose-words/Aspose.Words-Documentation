---
title: Especificar Opções de Layout em Java
second_title: Aspose.Words para Java
articleTitle: Especificar Opções de Layout
linktitle: Especificar Opções de Layout
description: "Criar documentos de saída com vários layouts, dependendo dos parâmetros especificados no Documento usando Java."
type: docs
weight: 10
url: /pt/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words permite criar documentos de saída com vários layouts, dependendo dos parâmetros especificados no [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) propriedade da **Document**. Esta propriedade assemelha-se a alguns dos Microsoft Word opções de menu de interface de usuário descritas neste artigo.

Para uma lista completa de parâmetros como [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) para calcular números de página em uma seção contínua que reinicia a numeração de página, ou [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) para ignorar a opção de compatibilidade "Usar métricas de impressora para expor documentos", ver o [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) página de classe.

## Marcas de formatação

Aspose.Words permite gerenciar marcas de formatação usando as seguintes propriedades:

- Não. [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) – um `Boolean` valor, que especifica se o texto oculto é renderizado.
- Não. [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) – um `Boolean` valor, que especifica se os caracteres de marca de parágrafo são renderizados.

A página descrita no exemplo abaixo contém três parágrafos. O segundo está escondido. Um usuário pode alterar **ShowHiddenText** opção para exibir este texto oculto na página. Além disso, cada parágrafo tem uma marca de parágrafo no final. A marca de parágrafo geralmente não é visível a menos que o **ShowParagraphMarks** propriedade está definida para renderizá-lo.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

Em Microsoft Word, estes parâmetros são definidos usando a caixa de diálogo "File → Opções → Display" da seguinte forma:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## Comentários e revisões

Com Aspose.Words, você pode renderizar comentários de documentos que serão parecidos com o Microsoft Word. Para especificar se os comentários são renderizados, use o [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) propriedade.

Em Microsoft Word, este parâmetro é definido usando a caixa de diálogo "Track Changes Options", como mostrado abaixo:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

Também, Aspose.Words permite exibir revisões em um documento. Use o [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) propriedade da **LayoutOptions** classe para definir se as revisões do documento são exibidas. Para controlar sua aparência (revisão destacando cor, cor da barra de revisão, etc), use o [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) classe.

Você também pode ter revisões exibidas como comentários ao conteúdo. Com esta finalidade, use o [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) propriedade e [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) valor.

O exemplo de código a seguir mostra como personalizar revisões exibir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

A imagem abaixo mostra como Aspose.Words renderiza comentários e as revisões Excluir:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Formador de texto para renderização de tipo avançado

O [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) propriedade permite que você defina a funcionalidade de formatação de texto, bem como a `OpenType` suporte de recursos.

Use a modelagem de texto para processamento de documentos nos seguintes casos principais:

- Um documento usa Kerning, Numeral Shaping, Numeral Forms ou Ligatures.
- Um documento usa scripts complexos, como árabe, Khmer, tailandês, etc.

{{% alert color="primary" %}}

A formação de texto só será habilitada quando exportar um documento para PDF ou XPS.

{{% /alert %}}

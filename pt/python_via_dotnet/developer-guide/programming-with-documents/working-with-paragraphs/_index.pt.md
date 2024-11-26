---
title: Trabalhando com parágrafos em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com parágrafos
linktitle: Trabalhando com parágrafos
description: "Insira um parágrafo e especifique sua formatação em um documento usando Python."
type: docs
weight: 210
url: /pt/python-net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Um parágrafo é um conjunto de caracteres combinados em um bloco lógico e terminando com um caractere especial – uma *quebra de parágrafo*. No Aspose.Words, um parágrafo é representado pela classe [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

## Insira um parágrafo

Para inserir um novo parágrafo no documento, na verdade, você precisa inserir um caractere de quebra de parágrafo nele. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) também insere uma sequência de texto no documento, mas além disso adiciona uma quebra de parágrafo.

A formatação atual da fonte também é especificada pela propriedade [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) e a formatação atual do parágrafo é determinada pela propriedade [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/).

O exemplo de código a seguir mostra como inserir um parágrafo em um documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Parágrafo de formato

A formatação atual do parágrafo é representada por um objeto [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) retornado pela propriedade [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/). Este objeto encapsula várias propriedades de formatação de parágrafo disponíveis em Microsoft Word. Você pode redefinir facilmente a formatação do parágrafo para o estilo Normal, alinhado à esquerda, sem recuo, sem espaçamento, sem bordas e sem sombreamento, chamando [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/).

O exemplo de código a seguir mostra como definir a formatação de parágrafo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## Aplicar um estilo de parágrafo

Alguns objetos de formatação, como [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) ou [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/), suportam estilos. Um único estilo interno ou definido pelo usuário é representado por um objeto [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) que contém as propriedades de estilo correspondentes, como nome, estilo base, fonte e formatação de parágrafo do estilo e assim por diante.

Além disso, um objeto [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) fornece a propriedade [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) que retorna um identificador de estilo independente de localidade representado por um valor de enumeração [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/). A questão é que os nomes dos estilos integrados no Microsoft Word são localizados para diferentes idiomas. Usando um identificador de estilo, você pode encontrar o estilo correto, independentemente do idioma do documento. Os valores de enumeração correspondem aos estilos integrados do Microsoft Word, como Normal, Heading 1, Heading 2 etc. Todos os estilos definidos pelo usuário recebem o valor [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user)

O exemplo de código a seguir mostra como aplicar um estilo de parágrafo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Insira o separador de estilo para colocar diferentes estilos de parágrafo

Um separador de estilo pode ser adicionado ao final de um parágrafo usando o atalho de teclado Ctrl + Alt + Enter no MS Word. Este recurso permite dois estilos de parágrafo diferentes usados em um parágrafo impresso lógico. Se você deseja que algum texto do início de um determinado título apareça em um Índice, mas não deseja que o título inteiro esteja no Índice, você pode usar este recurso

O exemplo de código a seguir mostra como inserir um separador de estilo para acomodar diferentes estilos de parágrafo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Identificar o separador de estilo de parágrafo

Aspose.Words fornece uma propriedade pública [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) em uma classe [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) que permite identificar o Parágrafo Separador de Estilo conforme mostrado no exemplo abaixo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Aplicar bordas e sombreamento a um parágrafo

As fronteiras são representadas pelo [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/). Esta é uma coleção de objetos [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) que são acessados por índice ou por tipo de borda. O tipo de borda é representado pela enumeração [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/). Alguns valores da enumeração são aplicáveis a vários ou apenas a um elemento do documento. Por exemplo, [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) é aplicável a um parágrafo ou célula de tabela, enquanto [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) especifica a borda diagonal apenas em uma célula de tabela.

Tanto a coleção de bordas quanto cada borda separada possuem atributos semelhantes, como cor, estilo de linha, largura da linha, distância do texto e sombra opcional. Eles são representados por propriedades com o mesmo nome. Você pode obter diferentes tipos de borda combinando os valores das propriedades. Além disso, os objetos [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) e [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) permitem redefinir esses valores para o padrão chamando o método [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/).

{{% alert color="primary" %}}

Observe que quando as propriedades da borda são redefinidas para seus valores padrão, a borda fica invisível.

{{% /alert %}}

Aspose.Words também possui a classe [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) que contém atributos de sombreamento para elementos do documento. Você pode definir a textura de sombreamento desejada e as cores que serão aplicadas ao fundo e ao primeiro plano do elemento.

A textura de sombreamento é definida com um valor de enumeração [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) que permite a aplicação de vários padrões ao objeto [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/). Por exemplo, para definir uma cor de fundo para um elemento do documento, utilize o valor [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) e defina a cor de sombreamento do primeiro plano conforme apropriado. O exemplo abaixo mostra como aplicar bordas e sombreamento a um parágrafo.

O exemplo de código a seguir mostra como aplicar bordas e sombreamento a um parágrafo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}

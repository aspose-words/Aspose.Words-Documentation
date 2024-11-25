---
title: Trabalhar com parágrafos em C++
second_title: Aspose.Words para C++
articleTitle: Trabalhar com parágrafos
linktitle: Trabalhar com parágrafos
description: "Práticas de manipulação de nós de parágrafo usando C++."
type: docs
weight: 210
url: /pt/cpp/working-with-paragraphs/
timestamp: 2024-01-30-16-22-34
---

Um parágrafo é um conjunto de caracteres combinados em um bloco lógico e terminando com um caractere especial – a *paragraph break*. Em Aspose.Words, um parágrafo é representado pela classe [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/).

## Inserir um parágrafo

Para inserir um novo parágrafo no documento, na verdade, você precisa inserir um caractere de quebra de parágrafo nele. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) insere não apenas uma sequência de texto no documento, mas também adiciona uma quebra de parágrafo.

A formatação de fonte atual também é especificada pela propriedade [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) e a formatação de parágrafo atual é determinada pela propriedade [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/). Na próxima seção, entraremos em mais detalhes sobre a formatação de parágrafos.

O exemplo de código a seguir mostra como inserir um parágrafo em um documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Formato Do Parágrafo

A formatação de parágrafo atual é representada por um objeto **ParagraphFormat** que é retornado pela propriedade **ParagraphFormat**. Este objeto encapsula várias propriedades de formatação de parágrafo disponíveis em Microsoft Word. Você pode facilmente redefinir a formatação do parágrafo para o estilo padrão normal, alinhado à esquerda sem recuo, sem espaçamento, sem bordas e sem sombreamento chamando [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/).

O exemplo de código a seguir mostra como definir a formatação do parágrafo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## Aplicar O Estilo Do Parágrafo

Alguns objetos de formatação, como Font ou ParagraphFormat, suportam estilos. Um único estilo interno ou definido pelo Usuário é representado por um objeto `Style` que contém as propriedades de estilo correspondentes, como nome, Estilo base, fonte e formatação de parágrafo do estilo, e assim por diante.

Além disso, um objeto **Style** fornece a propriedade [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/) que retorna um identificador de estilo independente de localidade representado pelo valor de enumeração **StyleIdentifier**. A questão é que os nomes dos estilos incorporados em Microsoft Word estão localizados para diferentes idiomas. Usando um identificador de estilo, você pode encontrar o estilo correto, independentemente do idioma do documento. Os valores de enumeração correspondem aos estilos incorporados Microsoft Word, tais como *Normal*, *Heading 1*, *Heading 2* etc. A todos os estilos definidos pelo Utilizador é atribuído o valor **StyleIdentifier.User**.

O exemplo de código a seguir mostra como aplicar um estilo de parágrafo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## Inserir Separador de estilo para colocar diferentes estilos de parágrafo

O separador de estilos pode ser adicionado ao final de um parágrafo utilizando o atalho de teclado Ctrl + Alt + Enter na palavra MS. Este recurso permite dois estilos de parágrafo diferentes usados em um parágrafo impresso lógico. Se pretender que algum texto do início de um título específico apareça num Sumário, mas não pretender que o título inteiro no sumário, pode utilizar esta funcionalidade.

O exemplo de código a seguir mostra como inserir um separador de estilo para acomodar diferentes estilos de parágrafo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Identificar O Separador De Estilo De Parágrafo

` `Aspose.Words fornece uma propriedade pública [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) em uma classe `Paragraph` permite identificar o Parágrafo separador de estilo, conforme mostrado no exemplo abaixo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## Aplicar bordas e sombreamento a um parágrafo

As bordas em Aspose.Words são representadas pela classe [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/) – Esta é uma coleção de objetos [Border](https://reference.aspose.com/words/cpp/aspose.words/border/) que são acessados por índice ou por tipo de borda. O tipo de borda é representado pela enumeração `BorderType`. Alguns valores da enumeração são aplicáveis a vários ou apenas a um elemento do documento. Por exemplo, **BorderType.Bottom** é aplicável a um parágrafo ou célula de tabela, enquanto **BorderType.DiagonalDown** especifica a borda diagonal apenas em uma célula de tabela.

Tanto a coleção de bordas quanto cada borda separada têm atributos semelhantes, como cor, estilo de linha, largura da linha, distância do texto e sombra opcional. Eles são representados por propriedades com o mesmo nome. Você pode obter diferentes tipos de borda combinando os valores da propriedade. Além disso, os objetos **BorderCollection** e **Border** permitem redefinir esses valores para o padrão chamando o método [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Observe que quando as propriedades da borda são redefinidas para seus valores padrão, a borda fica invisível.

{{% /alert %}}

Aspose.Words também tem a classe [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/) contém atributos de sombreamento para elementos de Documento. Você pode definir a textura de sombreamento desejada e as cores aplicadas ao plano de fundo e ao primeiro plano do elemento.

A textura de sombreamento é definida com um valor de enumeração [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) que permite a aplicação de vários padrões ao objeto **Shading**. Por exemplo, para definir uma cor de fundo para um elemento de Documento, use o valor [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) e defina a cor de sombreamento de primeiro plano conforme apropriado.

O exemplo de código a seguir mostra como aplicar bordas e sombreamento a um parágrafo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
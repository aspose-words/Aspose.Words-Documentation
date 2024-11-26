---
title: Trabalhando com parágrafos em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhando com parágrafos
linktitle: Trabalhando com parágrafos
description: "Insira um parágrafo em um documento C#. Defina estilos de parágrafo em C#. Trabalhe com o separador de estilo de parágrafo C#. Manipule o nó do parágrafo usando C#."
type: docs
weight: 210
url: /pt/net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Um parágrafo é um conjunto de caracteres combinados em um bloco lógico e terminando com um caractere especial – uma *quebra de parágrafo*. No Aspose.Words, um parágrafo é representado pela classe [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/).

## Insira um parágrafo

Para inserir um novo parágrafo no documento, na verdade, você precisa inserir um caractere de quebra de parágrafo nele. [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) insere não apenas uma sequência de texto no documento, mas também adiciona uma quebra de parágrafo.

A formatação atual da fonte também é especificada pela propriedade [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) e a formatação atual do parágrafo é determinada pela propriedade [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/). Na próxima seção, entraremos em mais detalhes sobre a formatação de parágrafos.

O exemplo de código a seguir mostra como inserir um parágrafo em um documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## Parágrafo de formato

A formatação atual do parágrafo é representada pelo objeto [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) retornado pela propriedade [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/). Este objeto encapsula várias propriedades de formatação de parágrafo disponíveis em Microsoft Word. Você pode redefinir facilmente a formatação de um parágrafo para seu padrão – estilo normal, alinhado à esquerda, sem recuo, sem espaçamento, sem bordas, sem sombreamento – chamando [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/).

O exemplo de código a seguir mostra como definir a formatação de parágrafo:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## Aplicar estilo de parágrafo

Alguns objetos de formatação, como **Font** ou **ParagraphFormat**, suportam estilos. Um estilo interno ou definido pelo usuário é representado por um objeto [Style](https://reference.aspose.com/words/net/aspose.words/style/), que contém as propriedades de estilo apropriadas, como nome, estilo base, fonte, estilo de formatação de parágrafo e assim por diante.

Além disso, o objeto **Style** expõe a propriedade [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/), que retorna o identificador de estilo independente de localidade representado pelo valor de enumeração [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/). O fato é que os nomes dos estilos integrados no Microsoft Word estão localizados para diferentes idiomas. Usando o identificador de estilo, você pode encontrar o estilo correto, independentemente do idioma do documento. Os valores de enumeração correspondem aos estilos Microsoft Word integrados, como *Normal*, *Título 1*, *Título 2* e assim por diante. Todos os estilos definidos pelo usuário são definidos com o valor de enumeração **StyleIdentifier.User**.

O exemplo de código a seguir mostra como aplicar um estilo de parágrafo:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### Insira o separador de estilo para colocar diferentes estilos de parágrafo

Um separador de estilo pode ser adicionado ao final de um parágrafo usando o atalho de teclado Ctrl+Alt+Enter em Microsoft Word. Este recurso permite usar dois estilos de parágrafo diferentes no mesmo parágrafo lógico impresso. Se você deseja que algum texto do início de um título específico apareça no índice, mas não deseja que o título inteiro apareça no índice, você pode usar esta função.

O exemplo de código a seguir mostra como inserir um separador de estilo para acomodar diferentes estilos de parágrafo:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### Identificar o separador de estilo de parágrafo

Aspose.Words expõe a propriedade pública [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) na classe `Paragraph` para identificar um parágrafo com um separador de estilo, conforme mostrado no exemplo abaixo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## Aplicar bordas e sombreamento a um parágrafo

As bordas em Aspose.Words são representadas pela classe [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) – esta é uma coleção de objetos [Border](https://reference.aspose.com/words/net/aspose.words/border/) que são acessados por índice ou por tipo de borda. O tipo de borda, por sua vez, é representado pela enumeração [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/). Alguns valores de enumeração se aplicam a vários ou apenas um elemento do documento. Por exemplo, **BorderType.Bottom** se aplica a um parágrafo ou célula de tabela, enquanto **BorderType.DiagonalDown** especifica uma borda diagonal apenas em uma célula de tabela.

Tanto a coleção de bordas quanto cada borda separada possuem atributos semelhantes, como cor, estilo de linha, largura da linha, distância do texto e sombra opcional. Eles são representados por propriedades com o mesmo nome. Você pode obter diferentes tipos de bordas combinando valores de propriedades. Além disso, os objetos **BorderCollection** e **Border** permitem redefinir esses valores para seus valores padrão chamando o método [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Observe que quando as propriedades da borda são redefinidas para seus valores padrão, a borda fica invisível.

{{% /alert %}}

Aspose.Words também possui a classe [Shading](https://reference.aspose.com/words/net/aspose.words/shading/) que contém atributos de sombreamento para elementos do documento. Você pode definir a textura e as cores de sombreamento desejadas que são aplicadas ao plano de fundo e ao primeiro plano de um elemento usando o valor de enumeração [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/). **TextureIndex** também permite aplicar padrões diferentes ao objeto **Shading**. Por exemplo, para definir a cor de fundo de um elemento do documento, utilize o valor **TextureIndex.TextureSolid** e defina a cor de sombreamento do primeiro plano conforme apropriado.

O exemplo de código a seguir mostra como aplicar bordas e sombreamento a um parágrafo:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## Contar linhas de parágrafo

Se você quiser contar o número de linhas em um parágrafo de qualquer documento do Word, o seguinte exemplo de código pode ser usado:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}

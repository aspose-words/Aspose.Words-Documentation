---
title: Trabalhando com parágrafos em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com parágrafos
linktitle: Trabalhando com parágrafos
description: "Parágrafo práticas de manipulação de nó usando Java."
type: docs
weight: 210
url: /pt/java/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Um parágrafo é um conjunto de caracteres combinados em um bloco lógico e terminando com um personagem especial – um *paragraph break*. Em Aspose.Words, um parágrafo é representado pelo [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) classe.

## Inserindo um Parágrafo

Para inserir um novo parágrafo no documento, de fato, você precisa inserir um caractere de quebra de parágrafo nele. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) insere não apenas uma string de texto no documento, mas também adiciona uma quebra de parágrafo.

A formatação atual da fonte também é especificada pelo [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) propriedade, e a formatação do parágrafo atual é determinada pelo [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) propriedade. Na próxima seção, entraremos em mais detalhes sobre formatação de parágrafo.

O exemplo a seguir mostra como inserir um parágrafo em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Parágrafo de formatação

A formatação atual do parágrafo é representada pelo [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) objeto que é retornado pelo [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) propriedade. Este objeto encapsula várias propriedades de formatação de parágrafo disponíveis em Microsoft Word. Você pode facilmente redefinir a formatação de um parágrafo para o seu padrão – Estilo normal, alinhado à esquerda, sem indentação, sem espaçamento, sem fronteiras, sem sombreamento – chamando [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

O exemplo a seguir mostra como definir formatação de parágrafo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Aplicar estilo de parágrafo

Alguns objetos de formatação, como estilos de suporte Font ou §Format. Um único estilo integrado ou definido pelo usuário é representado por um [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) objeto que contém as propriedades de estilo correspondentes, como nome, estilo de base, fonte e formatação de parágrafo do estilo, e assim por diante.

Além disso, **Style** objeto fornece [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) propriedade que retorna um identificador de estilo independente local representado por um **StyleIdentifier** valor de enumeração. O ponto é que os nomes de estilos embutidos Microsoft Word são localizados para diferentes idiomas. Usando um identificador de estilo, você pode encontrar o estilo correto, independentemente do idioma do documento. Os valores de enumeração correspondem ao Microsoft Word estilos embutidos, como *Normal*, * Heading 1*, *Heading 2*, etc. Todos os estilos definidos pelo usuário são atribuídos ao **StyleIdentifier. Valor do utilizador**.

O exemplo de código a seguir mostra como aplicar um estilo de parágrafo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Insira o separador de estilo para colocar diferentes estilos de parágrafo

O separador de estilo pode ser adicionado ao final de um parágrafo usando o Ctrl + Alt + Enter Keyboard atalho em MS Word. Este recurso permite dois estilos de parágrafo diferentes usados em um parágrafo impresso lógico. Se você quiser algum texto desde o início de um determinado cabeçalho para aparecer em uma Tabela de Conteúdos, mas não deseja que todo o cabeçalho na Tabela de Conteúdo, você pode usar esse recurso.

O exemplo a seguir mostra como inserir um separador de estilo para acomodar diferentes estilos de parágrafo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Aplicar Fronteiras e Shading a um Parágrafo

Fronteiras Aspose.Words são representados por [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) classe – esta é uma coleção de [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) objetos que são acessados por índice ou por tipo de fronteira. O `Border` tipo é representado pelo [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) enumeração. Alguns valores da enumeração são aplicáveis a vários ou apenas um elemento de documento. Por exemplo, **BorderType.Bottom** é aplicável a uma célula de parágrafo ou tabela enquanto **BorderType.DiagonalDown** especifica a borda diagonal em uma célula de tabela apenas.

Tanto a coleção de borda como cada borda separada têm atributos semelhantes, como cor, estilo de linha, largura de linha, distância do texto e sombra opcional. Eles são representados por propriedades do mesmo nome. Você pode alcançar diferentes tipos de fronteira combinando os valores da propriedade. Além disso, ambos **BorderCollection** e **Border** objetos permitem que você redefinir esses valores para o padrão chamando o [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) método.

{{% alert color="primary" %}}

Note que quando as propriedades de borda são redefinidas para valores padrão, a borda é invisível.

{{% /alert %}}

Aspose.Words também tem [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) classe contém atributos de sombreamento para elementos de documentos. Você pode definir a textura de sombra desejada e as cores que são aplicadas ao fundo e primeiro plano do elemento.

A textura de sombreamento é definida com [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) valor de enumeração que permite a aplicação de vários padrões para o **Shading** objeto. Por exemplo, para definir uma cor de fundo para um elemento de documento, use o `TextureIndex.TextureSolid` valor e definir a cor de sombreamento do primeiro plano conforme apropriado. O exemplo de código abaixo mostra como aplicar fronteiras e sombrear a um parágrafo.

O exemplo de código a seguir mostra como aplicar fronteiras e sombrear a um parágrafo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

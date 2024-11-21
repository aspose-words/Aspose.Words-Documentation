---
title: Visão geral do Document Builder em C#
second_title: Aspose.Words para .NET
articleTitle: Visão geral do Construtor de Documentos
linktitle: Visão geral do Construtor de Documentos
type: docs
description: "DocumentBuilder permite criar documentos dinâmicos do zero ou adicionar novos elementos aos existentes usando C#. DocumentBuilder fornece métodos para inserir texto, caixas de seleção, tabelas, imagens e outros elementos de conteúdo em .NET."
weight: 30
url: /pt/net/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) é uma classe poderosa que se associa ao [Document](https://reference.aspose.com/words/net/aspose.words/document/) e permite criar documentos dinâmicos do zero ou adicionar novos elementos a um já existente.

**DocumentBuilder** fornece métodos para inserir texto, caixas de seleção, objetos antigos, parágrafos, listas, tabelas, imagens e outros elementos de conteúdo. Ele permite que você especifique fontes, formatação de parágrafo ou seção e execute outras operações.

## Construtor de Documentos ou Aspose.Words DOM

**DocumentBuilder** complementa classes e métodos disponíveis no Aspose.Words Document Object Model (DOM) para simplificar as tarefas mais comuns de construção de documentos. Ou seja, você pode criar e modificar o conteúdo dos documentos tanto através do Aspose.Words DOM, que requer um bom entendimento da estrutura em árvore, quanto através do DocumentBuilder. O `DocumentBuilder` é uma "fachada" para a complexa estrutura **Document** que permite inserir conteúdo e formatação de forma rápida e fácil.

As operações possíveis com **DocumentBuilder** também são possíveis ao usar as classes do DOM Aspose.Words diretamente. No entanto, usar classes DOM Aspose.Words diretamente geralmente requer mais linhas de código do que usar **DocumentBuilder**.

## Navegação de documentos

A navegação no documento é baseada no conceito de cursor virtual, com o qual você pode mover para outro local do documento usando vários métodos **DocumentBuilder.MoveToXXX**, como [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) e [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/). Este cursor virtual indica onde o texto será inserido ao chamar os métodos [Write](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/ln/index), [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/) e outros. Consulte o seguinte artigo "Navegação com Cursor" para saber mais sobre o cursor virtual.

O exemplo de código a seguir mostra como navegar até um marcador:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## Criação e modificação de documentos

Aspose.Words API fornece diversas classes responsáveis pela formatação de diversos elementos de um documento. Cada uma das classes encapsula propriedades de formatação relacionadas a um elemento específico do documento, como texto, parágrafo, seção e outros. Por exemplo, a classe [Font](https://reference.aspose.com/words/net/aspose.words/font/) representa propriedades de formatação de caracteres, a classe [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) representa propriedades de formatação de parágrafos e assim por diante. Os objetos dessas classes são retornados pelas propriedades **DocumentBuilder** correspondentes, que possuem os mesmos nomes das classes. Portanto, você pode acessá-los e definir a formatação desejada durante a construção do documento.

Você também pode inserir texto, caixa de seleção, objeto antigo, imagens, marcadores, campos de formulário e outros elementos do documento na posição do cursor usando o método `Write` ou qualquer um dos métodos **DocumentBuilder.InsertXXX**, como [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/#insertfield/), [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/#inserthtml/) e métodos semelhantes.

Vamos ver como criar um documento simples usando **DocumentBuilder**.

### Crie um documento usando DocumentBuilder

Para começar, você precisa criar um **DocumentBuilder** e associá-lo a um objeto **Document**. Você cria uma nova instância de **DocumentBuilder** chamando seu construtor e passando-a para um objeto **Document** para anexar ao construtor.

Para inserir um texto, passe a string de texto que você precisa inserir no documento para o método **Write**.

O exemplo de código a seguir mostra como criar um documento simples usando um construtor de documentos.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### Especifique a formatação do documento

A propriedade [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) define a formatação do texto. Este objeto contém diferentes atributos de fonte (nome da fonte, tamanho da fonte, cor e assim por diante). Alguns atributos de fonte importantes também são representados por propriedades **DocumentBuilder** para permitir acesso direto a eles. Estas são as propriedades booleanas [Font.Bold](https://reference.aspose.com/words/net/aspose.words/font/bold/), [Font.Italic](https://reference.aspose.com/words/net/aspose.words/font/italic/) e [Font.Underline](https://reference.aspose.com/words/net/aspose.words/font/underline/).

O exemplo de código a seguir mostra como inserir um texto formatado usando **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) especifica a formatação de caracteres que será aplicada a todo o texto inserido a partir da posição atual no documento.
- [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) especifica a formatação do parágrafo atual e de todos os parágrafos a serem inseridos.
- [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) especifica as propriedades da página e da seção da seção atual e de toda a seção que será inserida.
- [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) e [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) especificam propriedades de formatação que serão aplicadas às células e linhas da tabela a partir da posição atual no documento.

Nesta situação, "atual" significa a posição, parágrafo, seção, célula ou linha em que o cursor está.

{{% /alert %}}

{{% alert color="primary" %}}

Observe que as propriedades **Font**, **ParagraphFormat** e **PageSetup** são atualizadas sempre que você navega para um local diferente no documento para refletir as propriedades de formatação desse local.

{{% /alert %}}

---
title: Visão geral do Document Builder em C++
second_title: Aspose.Words para C++
articleTitle: Visão Geral Do Document Builder
linktitle: Visão Geral Do Document Builder
type: docs
description: "DocumentBuilder permite criar documentos dinâmicos do zero ou adicionar novos elementos aos existentes usando C++. DocumentBuilder fornece métodos para inserir texto, caixas de seleção, tabelas, imagens e outros elementos de conteúdo em C++."
weight: 30
url: /pt/cpp/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) é uma classe poderosa que se associa a [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) e permite criar documentos dinâmicos do zero ou adicionar novos elementos a um existente.

**DocumentBuilder**

## Construtor de documentos ou Aspose.Words DOM

**DocumentBuilder**

Operações que são possíveis com **DocumentBuilder** também são possíveis ao usar as classes do Aspose.Words DOM diretamente. No entanto, usar classes Aspose.Words DOM diretamente geralmente requer mais linhas de código do que usar **DocumentBuilder**.

## Navegação De Documentos

A navegação do documento baseia-se no conceito de cursor virtual, com o qual pode deslocar-se para outro local no documento utilizando vários métodos **DocumentBuilder.MoveToXXX**, tais como [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) e [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Este cursor virtual indica onde o texto será inserido ao chamar os métodos [Write](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/), e outros.

O exemplo de código a seguir mostra como navegar para um marcador:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## Construção e modificação de documentos

Aspose.Words API fornece várias classes que são responsáveis pela formatação de vários elementos de um documento. Cada uma das classes encapsula propriedades de formatação relacionadas a um elemento de documento específico, como texto, parágrafo, seção e outros. Por exemplo, a classe [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) representa propriedades de formatação de caracteres, a classe [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) representa propriedades de formatação de parágrafo e assim por diante. Os objetos dessas classes são retornados pelas propriedades **DocumentBuilder** correspondentes, que têm os mesmos nomes das classes. Portanto, você pode acessá-los e definir a formatação desejada durante a compilação do documento.

Você também pode inserir texto, caixa de seleção, objeto ole, imagens, marcadores, campos de formulário e outros elementos do documento na posição do cursor usando o método `Write` ou qualquer um dos métodos **DocumentBuilder.InsertXXX**, como [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/) e métodos semelhantes.

Vamos ver como criar um documento simples usando o **DocumentBuilder**.

### Criar um documento utilizando DocumentBuilder

Para começar, você precisa criar um **DocumentBuilder** e associá-lo a um objeto **Document**. Você cria uma nova instância de **DocumentBuilder** chamando seu construtor e a passa para um objeto **Document** Para anexo ao construtor.

Para inserir um texto, passe a cadeia de texto que você precisa inserir no documento para o método **Write**.

O exemplo de código a seguir mostra como criar um documento simples usando um construtor de documentos.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### Especificar A Formatação Do Documento

A propriedade [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) define a formatação do texto. Este objeto contém diferentes atributos de fonte (Nome da fonte, tamanho da fonte, cor e assim por diante). Alguns atributos de fonte importantes também são representados por propriedades **DocumentBuilder** para permitir que você os acesse diretamente. Estas são as propriedades booleanas [Font.Bold](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_bold/), [Font.Italic](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_italic/) e [Font.Underline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_underline/).

O exemplo de código a seguir mostra como inserir um texto formatado usando **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) especifica a formatação de caracteres que será aplicada a todo o texto inserido a partir da posição actual no documento.
- [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) especifica a formatação do parágrafo para o atual e todos os parágrafos a serem inseridos.
- [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) especifica as propriedades da página e da secção para a secção actual e para toda a secção que será inserida.
- [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) e [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) especificam propriedades de formatação que serão aplicadas às células e linhas da tabela a partir da posição atual no documento.

Nesta situação," actual " significa a posição, parágrafo, secção, célula ou linha em que se encontra o cursor.

{{% /alert %}}

{{% alert color="primary" %}}

Observe que as propriedades **Font**, **ParagraphFormat** e **PageSetup** são atualizadas sempre que você navega para um local diferente no documento para refletir as propriedades de formatação desse local.

{{% /alert %}}

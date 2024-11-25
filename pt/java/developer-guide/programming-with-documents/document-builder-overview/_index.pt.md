---
title: Visão geral do construtor de documentos em Java
second_title: Aspose.Words para Java
articleTitle: Visão Geral Do Document Builder
linktitle: Visão Geral Do Document Builder
type: docs
description: "DocumentBuilder permite criar documentos dinâmicos a partir do zero ou adicionar novos elementos aos existentes. DocumentBuilder fornece métodos para inserir texto, checkbox es, tabelas, imagens e outros elementos de conteúdo em Java."
weight: 30
url: /pt/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) é uma classe poderosa que se associa a [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) e permite criar documentos dinâmicos do zero ou adicionar novos elementos a um existente.

**DocumentBuilder**

## Construtor de documentos ou Aspose.Words DOM

**DocumentBuilder**

Operações que são possíveis com **DocumentBuilder** também são possíveis ao usar as classes do Aspose.Words DOM diretamente. No entanto, usar classes Aspose.Words DOM diretamente geralmente requer mais linhas de código do que usar **DocumentBuilder**.

## Navegação De Documentos

A navegação do documento baseia-se no conceito de cursor virtual, com o qual pode deslocar-se para outro local no documento utilizando vários métodos **DocumentBuilder.MoveToXXX**, tais como [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) e [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Este cursor virtual indica onde o texto será inserido ao chamar os métodos [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), e outros. Consulte o seguinte artigo "navegação com Cursor" para saber mais sobre o cursor virtual.

O exemplo de código a seguir mostra como navegar para um marcador:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Construção e modificação de documentos

Aspose.Words API fornece várias classes que são responsáveis pela formatação de vários elementos de um documento. Cada uma das classes encapsula propriedades de formatação relacionadas a um elemento de documento específico, como texto, parágrafo, seção e outros. Por exemplo, a classe [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) representa propriedades de formatação de caracteres, a classe [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) representa propriedades de formatação de parágrafo e assim por diante. Os objetos dessas classes são retornados pelas propriedades **DocumentBuilder** correspondentes, que têm os mesmos nomes das classes. Portanto, você pode acessá-los e definir a formatação desejada durante a compilação do documento.

Você também pode inserir texto, checkbox, objeto ole, imagens, marcadores, campos de formulário e outros elementos de documento na posição do cursor usando o método `Write` ou qualquer um dos métodos **DocumentBuilder.InsertXXX**, como [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) e métodos semelhantes.

Vamos ver como criar um documento simples usando o **DocumentBuilder**.

### Criar um documento utilizando DocumentBuilder

Para começar, você precisa criar um **DocumentBuilder** e associá-lo a um objeto **Document**. Você cria uma nova instância de **DocumentBuilder** chamando seu construtor e a passa para um objeto **Document** Para anexo ao construtor.

Para inserir um texto, passe a cadeia de texto que você precisa inserir no documento para o método **Write**.

O exemplo de código a seguir mostra como criar um documento simples usando um construtor de documentos.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Especificar A Formatação Do Documento

A propriedade [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) define a formatação do texto. Este objeto contém diferentes atributos de fonte (Nome da fonte, tamanho da fonte, cor e assim por diante). Alguns atributos de fonte importantes também são representados por propriedades **DocumentBuilder** para permitir que você os acesse diretamente. Estas são as propriedades booleanas [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) e [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

O exemplo de código a seguir mostra como inserir um texto formatado usando **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) especifica a formatação de caracteres que será aplicada a todo o texto inserido a partir da posição actual no documento.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) especifica a formatação do parágrafo para o atual e todos os parágrafos a serem inseridos.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) especifica as propriedades da página e da secção para a secção actual e para toda a secção que será inserida.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) e [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) especificam propriedades de formatação que serão aplicadas às células e linhas da tabela a partir da posição atual no documento.

Nesta situação," actual " significa a posição, parágrafo, secção, célula ou linha em que se encontra o cursor.

{{% /alert %}}

{{% alert color="primary" %}}

Observe que as propriedades **Font**, **ParagraphFormat** e **PageSetup** são atualizadas sempre que você navega para um local diferente no documento para refletir as propriedades de formatação desse local.

{{% /alert %}}

---
title: Construtor de documentos Visão geral em Java
second_title: Aspose.Words para Java
articleTitle: Visão geral do Construtor de Documentos
linktitle: Visão geral do Construtor de Documentos
type: docs
description: "DocumentBuilder permite que você construa documentos dinâmicos do zero ou adicione novos elementos aos existentes. DocumentBuilder fornece métodos para inserir texto, caixas de seleção, tabelas, imagens e outros elementos de conteúdo em Java."
weight: 30
url: /pt/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) é uma classe poderosa que se associa com [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) e permite que você construa documentos dinâmicos do zero ou adicione novos elementos a um existente.

**DocumentBuilder** fornece métodos para inserir texto, caixas de seleção, objetos ole, parágrafos, listas, tabelas, imagens e outros elementos de conteúdo. Permite especificar fontes, parágrafo ou formatação de seção e executar outras operações.

## Construtor de documentos ou Aspose.Words DOM

**DocumentBuilder** complementa classes e métodos disponíveis no Aspose.Words Document Object Model (DOM) simplificar as tarefas de construção de documentos mais comuns. Ou seja, você pode criar e modificar o conteúdo de documentos tanto através do Aspose.Words DOM, que requer uma boa compreensão da estrutura da árvore, e usando o DocumentBuilder. O `DocumentBuilder` é uma "facadeia" para o complexo **Document** estrutura que permite inserir conteúdo e formatação de forma rápida e fácil.

Operações que são possíveis com **DocumentBuilder** também são possíveis ao usar as classes do Aspose.Words DOM directamente. No entanto, usando Aspose.Words DOM classes exigem diretamente mais linhas de código do que usar **DocumentBuilder**.

## Navegação de documentos

A navegação do documento é baseada no conceito de um cursor virtual, com o qual você pode mover para outro local no documento usando vários **DocumentBuilder.MoveToXXX** métodos como [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) e [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Este cursor virtual indica onde o texto será inserido ao chamar os métodos [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), e outros. Veja o seguinte artigo "Navegação com Cursor" para saber mais sobre o cursor virtual.

O exemplo de código a seguir mostra como navegar para um marcador:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Construção e modificação de documentos

Aspose.Words API fornece várias classes que são responsáveis pela formatação de vários elementos de um documento. Cada uma das classes encapsula propriedades de formatação relacionadas a um elemento de documento específico, como texto, parágrafo, seção e outros. Por exemplo, o [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) classe representa propriedades de formatação de caracteres, a [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) classe representa propriedades de formatação de parágrafo, e assim por diante. Os objetos dessas classes são devolvidos pelas correspondentes **DocumentBuilder** propriedades, que têm os mesmos nomes das classes. Portanto, você pode acessá-los e definir a formatação desejada durante a construção do documento.

Você também pode inserir texto, caixa de seleção, objeto ole, imagens, marcadores, campos de formulário e outros elementos de documento na posição do cursor usando o `Write` método ou qualquer um dos **DocumentBuilder.InsertXXX** métodos, tais como [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), e métodos semelhantes.

Vamos ver como criar um documento simples usando o **DocumentBuilder**.

### Criar um documento usando DocumentBuilder

Para começar, você precisa criar um **DocumentBuilder** e associá-lo com um **Document** objeto. Você cria uma nova instância de **DocumentBuilder** chamando seu construtor e passando para um **Document** objeto para anexo ao construtor.

Para inserir um texto, passe a string de texto que você precisa inserir no documento para o **Write** método.

O exemplo a seguir mostra como criar um documento simples usando um construtor de documentos.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Especificar formatação de documentos

O [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) propriedade define formatação de texto. Este objeto contém diferentes atributos de fonte (nome de fonte, tamanho da fonte, cor e assim por diante). Alguns atributos de fonte importantes também são representados por **DocumentBuilder** propriedades para permitir que você acessá-los diretamente. Estes são os [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), e [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) propriedades booleanas.

O exemplo de código a seguir mostra como inserir um texto formatado usando **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- Não. [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) especifica a formatação de caracteres que será aplicada a todo o texto inserido na posição atual no documento em diante.
- Não. [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) especifica a formatação do parágrafo para que os parágrafos atuais e todos sejam inseridos.
- Não. [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) especifica as propriedades da página e da seção para a seção atual e toda a seção que será inserida.
- Não. [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) e [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) especificar propriedades de formatação que serão aplicadas às células de tabela e linhas da posição atual no documento em diante.

Nesta situação, "corrente" significa a posição, parágrafo, seção, célula ou linha em que o cursor é.

{{% /alert %}}

{{% alert color="primary" %}}

Note que o **Font**, **ParagraphFormat**, e **PageSetup** As propriedades são atualizadas sempre que você navega para um local diferente no documento para refletir as propriedades de formatação deste local.

{{% /alert %}}

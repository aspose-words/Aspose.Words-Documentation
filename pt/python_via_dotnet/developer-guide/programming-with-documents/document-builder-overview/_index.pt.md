---
title: Visão geral do Document Builder em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Visão geral do Construtor de Documentos
linktitle: Visão geral do Construtor de Documentos
type: docs
description: "DocumentBuilder permite criar documentos dinâmicos do zero ou adicionar novos elementos aos existentes usando Python. DocumentBuilder fornece métodos para inserir texto, caixas de seleção, tabelas, imagens e outros elementos de conteúdo em Python."
weight: 30
url: /pt/python-net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) é uma classe poderosa que se associa ao [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) e permite criar documentos dinâmicos do zero ou adicionar novos elementos a um já existente.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) fornece métodos para inserir texto, caixas de seleção, objetos antigos, parágrafos, listas, tabelas, imagens e outros elementos de conteúdo. Ele permite que você especifique fontes, formatação de parágrafo ou seção e execute outras operações.

## Construtor de Documentos ou Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) complementa classes e métodos disponíveis no Aspose.Words Document Object Model (DOM) para simplificar as tarefas mais comuns de construção de documentos. Ou seja, você pode criar e modificar o conteúdo dos documentos tanto através do Aspose.Words DOM, que requer um bom entendimento da estrutura em árvore, quanto através do DocumentBuilder. O `DocumentBuilder` é uma "fachada" para a complexa estrutura **Document** que permite inserir conteúdo e formatação de forma rápida e fácil.

As operações possíveis com [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) também são possíveis ao usar as classes do DOM Aspose.Words diretamente. No entanto, usar classes DOM Aspose.Words diretamente geralmente requer mais linhas de código do que usar [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

## Navegação de documentos

A navegação no documento é baseada no conceito de cursor virtual, com o qual você pode mover para outro local do documento usando vários métodos **DocumentBuilder.move_to_XXX**, como [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) e [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Este cursor virtual indica onde o texto será inserido ao chamar os métodos [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/), [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/) e outros. Consulte o seguinte artigo "Navegação com Cursor" para saber mais sobre o cursor virtual.

O exemplo de código a seguir mostra como navegar até um marcador:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## Criação e modificação de documentos

Aspose.Words API fornece diversas classes responsáveis pela formatação de diversos elementos de um documento. Cada uma das classes encapsula propriedades de formatação relacionadas a um elemento específico do documento, como texto, parágrafo, seção e outros. Por exemplo, a classe [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) representa propriedades de formatação de caracteres, a classe [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) representa propriedades de formatação de parágrafos e assim por diante. Os objetos dessas classes são retornados pelas propriedades [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) correspondentes, que possuem os mesmos nomes das classes. Portanto, você pode acessá-los e definir a formatação desejada durante a construção do documento.

Você também pode inserir texto, caixa de seleção, objeto antigo, imagens, marcadores, campos de formulário e outros elementos do documento na posição do cursor usando o método `Write` ou qualquer um dos métodos **DocumentBuilder.insert_XXX**, como [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/) e métodos semelhantes.

Vamos ver como criar um documento simples usando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

### Crie um documento usando DocumentBuilder

Para começar, você precisa criar um [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) e associá-lo a um objeto [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Você cria uma nova instância de [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) chamando seu construtor e passando-a para um objeto [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) para anexar ao construtor.

Para inserir um texto, passe a string de texto que você precisa inserir no documento para o método [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/).

O exemplo de código a seguir mostra como criar um documento simples usando um construtor de documentos.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Especifique a formatação do documento

A propriedade [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) define a formatação do texto. Este objeto contém diferentes atributos de fonte (nome da fonte, tamanho da fonte, cor e assim por diante). Alguns atributos de fonte importantes também são representados por propriedades [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) para permitir acesso direto a eles. Estas são as propriedades booleanas [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/) e [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/).

O exemplo de código a seguir mostra como inserir um texto formatado usando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) especifica a formatação de caracteres que será aplicada a todo o texto inserido a partir da posição atual no documento.
- [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) especifica a formatação do parágrafo atual e de todos os parágrafos a serem inseridos.
- [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) especifica as propriedades da página e da seção da seção atual e de toda a seção que será inserida.
- [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) e [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) especificam propriedades de formatação que serão aplicadas às células e linhas da tabela a partir da posição atual no documento.

Nesta situação, "atual" significa a posição, parágrafo, seção, célula ou linha em que o cursor está.

{{% /alert %}}

{{% alert color="primary" %}}

Observe que as propriedades [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) e [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) são atualizadas sempre que você navega para um local diferente no documento para refletir as propriedades de formatação desse local.

{{% /alert %}}

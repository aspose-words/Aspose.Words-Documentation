---
title: Trabalhando com nota de rodapé e nota final em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhar com nota de rodapé e nota de fim
linktitle: Trabalhar com nota de rodapé e nota de fim
description: "Como manipular notas de rodapé e notas de fim usando Java."
type: docs
weight: 160
url: /pt/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words também fornece algumas classes, métodos e propriedades para trabalhar com notas de rodapé e notas de fim.

## Inserir nota de fim e definir opções de numeração

Se pretender inserir uma nota de rodapé ou uma nota de fim num documento do Word, utilize o método [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String). Este método insere uma nota de rodapé ou nota de fim no documento.

As classes [EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) e [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) representam opções de numeração para nota de rodapé e nota de fim.

O exemplo de código a seguir mostra como inserir a nota final no documento e definir suas opções de numeração:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Definir o número de colunas da disposição das Notas de rodapé

Você pode definir o número de colunas de layout de nota de rodapé usando a propriedade [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns). Se esta propriedade tiver o valor 0, a área notas de rodapé é formatada com um número de colunas com base no número de colunas na página apresentada.

O exemplo de código a seguir mostra como definir o número de colunas para o layout da nota de rodapé:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Definir a posição da nota de rodapé e EndNote

A posição da nota de rodapé pode estar na parte inferior de cada página ou abaixo do texto em cada página. A posição da nota final pode estar no final da secção ou no final do documento.

O exemplo de código a seguir mostra como definir a posição da nota de rodapé e da nota final:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}

---
title: Trabalhando com Nota de rodapé e Nota final em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com Nota de rodapé e Nota final
linktitle: Trabalhando com Nota de rodapé e Nota final
description: "Como manipular notas de rodapé e notas finais usando Java."
type: docs
weight: 160
url: /pt/java/working-with-footnote-and-endnote/
---

Aspose.Words também fornece algumas classes, métodos e propriedades para trabalhar com notas de rodapé e notas finais.

## Inserir Endnote e definir opções de numeração

Se você quiser inserir uma nota de rodapé ou uma nota final em um documento do Word, use [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) método. Este método insere uma nota de rodapé ou nota final no documento.

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) e [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) classes representam opções de numeração para nota de rodapé e nota final.

O exemplo a seguir mostra como inserir a nota final no documento e definir suas opções de numeração:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Definir número de colunas de layout de notas de rodapé

Você pode definir o número de colunas de layout da nota de rodapé usando [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) propriedade. Se esta propriedade tem o valor de 0, a área de notas de rodapé é formatada com um número de colunas com base no número de colunas na página exibida.

O exemplo a seguir mostra como definir o número de colunas para o layout da nota de rodapé:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Defina a posição da nota de rodapé e endNote

A posição da nota de rodapé pode estar na parte inferior de cada página ou abaixo do texto em cada página. A posição da nota final pode estar no final da seção ou no final do documento.

O exemplo a seguir mostra como definir a posição da nota de rodapé e nota final:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}

---
title: Trabalhando com nota de rodapé e nota de fim Em C++
second_title: Aspose.Words para C++
articleTitle: Trabalhar com nota de rodapé e nota de fim
linktitle: Trabalhar com nota de rodapé e nota de fim
description: "Como manipular notas de rodapé e notas de fim usando C++."
type: docs
weight: 160
url: /pt/cpp/working-with-footnote-and-endnote/
---

Aspose.Words também fornece algumas classes, métodos e propriedades para trabalhar com notas de rodapé e notas de fim.

## Inserir nota de fim e definir opções de numeração

Se pretender inserir uma nota de rodapé ou nota de fim num documento do Word, utilize o método [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/). Este método insere uma nota de rodapé ou nota de fim no documento.

As classes [EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) e [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) representam opções de numeração para nota de rodapé e nota de fim.

O exemplo de código a seguir mostra como inserir a nota final no documento e definir suas opções de numeração:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## Definir o número de colunas da disposição das Notas de rodapé

Você pode definir o número de colunas de layout de nota de rodapé usando a propriedade [Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/). Se esta propriedade tiver um valor de 0, a área notas de rodapé é formatada com um número de colunas com base no número de colunas na página apresentada.

O exemplo de código a seguir mostra como definir o número de colunas para o layout da nota de rodapé:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## Definir a posição da nota de rodapé e EndNote

A posição da nota de rodapé pode estar na parte inferior de cada página ou abaixo do texto em cada página. A posição da nota final pode estar no final da secção ou no final do documento.

O exemplo de código a seguir mostra como definir a posição da nota de rodapé e da nota final:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}

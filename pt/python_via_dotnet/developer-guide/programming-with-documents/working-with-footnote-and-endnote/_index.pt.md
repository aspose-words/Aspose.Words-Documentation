---
title: Trabalhando com nota de rodapé e nota final
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com nota de rodapé e nota final
linktitle: Trabalhando com nota de rodapé e nota final
description: "Insira notas de rodapé ou notas finais em um documento e especifique suas opções usando Python."
type: docs
weight: 160
url: /pt/python-net/working-with-footnote-and-endnote/
---

Aspose.Words também fornece algumas classes, métodos e propriedades para trabalhar com notas de rodapé e notas finais.

## Inserir nota final e definir opções de numeração

Se você deseja inserir uma nota de rodapé ou final em um documento do Word, use o método [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/). Este método insere uma nota de rodapé ou nota final no documento.

As classes [EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) e [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) representam opções de numeração para notas de rodapé e notas finais.

O exemplo de código a seguir mostra como inserir uma nota final no documento e definir suas opções de numeração:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## Definir número de colunas de layout de nota de rodapé

Você pode definir o número de colunas de layout de notas de rodapé usando a propriedade [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/). Se esta propriedade tiver o valor 0, a área de notas de rodapé será formatada com um número de colunas baseado no número de colunas da página exibida.

O exemplo de código a seguir mostra como definir o número de colunas para o layout da nota de rodapé:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## Defina a posição da nota de rodapé e EndNote

A posição da nota de rodapé pode estar na parte inferior de cada página ou abaixo do texto de cada página. A posição da nota final pode ser no final da seção ou no final do documento.

O exemplo de código a seguir mostra como definir a posição da nota de rodapé e da nota final:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}

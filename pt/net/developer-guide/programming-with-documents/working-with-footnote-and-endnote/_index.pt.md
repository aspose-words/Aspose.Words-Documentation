---
title: Trabalhando com notas de rodapé e notas finais em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhando com nota de rodapé e nota final
linktitle: Trabalhando com nota de rodapé e nota final
description: "Como manipular notas de rodapé e notas finais usando C#."
type: docs
weight: 160
url: /pt/net/working-with-footnote-and-endnote/
---

Aspose.Words também fornece algumas classes, métodos e propriedades para trabalhar com notas de rodapé e notas finais.

## Inserir nota final e definir opções de numeração

Se você deseja inserir uma nota de rodapé ou final em um documento do Word, use o método [InsertFootnote](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfootnote/). Este método insere uma nota de rodapé ou nota final no documento.

As classes [EndnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/endnoteoptions/) e [FootnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/) representam opções de numeração para notas de rodapé e notas finais.

O exemplo de código a seguir mostra como inserir uma nota final no documento e definir suas opções de numeração:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## Definir número de colunas de layout de nota de rodapé

Você pode definir o número de colunas de layout de notas de rodapé usando a propriedade [Columns](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/columns/). Se esta propriedade tiver o valor 0, a área de notas de rodapé será formatada com um número de colunas baseado no número de colunas da página exibida.

O exemplo de código a seguir mostra como definir o número de colunas para o layout da nota de rodapé:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## Defina a posição da nota de rodapé e EndNote

A posição da nota de rodapé pode estar na parte inferior de cada página ou abaixo do texto de cada página. A posição da nota final pode ser no final da seção ou no final do documento.

O exemplo de código a seguir mostra como definir a posição da nota de rodapé e da nota final:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}

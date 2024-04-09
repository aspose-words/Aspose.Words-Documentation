---
title: Spolupráce s poznámkami pod čarou a Endnote C#
second_title: Aspose.Words místo .NET
articleTitle: Spolupráce s poznámkami pod čarou a Endnote
linktitle: Spolupráce s poznámkami pod čarou a Endnote
description: "Jak manipulovat s poznámkami pod čarou a poznámkami C#."
type: docs
weight: 160
url: /cs/net/working-with-footnote-and-endnote/
---

Aspose.Words rovněž poskytuje některé třídy, metody a vlastnosti pro práci s poznámkami pod čarou a poznámkami pod čarou.

## Vložit endote a nastavit volby čísel

Pokud chcete vložit poznámku pod čarou nebo poznámku do dokumentu Word, použijte prosím [InsertFootnote](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfootnote/) metoda. Tato metoda vkládá do dokumentu poznámku pod čarou nebo poznámku pod čarou.

[EndnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/endnoteoptions/) a [FootnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/) třídy představují možnosti číslování poznámky pod čarou a poznámky pod čarou.

Následující příklad kódu ukazuje, jak vložit endote do dokumentu a nastavit jeho možnosti číslování:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## Nastavit počet sloupců poznámky

Můžete nastavit počet sloupců pod čarou pomocí [Columns](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/columns/) majetek. Pokud má tato vlastnost hodnotu 0, je oblast poznámek pod čarou formátována s počtem sloupců podle počtu sloupců na zobrazené stránce.

Následující příklad kódu ukazuje, jak nastavit počet sloupců pro rozvržení poznámky pod čarou:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## Nastavit pozici poznámky pod čarou a EndNote

Poznámka pod čarou může být v dolní části každé stránky nebo pod textem na každé stránce. Umístění poznámky může být na konci oddílu nebo na konci dokumentu.

Následující příklad kódu ukazuje, jak stanovit postoj poznámky pod čarou a poznámky:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}

---
title: Spolupráce s poznámkami pod čarou a Endnote
second_title: Aspose.Words místo Python via .NET
articleTitle: Spolupráce s poznámkami pod čarou a Endnote
linktitle: Spolupráce s poznámkami pod čarou a Endnote
description: "Vložte ffotnotes nebo endotes do dokumentu a zadejte jeho možnosti pomocí Python."
type: docs
weight: 160
url: /cs/python-net/working-with-footnote-and-endnote/
---

Aspose.Words rovněž poskytuje některé třídy, metody a vlastnosti pro práci s poznámkami pod čarou a poznámkami pod čarou.

## Vložit endote a nastavit volby čísel

Pokud chcete vložit poznámku pod čarou nebo poznámku do dokumentu Word, použijte prosím [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/) metoda. Tato metoda vkládá do dokumentu poznámku pod čarou nebo poznámku pod čarou.

[EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) a [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) třídy představují možnosti číslování poznámky pod čarou a poznámky pod čarou.

Následující příklad kódu ukazuje, jak vložit endote do dokumentu a nastavit jeho možnosti číslování:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## Nastavit počet sloupců poznámky

Můžete nastavit počet sloupců pod čarou pomocí [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/) majetek. Pokud má tato vlastnost hodnotu 0, je oblast poznámek pod čarou formátována s počtem sloupců podle počtu sloupců na zobrazené stránce.

Následující příklad kódu ukazuje, jak nastavit počet sloupců pro rozvržení poznámky pod čarou:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## Nastavit pozici poznámky pod čarou a EndNote

Poznámka pod čarou může být v dolní části každé stránky nebo pod textem na každé stránce. Umístění poznámky může být na konci oddílu nebo na konci dokumentu.

Následující příklad kódu ukazuje, jak stanovit postoj poznámky pod čarou a poznámky:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}

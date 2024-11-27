---
title: Práce s poznámkou pod čarou a vysvětlivkou v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s poznámkou pod čarou a vysvětlivkou
linktitle: Práce s poznámkou pod čarou a vysvětlivkou
description: "Jak manipulovat s poznámkami pod čarou a vysvětlivkami pomocí C++."
type: docs
weight: 160
url: /cs/cpp/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words také poskytuje některé třídy, metody a vlastnosti pro práci s poznámkami pod čarou a vysvětlivkami.

## Vložit vysvětlivku a nastavit možnosti číslování

Pokud chcete vložit poznámku pod čarou nebo vysvětlivku do dokumentu Word, použijte metodu [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/). Tato metoda vloží do dokumentu poznámku pod čarou nebo vysvětlivku.

Třídy [EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) a [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) představují možnosti číslování pro poznámky pod čarou a vysvětlivky.

Následující příklad kódu ukazuje, jak vložit endnote do dokumentu a nastavit jeho možnosti číslování:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## Nastavit počet sloupců rozložení poznámky pod čarou

Počet sloupců rozložení poznámky pod čarou můžete nastavit pomocí vlastnosti [Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/). Pokud má tato vlastnost hodnotu 0, je oblast poznámek pod čarou naformátována s počtem sloupců na základě počtu sloupců na zobrazené stránce.

Následující příklad kódu ukazuje, jak nastavit počet sloupců pro rozložení poznámky pod čarou:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## Nastavte pozici poznámky pod čarou a EndNote

Pozice poznámky pod čarou může být v dolní části každé stránky nebo pod textem na každé stránce. Pozice vysvětlivky může být na konci oddílu nebo na konci dokumentu.

Následující příklad kódu ukazuje, jak nastavit pozici poznámky pod čarou a vysvětlivky:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}

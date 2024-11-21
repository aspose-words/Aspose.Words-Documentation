---
title: Spolupráce s poznámkami pod čarou a Endnote Java
second_title: Aspose.Words místo Java
articleTitle: Spolupráce s poznámkami pod čarou a Endnote
linktitle: Spolupráce s poznámkami pod čarou a Endnote
description: "Jak manipulovat s poznámkami pod čarou a poznámkami Java."
type: docs
weight: 160
url: /cs/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words Rovněž poskytuje některé třídy, metody a vlastnosti pro práci s poznámkami pod čarou a poznámkami pod čarou.

## Vložit endote a nastavit volby čísel

Pokud chcete vložit poznámku pod čarou nebo poznámku do dokumentu Word, použijte prosím [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) metoda. Tato metoda vkládá do dokumentu poznámku pod čarou nebo poznámku pod čarou.

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) a [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) třídy představují možnosti číslování poznámky pod čarou a poznámky pod čarou.

Následující příklad kódu ukazuje, jak do dokumentu vložit poznámku a nastavit jeho možnosti číslování:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Nastavit počet sloupců poznámky

Můžete nastavit počet sloupců pod čarou pomocí [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) majetek. Pokud má tato vlastnost hodnotu 0, je oblast poznámek pod čarou formátována s počtem sloupců podle počtu sloupců na zobrazené stránce.

Následující příklad kódu ukazuje, jak nastavit počet sloupců pro rozvržení poznámky pod čarou:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Nastavit pozici poznámky pod čarou a EndNote

Poznámka pod čarou může být v dolní části každé stránky nebo pod textem na každé stránce. Umístění poznámky může být na konci oddílu nebo na konci dokumentu.

Následující příklad kódu ukazuje, jak stanovit postoj poznámky pod čarou a poznámky:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}

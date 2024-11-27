---
title: Práce se záložkami v C++
second_title: Aspose.Words pro C++
articleTitle: Práce se záložkami
linktitle: Práce se záložkami
description: "Pochopení pojmů záložek a toho, jak lze záložku použít ve vašem programu pomocí C++."
type: docs
weight: 180
url: /cs/cpp/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Záložky identifikují v dokumentu Microsoft Word umístění nebo fragmenty, které pojmenujete a identifikujete pro budoucí použití. Můžete například použít záložku k identifikaci textu, který chcete později revidovat. Místo procházení dokumentem vyhledejte text, můžete k němu přejít pomocí dialogového okna Záložka.

Akce, které lze provádět se záložkami pomocí Aspose.Words, jsou stejné jako akce, které můžete provádět pomocí Microsoft Word. Můžete vložit novou záložku, odstranit, přesunout na záložku, získat nebo nastavit název záložky, získat nebo nastavit text v ní uzavřený. Pomocí Aspose.Words můžete také použít záložky v přehledech nebo dokumentech k vložení některých dat do záložky nebo použít speciální formátování jejího obsahu. Záložky můžete také použít k načtení textu z určitého umístění v dokumentu.

## Vložit záložku

Pomocí [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) a [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/) vytvořte záložku označením jejího začátku a konce. Nezapomeňte oběma metodám předat stejný název záložky. Záložky v dokumentu se mohou překrývat a pokrývat jakýkoli rozsah. Špatně vytvořené záložky nebo záložky s duplicitními názvy budou při uložení dokumentu ignorovány.

Následující příklad kódu ukazuje, jak vytvořit novou záložku:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## Získat Záložky

Někdy je nutné získat kolekci záložek pro iteraci prostřednictvím záložek nebo pro jiné účely. Použijte vlastnost [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/) vystavenou libovolným uzlem dokumentu, který vrací objekt [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) představující část dokumentu obsaženou v tomto uzlu. Tento objekt použijte k načtení [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/) a poté použijte indexátor kolekce k získání konkrétní záložky.

Následující příklad kódu ukazuje, jak získat záložky z kolekce záložek:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

Následující příklad kódu ukazuje, jak získat nebo nastavit název a text záložky:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

Následující příklad kódu ukazuje, jak uložit tabulku do záložek:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

Pokud změníte název záložky na název, který již v dokumentu existuje, nebude vygenerována žádná chyba a při uložení dokumentu bude uložena pouze první Záložka.

{{% alert color="primary" %}}

Všimněte si, že některé záložky v dokumentu jsou přiřazeny k polím formuláře. Přesun na takovou záložku a vložení textu tam vloží text do kódu pole formuláře. I když to nezneplatní pole formuláře, vložený text nebude viditelný, protože se stane součástí kódu pole.

{{% /alert %}}

## Přesun na záložku

Pokud potřebujete do záložky vložit bohatý obsah (nejen prostý text), měli byste použít [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) k přesunutí kurzoru na záložku a poté použít metody a vlastnosti [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) k vložení obsahu.

## Zobrazit Skrýt Obsah Záložek

Celá Záložka (*including the bookmarked content*) může být zapouzdřena do pravé části pole `IF` pomocí Aspose.Words. Může to být tak, že pole `IF` obsahuje vnořené pole sloučení ve výrazu (*Left of Operator*) a v závislosti na hodnotě pole sloučení pole `IF` zobrazuje nebo skrývá obsah záložky v dokumentu Word.

Následující příklad kódu ukazuje, jak zobrazit / skrýt záložky:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}

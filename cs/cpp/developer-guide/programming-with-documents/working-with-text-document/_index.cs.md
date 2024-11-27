---
title: Práce s textovým dokumentem v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s textovým dokumentem
linktitle: Práce s textovým dokumentem
description: "Pokročilé TXT Zpracování dokumentů, seznamy, BiDi, záhlaví / zápatí, pomocí C++."
type: docs
weight: 430
url: /cs/cpp/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

V tomto článku se dozvíme, jaké možnosti mohou být užitečné pro práci s textovým dokumentem pomocí Aspose.Words. Vezměte prosím na vědomí, že se nejedná o úplný seznam dostupných možností, ale pouze o příklad práce s některými z nich.

## Přidejte Obousměrné Značky

Pomocí vlastnosti [AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/) můžete určit, zda chcete přidat obousměrné značky před každým spuštěním BiDi Při exportu ve formátu prostého textu. Aspose.Words vloží znak Unicode'RIGHT-TO-LEFT MARK' (U+200F) před každým obousměrným spuštěním v textu. Tato možnost odpovídá možnosti "Přidat obousměrné značky" v dialogu pro převod souborů MS Word při exportu do formátu prostého textu. Všimněte si, že se objeví v dialogu pouze v případě, že některý z arabských nebo hebrejských editačních jazyků je přidán do MS Word.

Následující příklad kódu ukazuje, jak používat vlastnost **AddBidiMarks**. Výchozí hodnota této vlastnosti je *false*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## Rozpoznání Položek Seznamu Během Načítání TXT

Aspose.Words může importovat položku seznamu textového souboru jako čísla seznamu nebo prostý text v modelu objektu dokumentu. Vlastnost [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/) umožňuje určit, jak jsou číslované položky seznamu rozpoznány při importu dokumentu z formátu prostého textu:

* Pokud je tato volba nastavena na *true*, použijí se jako oddělovače čísel seznamu také mezery: algoritmus rozpoznávání seznamu pro číslování arabského stylu (1., 1.1.2.) používá symboly mezer i teček (".").
* Pokud je tato volba nastavena na *false*, algoritmus rozpoznávání seznamů detekuje odstavce seznamu, když čísla seznamu končí buď tečkou, pravou závorkou nebo symboly odrážek (například "•", "*", "-" nebo "o").

Následující příklad kódu ukazuje, jak tuto vlastnost používat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## Jak zacházet s úvodními a koncovými mezerami během načítání TXT

Můžete ovládat způsob manipulace s úvodními a koncovými mezerami během načítání souboru TXT. Přední prostory by mohly být oříznuty, zachovány nebo převedeny na odsazení a zadní prostory by mohly být oříznuty nebo zachovány.

Následující příklad kódu ukazuje, jak oříznout úvodní a koncové mezery při importu souboru TXT:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## Export záhlaví a zápatí ve výstupu TXT

Pokud chcete exportovat záhlaví a zápatí v dokumentu output TXT, můžete použít vlastnost [ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/). Tato vlastnost určuje způsob exportu záhlaví a zápatí do formátu prostého textu.

Následující příklad kódu ukazuje, jak exportovat záhlaví a zápatí do formátu prostého textu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## Odsazení seznamu exportu ve výstupu TXT

Aspose.Words představil třídu [TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/), která umožňuje určit, jak jsou úrovně seznamu odsazeny při exportu do formátu prostého textu. Při práci s [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/) je vlastnost [ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/) určena k určení znaku, který se má použít pro odsazení úrovní seznamu, a k určení počtu znaků, které se mají použít jako odsazení na jednu úroveň seznamu.

Výchozí hodnota znakové vlastnosti je '\0', což znamená, že neexistuje žádné odsazení. Pro vlastnost count je výchozí hodnota 0, což znamená žádné odsazení.

### Použití Znaku Karty

Následující příklad kódu ukazuje, jak exportovat úrovně seznamu pomocí znaků tab:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### Použití Vesmírného Znaku

Následující příklad kódu ukazuje, jak exportovat úrovně seznamu pomocí mezer:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### Použití Výchozího Odsazení

Následující příklad kódu ukazuje, jak exportovat úrovně seznamu pomocí výchozího odsazení:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}

---
title: Práce s textovým dokumentem v Java
second_title: Aspose.Words místo Java
articleTitle: Práce s dokumentem
linktitle: Práce s dokumentem
description: "Pokročilé zpracování TXT dokumentů, seznamy, BiDi, hlavičky/noha, pomocí Java."
type: docs
weight: 430
url: /cs/java/working-with-text-document/
---

V tomto článku se dozvíme, jaké možnosti mohou být užitečné pro práci s textovým dokumentem prostřednictvím Aspose.Words. Upozorňujeme, že to není úplný seznam dostupných možností, ale jen příklad spolupráce s některými z nich.

## Přidat bi- Directional Značky

Můžete použít [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) vlastnost určit, zda přidat obousměrné značky před každým spuštěním BiDi při exportu v jednoduchém textovém formátu. Aspose.Words vkládá znak Unicode 'RIGHT-TO-LEFT MARK' (U+200F) před každým obousměrným spuštěním v textu. Tato volba odpovídá možnosti "Přidat obousměrné značky" v dialogovém okně MS Word File Conversion při exportu do formátu Plain Text. Všimněte si, že se objeví v dialogovém okně pouze v případě, že některý z arabských nebo hebrejských editačních jazyků jsou přidány v MS Word.

Následující příklad kódu ukazuje, jak používat `TxtSaveOptions.AddBidiMarks` majetek. Výchozí hodnota této vlastnosti je *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Rozpoznat položky seznamu během načítání TXT

Aspose.Words může importovat položku seznamu textového souboru jako čísla seznamů nebo prostý text ve svém modelu objektu dokumentu. The [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) vlastnost umožňuje určit, jak jsou očíslované položky seznamu uznávány při importu dokumentu z prostého textového formátu:

* Pokud je tato volba nastavena *true*, Whitespace se také používají jako oddělovače čísel seznamu: algoritmus rozpoznávání seznamů pro číslování arabského stylu (1., 1.1.2.) používá jak symboly Whitespace, tak i tečky (".").
* Pokud je tato volba nastavena *false*, algoritmus rozpoznávání seznamů detekuje odstavce seznamu, když čísla seznamu končí buď tečkou, pravým držákem nebo symboly kulky (např. "•," "*," "-" nebo "o").

Následující příklad kódu ukazuje, jak používat tuto vlastnost:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Manipulace vedoucími a trailing prostor při načítání TXT

Během načítání TXT souborů můžete ovládat způsob manipulace s vedoucími a stezkami. Vedoucí prostory by mohly být ostříhány, konzervovány nebo přeměněny na odsazení a mohly by být ořezány nebo zachovány.

Níže uvedený příklad kódu ukazuje, jak stříhat vedoucí a stopovací prostory při importu TXT souboru:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Detekovat dokument Směr textu

Aspose.Words poskytuje [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) vlastnost v [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) třída pro detekci směru textu (RTL / LTR) v dokumentu. Tato vlastnost nastavuje nebo získává textové pokyny dokumentu uvedené v [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) výčtu. Výchozí hodnota je zleva doprava.

Následující příklad kódu ukazuje, jak zjistit směr textu dokumentu při importu TXT souboru:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Exportovat záhlaví a zápatí ve výstupním TXT souboru

Pokud chcete exportovat hlavičku a zápatí ve výstupním TXT dokumentu, můžete použít [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) majetek. Tato vlastnost určuje způsob exportu hlaviček a zápatí do jednoduchého textového formátu.

Následující příklad kódu ukazuje, jak exportovat hlavičky a zápatí do jednoduchého formátu textu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Exportovat seznam odsazení ve výstupu TXT

Aspose.Words zavedeno [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) třída, která umožňuje určit, jak jsou úrovně seznamu odsazeny při vývozu do jednoduchého formátu textu. Při práci s [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), vá [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) vlastnost je poskytována pro upřesnění znaku, který má být použit pro odsazení úrovní seznamu a počet uvádějící, kolik znaků použít jako odsazení na jednu úroveň seznamu.

Výchozí hodnota vlastnosti znaku je '\0' udávající, že neexistuje odsazení. U vlastnosti počítání je výchozí hodnota 0, což znamená žádnou odsazení.

### Použití znaku karty

Následující příklad kódu ukazuje, jak exportovat úrovně seznamu pomocí znaků karty:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Použití prostorového znaku

Následující příklad kódu ukazuje, jak exportovat úrovně seznamu pomocí znaků mezer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Použití výchozího odsazení

Následující příklad kódu ukazuje, jak exportovat úrovně seznamu pomocí výchozí odsazení:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}

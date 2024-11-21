---
title: Spolupráce s textovým dokumentem v C#
second_title: Aspose.Words místo .NET
articleTitle: Práce s dokumentem
linktitle: Práce s dokumentem
description: "Pokročilé zpracování TXT dokumentů, seznamy, BiDi, hlavičky/noha, pomocí C#."
type: docs
weight: 430
url: /cs/net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

V tomto článku se dozvíme, jaké možnosti mohou být užitečné pro práci s textovým dokumentem prostřednictvím Aspose.Words. Vezměte prosím na vědomí, že to není úplný seznam dostupných možností, ale jen příklad spolupráce s některými z nich.

## Přidat bi Directional Značky

Můžete použít [AddBidiMarks](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/addbidimarks/) vlastnost určit, zda přidat obousměrné značky před každým spuštěním BiDi při exportu v jednoduchém textovém formátu. Aspose.Words Vloží Unicode znak 'RIGHT-TO-LEFT MARK' (U+200F) před každým obousměrným spuštěním v textu. Tato volba odpovídá možnosti "Přidat obousměrné značky" v dialogu MS Word File Conversion, když exportujete do jednoduchého formátu textu. Všimněte si, že se v dialogu objevuje pouze tehdy, pokud jsou v MS Word přidány některé arabské nebo hebrejské editační jazyky.

Následující příklad kódu ukazuje, jak používat **AddBidiMarks** majetek. Výchozí hodnota této vlastnosti je *false*:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## Poznejte položky seznamu během načítání TXT

Aspose.Words může importovat položku seznamu textového souboru jako čísla seznamů nebo prostý text ve svém modelu objektu dokumentu. • [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) vlastnost umožňuje určit, jak jsou očíslované položky seznamu rozpoznány při importu dokumentu z prostého textového formátu:

* Pokud je tato volba nastavena *true*, Whitespace se také používají jako oddělovače čísel seznamu: algoritmus rozpoznávání seznamu pro číslování arabského stylu (1., 1.1.2.) používá symboly Whitespace i tečka (".").

* Pokud je tato volba nastavena *false*, zobrazí rozpoznávací algoritmus seznam odstavců, kdy čísla seznamu končí buď tečkou, pravým držákem nebo symboly kulky (např. "•," "*," "-" nebo "o").

Následující příklad kódu ukazuje, jak používat tuto vlastnost:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## Manipulace vedoucími a trailingové prostory během načítání TXT

Během načítání TXT souboru můžete ovládat způsob manipulace s vedoucími a stezkami. Přední prostory by mohly být ořezány, konzervovány nebo přeměněny na odsazení a mohly by být ořezány nebo zachovány.

Následující příklad kódu ukazuje, jak při importu TXT souboru vystřihnout vedoucí a stopovací prostory:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## Detekovat dokument Směr textu

Aspose.Words poskytuje [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/documentdirection/) majetek v [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) třída pro detekci směru textu (RTL / LTR) v dokumentu. Tato vlastnost nastavuje nebo dostává textové pokyny dokumentu uvedené v [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/documentdirection/) výčtu. Výchozí hodnota je ponechána na *right*.

Následující příklad kódu ukazuje, jak zjistit směr textu dokumentu při importu TXT souboru:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## Export hlavičky a zápatí ve výstupu TXT

Pokud chcete exportovat hlavičku a zápatí ve výstupním TXT dokumentu, můžete použít [ExportHeadersFootersMode](https://reference.aspose.com/words/net/aspose.words.saving/exportheadersfootersmode/) majetek. Tato vlastnost určuje způsob exportu hlaviček a zápatí do textového formátu.

Následující příklad kódu ukazuje, jak exportovat hlavičky a zápatí do jednoduchého formátu textu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## Exportovat seznam odsazení ve výstupu TXT

Aspose.Words zaveden [TxtListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtlistindentation/) třída, která umožňuje určit, jak jsou úrovně seznamu odsazeny při exportu do jednoduchého formátu textu. Při práci s [TxtSaveOption](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/), vá [ListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/listindentation/) vlastnost je poskytována pro upřesnění znaku, který má být použit pro odsazení úrovní seznamu a počet uvádějící, kolik znaků použít jako odsazení na jednu úroveň seznamu.

Výchozí hodnota vlastnosti znaku je '\0' udávající, že neexistuje odsazení. U vlastnosti počítání je výchozí hodnota 0, což znamená, že není vsazena.

### Použití znaku karty

Následující příklad kódu ukazuje, jak exportovat úrovně seznamu pomocí znaků karty:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### Použití prostorového znaku

Následující příklad kódu ukazuje, jak exportovat úrovně seznamu pomocí znaků mezer:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### Použití výchozího odsazení

Následující příklad kódu ukazuje, jak exportovat úrovně seznamu pomocí výchozí odsazení:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}

---
title: Přehled polí v C++
second_title: Aspose.Words pro C++
articleTitle: Přehled Polí
linktitle: Přehled Polí
description: "Pole mají podrobnosti, kódy polí a výsledky polí vysvětlené v Aspose.Words pro C++."
type: docs
weight: 10
url: /cs/cpp/fields-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words je knihovna tříd určená pro zpracování dokumentů Microsoft Word na straně serveru a podporuje pole následujícími způsoby:

- všechna pole v dokumentu jsou zachována během otevření / uložení a konverzí
- je možné aktualizovat výsledky většiny polí

V tomto článku se dozvíme více o struktuře pole, polích podporovaných v Aspose.Words a podrobnostech práce s takovými poli.

## Struktura Polí

Pole se skládá z:

- Počáteční a oddělovací uzly pole se používají k zahrnutí obsahu, který tvoří kód pole (obvykle jako prostý text).
- Oddělovač pole a konec pole zahrnují výsledek pole. To může být tvořeno různými typy obsahu od běhů textu přes odstavce až po tabulky.
- Některá pole nemusí mít oddělovač, což znamená, že celý obsah tvoří kód pole.
- Kód pole definuje chování pole a skládá se z identifikátoru pole a často dalších parametrů, jako jsou názvy polí a přepínače.
- Výsledek pole obsahuje nejnovější vyhodnocení pole. Tato hodnota je uložena v poli výsledek a je to, co se uživateli zobrazí. Některá pole nemusí mít žádné výsledky pole, takže v dokumentu nic nezobrazí. Stejně tak některá pole nemusí být aktualizována, proto také nebudou mít žádný výsledek pole.

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

Obsah, který tvoří kód pole, je uložen jako [Run](https://reference.aspose.com/words/cpp/class/aspose.words.run) uzly mezi [FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/) a [FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/). Výsledek pole je uložen mezi uzly **FieldSeparator** a [FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/) a může být tvořen různými typy obsahu. Normálně výsledek pole obsahuje pouze text složený z uzlů **Run**, je však možné, že uzel **FieldEnd** bude umístěn ve zcela jiném odstavci, a tak bude výsledek pole složen z [uzly na úrovni bloku](/words/cpp/logical-levels-of-nodes-in-a-document/) například **Table** a **Paragraph** uzly také.

Zde je pohled na to, jak je pole uloženo v Aspose.Words pomocí příkladu "*DocumentExplorer"*.

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## Pole v modelu objektu Aspose.Words dokumentu (DOM)

Když je dokument načten do Aspose.Words, pole dokumentu se načtou do [Aspose.Words Model Objektu Dokumentu](/words/cpp/aspose-words-document-object-model/) jako sada samostatných komponent (uzlů). Jedno pole je načteno jako kolekce uzlů **FieldStart**, **FieldSeparator** a **FieldEnd** spolu s obsahem mezi těmito uzly. Pokud pole nemá výsledek pole, nebude zde žádný **FieldSeparator** uzel. Všechny tyto uzly se vždy nacházejí inline (jako děti [Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph) nebo [SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/)).

V Aspose.Words každý z uzlů **FieldXXX** pochází z [FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/). Tato třída poskytuje vlastnost pro kontrolu typu pole reprezentovaného zadaným uzlem pomocí vlastnosti [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/). Například **FieldType.FieldMergeField** představuje pole sloučení v dokumentu.

{{% alert color="primary" %}}

V dokumentu Word existují některá konkrétní pole, která nejsou importována do Aspose.Words jako kolekce uzlů **FieldXXX**. Například pole `LINK` a pole `INCLUDEPICTURE` jsou importovány do Aspose.Words jako objekt `Shape`. Tento objekt poskytuje vlastnosti pro práci s obrazovými daty normálně uloženými v těchto polích. Chcete-li importovat pole `INCLUDEPICTURE` jako uzly **FieldXXX**, musí být volba [PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/) zadána jako **true**.

Pole formuláře jsou také importována do Aspose.Words jako jejich vlastní speciální třída. Třída [FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/) představuje pole formuláře v dokumentu Word a poskytuje další metody, které jsou specifické pro pole formuláře.

{{% /alert %}}

## Podporovaná Pole

Výpočet následujících polí je podporován v aktuální verzi Aspose.Words:

- = (vzorec)
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Sofistikovaná Analýza Pole

Aspose.Words sleduje způsob, jakým Microsoft Word zpracovává pole a ve výsledku správně zpracovává:

- vnořená pole:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- argument pole může být výsledkem vnořeného pole
- pole lze vnořit do kódu pole i do výsledku pole
- mezery / žádné mezery, uvozovky / žádné uvozovky, únikové znaky v polích atd.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- pole, která pokrývají více odstavců

### Pole Vzorců

Aspose.Words poskytuje velmi seriózní implementaci formula engine a podporuje následující:

- aritmetické a logické operátory:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- funkce:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- odkazy na záložky:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- přepínače formátování čísel:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Jsou podporovány následující funkce ve výrazech: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

Jen některé z výrazů `IF`, které Aspose.Words lze snadno vypočítat, by vám měly poskytnout představu o tom, jak mocná je tato funkce:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Words podporuje všechny přepínače formátování data a času dostupné v Microsoft Word, některé příklady jsou:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge pole

Aspose.Words neomezuje složitost polí Mail Merge ve vašich dokumentech a podporuje vnořená pole `IF` a vzorce a může dokonce vypočítat název slučovacího pole pomocí vzorce.

Některé příklady Mail Merge polí, které Aspose.Words podporuje:

- Mail merge přepínače polí:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- vnořená slučovací pole ve vzorci:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- Vypočítejte název pole sloučení za běhu:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- podmíněný přesun na další záznam ve zdroji dat:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Přepínače Formátu

Pole v dokumentu může obsahovat přepínače formátování, které určují, jak má být výsledná hodnota naformátována. Aspose.Words podporuje následující přepínače formátu:

- @ - formátování data a času
- \\\# - formátování čísel
- \\\\\\\\* Caps
- \\\\\\\\* FirstCap
- \\\\\\\\* Lower
- \\\\\\\\* Upper
- \\\\\\\\* CHARFORMAT - formát výsledku podle prvního znaku kódu pole
- \\\\\\\\* MERGEFORMAT - formátovat výsledek podle toho, jak se formátuje Starý výsledek

### Formátování data a čísla v polích

Když Aspose.Words vypočítá výsledek pole, často potřebuje analyzovat řetězec na hodnotu čísla nebo data a také jej naformátovat zpět na string.By výchozí Aspose.Words používá aktuální kulturu podprocesu k provádění analýzy a formátování při výpočtu hodnot polí během aktualizace polí a mail merge. K dispozici jsou také možnosti ve formě třídy [FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/), která umožňuje další kontrolu nad tím, která kultura se používá během aktualizace pole.

- ve výchozím nastavení je vlastnost [FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/) nastavena na [CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/), která formátuje pole pomocí aktuální kultury vláken
- tuto vlastnost lze nastavit na [FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/), takže pro formátování se místo toho použije jazyk nastavený z kódu pole pole

### Formátování pomocí kultury aktuálního vlákna

Chcete-li ovládat kulturu použitou při výpočtu pole, stačí před vyvoláním výpočtu pole nastavit vlastnost **CurrentCulture** na kulturu podle vašeho výběru.

Následující příklad kódu ukazuje, jak změnit kulturu použitou ve formátovacích polích během aktualizace:

EXAMPLE

Použití aktuální kultury k formátování polí umožňuje systému snadno a důsledně řídit, jak jsou všechna pole v dokumentu formátována během aktualizace polí.

### Formátování pomocí kultury v dokumentu

Na druhou stranu Microsoft Word formátuje každé jednotlivé pole na základě jazyka textu nalezeného v poli (konkrétně běhů z kódu pole). Někdy během aktualizace pole to může být požadované chování, například pokud máte globalizované dokumenty obsahující obsah složený z mnoha různých jazyků a chcete, aby každá pole ctila národní prostředí použité z textu. Aspose.Words tuto funkci také podporuje.

Třída [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) poskytuje vlastnost [FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/), která obsahuje členy, které lze použít k řízení aktualizace polí v dokumentu.

Následující příklad kódu ukazuje, jak určit, kde je vybrána kultura použitá pro formátování data během aktualizace pole a Mail Merge:

EXAMPLE

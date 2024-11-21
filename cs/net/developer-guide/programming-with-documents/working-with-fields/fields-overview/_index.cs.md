---
title: Přehled polí v C#
second_title: Aspose.Words místo .NET
articleTitle: Přehled polí
linktitle: Přehled polí
description: "Pole obsahují detaily, kódy polí a výsledky polí vysvětlené v Aspose.Words místo .NET."
type: docs
weight: 10
url: /cs/net/fields-overview/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words je třídní knihovna určená pro zpracování na straně serveru Microsoft Word dokumenty a podporuje pole těmito způsoby:

- všechna pole v dokumentu jsou zachována během otevřených/spasených a konverzí
- je možné aktualizovat výsledky většiny polí

V tomto článku se dozvíme více o struktuře terénu, podpořených oblastech Aspose.Words, a podrobnosti o práci s těmito poli.

## Struktura pole

Pole sestává z:

- Spouštěcí a oddělovačové uzly pole se používají k pokrytí obsahu, který tvoří kód pole (obvykle jako prostý text).
- Oddělovač pole a konec pole zahrnuje výsledek pole. To může být tvořeno různými typy obsahu od průběhu textu po odstavce až po tabulky.
- Některá pole nemusí mít oddělovač, což znamená, že celý obsah tvoří kód pole.
- Kód pole definuje chování pole a je tvořen identifikátorem pole a často dalšími parametry, jako je název pole a přepínače.
- Výsledkem oboru je nejnovější hodnocení oboru. Tato hodnota se uloží do výsledku pole a zobrazí se uživateli. Některá pole nemusí mít žádný výsledek pole, takže se v dokumentu nic nezobrazí. Stejně tak nemusí být některá pole aktualizována, a proto nebude mít výsledek ani pole.

![fields-aspose-words](/words/net/fields-overview/fields-overview-1.png)

Obsah, který tvoří kód pole, je uložen jako [Run](https://reference.aspose.com/words/net/aspose.words/run/) uzly mezi [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) a [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/). Výsledek pole je uložen mezi **FieldSeparator** a [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) uzly a mohou být složeny z různých typů obsahu. Normálně výsledek pole obsahuje pouze text tvořený **Run** uzly, nicméně je možné pro **FieldEnd** uzel se nachází v úplně jiném odstavci, a tím se výsledek pole skládá z [Logické úrovně uzlů v dokumentu](/words/cs/net/logical-levels-of-nodes-in-a-document/) jako **Table** a **Paragraph** Taky uzly.

Zde je pohled na to, jak je pole uloženo v Aspose.Words Použitím příkladu "DocumentExplorer" *, který lze nalézt na [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/net/fields-overview/fields-overview-2.png)

## Pole Aspose.Words Document Object Model (DOM)

Při načtení dokumentu Aspose.Words, pole dokumentu jsou vložena do [Aspose.Words Document Object Model (DOM)](/words/cs/net/aspose-words-document-object-model/) jako sada samostatných součástí (nod). Jedno pole je naloženo jako sbírka **FieldStart**, **FieldSeparator** a **FieldEnd** uzly spolu s obsahem mezi těmito uzly. Pokud pole nemá výsledek pole pak nebude **FieldSeparator** Uzel. Všechny tyto uzly jsou vždy nalezeny inline (jako děti [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) nebo [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/).

In Aspose.Words každý z **FieldXXX** uzly pocházejí z [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/). Tato třída poskytuje vlastnost pro kontrolu typu pole zastoupeného daným uzlem prostřednictvím [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) majetek. Například **FieldType.FieldMergeField** představuje pole sloučení v dokumentu.

{{% alert color="primary" %}}

Existují určitá pole, která existují v dokumentu Slovo, které nejsou dováženy do Aspose.Words jako kolekce **FieldXXX** uzly. Například, `LINK` pole a `INCLUDEPICTURE` pole se dováží do Aspose.Words jako [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) objekt. Tento objekt poskytuje vlastnosti pro práci s obrazovými daty běžně uloženými v těchto polích. Importovat `INCLUDEPICTURE` pole jako **FieldXXX** uzel [PreserveIncludePictureField](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/preserveincludepicturefield/) možnost musí být specifikována jako **true**.

Tisková pole jsou také dovážena do Aspose.Words jako vlastní speciální třída. • [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) třída představuje pole formuláře v dokumentu Word a poskytuje další metody, které jsou specifické pro pole formuláře.

{{% /alert %}}

## Podporovaná pole

Výpočet následujících polí je podporován v aktuální verzi Aspose.Words:

- = (formula)
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

## Sofistikovaná analýza pole

Aspose.Words Následuje cestu Microsoft Word zpracovává pole a v důsledku toho správně zpracovává:

- hnízdiště:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- argument pole může být výsledkem hnízditého pole
- pole mohou být vnořena do kódu pole i do výsledku pole
- prostory/bez mezer, uvozovky/bez kotací, únikové znaky v polích atd.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- pole, která se pohybují napříč více odstavci

### Vzorová pole

Aspose.Words poskytuje velmi závažné provedení vzorce motoru a podporuje:

- aritmetické a logické operátory:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- funkce:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- odkazy na záložky:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- formátovací spínače čísel:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Podporují se tyto funkce v výrazech: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` a `COMPARE` Pole

Jen některé z `IF` výrazy, které Aspose.Words může snadno vypočítat by vám měl dát představu o tom, jak mocná tato funkce je:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` a `TIME` Pole

Aspose.Words podporuje všechny přepínače pro formátování dat a času dostupné v Microsoft Word, Některé příklady jsou:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Pole

Aspose.Words neukládá žádné omezení složitosti mail merge pole ve vašich dokumentech a podporuje vnořené `IF` a pole vzorce a může dokonce vypočítat název pole sloučení pomocí vzorce.

Některé příklady mail merge pole, která Aspose.Words podpora:

- Mail merge přepínače polí:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- vnořená pole sloučení ve vzorci:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- vypočítá název pole sloučení v runtime:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- podmíněný přesun do dalšího záznamu ve zdroji dat:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Formátové přepínače

Pole v dokumentu může mít formátovací přepínače, které určují, jak má být výsledná hodnota formátována. Aspose.Words podporuje tyto formátové spínače:

- \\\ @ ~ datum a formátování času
- Formátování čísel
-\\\* Kapsy
-\\\* FirstCap
-\\\* níž
-\\\* Horní
-\\\* CHARFORMAT formát výsledek podle prvního znaku kódu pole
-\\\* MERGEFORMAT formát výsledek podle toho, jak je starý výsledek formátován

### Date a formátování čísel v polích

Kdy? Aspose.Words počítá výsledek pole, často je třeba propojit řetězec s hodnotou čísla nebo data a také jej formátovat zpět do řetězce. Výchozí Aspose.Words při výpočtu hodnot polí při aktualizaci pole a mail merge. Existují také možnosti poskytované v podobě [FieldOptions](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/) třída, která umožňuje další kontrolu, která kultura se používá při aktualizaci pole.

- ve výchozím nastavení [FieldUpdateCultureSource](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/) vlastnost je nastavena na [CurrentThread](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) které formátují pole pomocí současné kultury vláken
- tuto vlastnost lze nastavit na [FieldCode](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) takže jazyk nastavený z kódu pole pole je použit pro formátování místo

### Formátování pomocí současné kultury vláken

Pro kontrolu kultury použité při výpočtu pole stačí nastavit **Thread.CurrentThread.CurrentCulture** vlastnost kultury dle vašeho výběru před vyvoláním výpočtu pole.

Následující příklad kódu ukazuje, jak změnit kulturu použitou ve formátovacích polích během aktualizace:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

Pomocí současné kultury formátovat pole umožňuje systém snadno a důsledně kontrolovat, jak jsou všechna pole v dokumentu formátována během aktualizace pole.

### Formátování pomocí kultury v dokumentu

Na druhou stranu, Microsoft Word formátuje každé jednotlivé pole založené na jazyku textu nalezeného v poli (specificky běží od kódu pole). Někdy během aktualizace pole to může být žádoucí chování, například pokud máte globalizované dokumenty obsahující obsah tvořený z mnoha různých jazyků a chtěli byste, aby každé pole uctívalo místo použité z textu. Aspose.Words podporuje tuto funkci.

• [Document](https://reference.aspose.com/words/net/aspose.words/document/) třída [FieldOptions](https://reference.aspose.com/words/net/aspose.words/document/fieldoptions/) vlastnost, která obsahuje členy, které lze použít pro kontrolu toho, jak jsou pole aktualizována v dokumentu.

Následující příklad kódu ukazuje, jak určit, kde kultura použitá pro formátování dat během aktualizace pole a mail merge je vybrán z:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}

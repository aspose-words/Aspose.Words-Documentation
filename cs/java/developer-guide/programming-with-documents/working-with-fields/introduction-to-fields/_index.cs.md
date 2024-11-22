---
title: Úvod do polí v Java
second_title: Aspose.Words místo Java
articleTitle: Úvod do polí
linktitle: Úvod do polí
description: "Pole obsahují detaily, kódy polí a výsledky polí vysvětlené v Aspose.Words místo Java."
type: docs
weight: 10
url: /cs/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words je třídní knihovna určená pro zpracování na straně serveru Microsoft Word dokumenty a podporuje pole těmito způsoby:

- všechna pole v dokumentu jsou zachována během otevřených/spasených a konverzí
- je možné aktualizovat výsledky většiny polí

V tomto článku se dozvíme více o struktuře terénu, podpořených oblastech Aspose.Words, a podrobnosti o práci s těmito poli.

## Struktura pole

Pole sestává z:

- Spouštěcí a oddělovačové uzly pole se používají k pokrytí obsahu, který tvoří kód pole (obvykle jako prostý text).
- Oddělovač pole a konec pole zahrnuje výsledek pole. To se může skládat z různých typů obsahu od průběhu textu po odstavce až po tabulky.
- Některá pole nemusí mít oddělovač, což znamená, že celý obsah tvoří kód pole.
- Kód pole definuje chování pole a je tvořen identifikátorem pole a často dalšími parametry, jako je název pole a přepínače.
- Výsledkem oboru je nejnovější hodnocení oboru. Tato hodnota se uloží do výsledku pole a zobrazí se uživateli. Některá pole nemusí mít žádný výsledek pole, takže se v dokumentu nic nezobrazí. Stejně tak nemusí být některá pole aktualizována, a proto nebude mít výsledek ani pole.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

Obsah, který tvoří kód pole, je uložen jako [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) uzly mezi [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) a [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/). Výsledek pole je uložen mezi **FieldSeparator** a [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) uzly a mohou být složeny z různých typů obsahu. Normálně výsledek pole obsahuje pouze text tvořený uzly Run, nicméně je možné, aby se uzel FieldEnd nacházel v úplně jiném odstavci, a tím se výsledek pole skládá z [Logické orgány v dokumentu](/words/cs/java/logical-levels-of-nodes-in-a-document/) např. **Table** a **Paragraph** Taky uzly.

Zde je pohled na to, jak je pole uloženo v Aspose.Words pomocí příkladu [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer).

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## Pole Aspose.Words Document Object Model (DOM)

Při načtení dokumentu Aspose.Words, pole dokumentu jsou naložena do Aspose.Words Document Object Model jako sada samostatných součástí (nod). Jedno pole je naloženo jako sbírka **FieldStart**, **FieldSeparator** a **FieldEnd** uzly spolu s obsahem mezi těmito uzly. Pokud pole nemá výsledek pole, pak nebude **FieldSeparator** Uzel. Všechny tyto uzly jsou vždy nalezeny inline (jako děti [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) nebo [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/).

In Aspose.Words každý z **FieldXXX** uzly pocházejí z [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/). Tato třída poskytuje vlastnost pro kontrolu typu pole zastoupeného daným uzlem prostřednictvím [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) majetek. Například `FieldType.FieldMergeField` představuje pole sloučení v dokumentu.

{{% alert color="primary" %}}

Existují určitá pole, která existují v dokumentu Word, který není dovezen do Aspose.Words jako kolekce **FieldXXX** uzly. Například, `LINK` pole a `INCLUDEPICTURE` pole se dováží do Aspose.Words jako [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) objekt. Tento objekt poskytuje vlastnosti pro práci s obrazovými daty běžně uloženými v těchto polích. Importovat `INCLUDEPICTURE` pole jako **FieldXXX** uzel [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) možnost musí být specifikována jako **true**.

Tisková pole jsou také dovážena do Aspose.Words jako jejich vlastní speciální třída. The [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) třída představuje pole formuláře v dokumentu Word a poskytuje další metody, které jsou specifické pro formulářové pole.

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
- `TOC` (včetně TOP a TOP)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Sofistikovaná analýza pole

Aspose.Words Následuje cestu Microsoft Word zpracovává pole a v důsledku toho správně zpracovává:

- hnízdiště:
  `IF { =OR({ `COMPARE` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- pole argument může být výsledkem hnízdiště
- pole mohou být vnořena do kódu pole i do výsledku pole
- prostory / žádné prostory, uvozovky / žádné uvozovky, únikové znaky v polích atd.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- pole, která přesahují více odstavců

### Vzorová pole

Aspose.Words poskytuje velmi závažné provedení vzorce motoru a podporuje:

- aritmetické a logické operátory:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- funkce:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- odkazy na záložky:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- formátovací spínače:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Jsou podporovány následující funkce v výrazech: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` a `COMPARE` Pole

Jen některé z `IF` výrazy, které Aspose.Words může snadno vypočítat by vám měl dát představu o tom, jak mocná tato vlastnost je:

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

Aspose.Words neukládá žádné omezení složitosti Mail Merge pole ve vašich dokumentech a podporuje vnořené `IF` a pole vzorce a může dokonce vypočítat název pole sloučení pomocí vzorce.

Některé příklady Mail Merge pole, která Aspose.Words podpora:

- Mail merge přepínače polí:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- vnořená pole sloučení ve vzorci:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- vypočítá název pole sloučení v runtime:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- podmíněný přesun na další záznam ve zdroji dat:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Formátové přepínače

Pole v dokumentu může mít formátovací spínače, které stanoví, jak by měla být výsledná hodnota formátována. Aspose.Words podporuje tyto formátové spínače:

- @ @ @ @ info: whatsthis
- Formátování čísel
-\\\\\\\\* Víčka
-\\\\\\\* FirstCap
-\\\\\\\\* Níž
-\\\\\\\\* Horní
-\\\\\\\\* CHARFORMAT formát výsledek podle prvního znaku kódu pole
-\\\\\\\ \* MERGEFORMAT formátu výsledek podle toho, jak je starý výsledek formátován

### Date a formátování čísel v polích

Kdy? Aspose.Words vypočítá výsledek pole, často je třeba propojit řetězec s hodnotou čísla nebo data a také jej formátovat zpět do řetězce. Výchozí Aspose.Words využívá současnou kulturu vláken k provedení analýzy a formátování při výpočtu hodnot polí během aktualizace pole a mail merge. Existují také možnosti poskytované v podobě [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) třída, která umožňuje další kontrolu, nad kterou se kultura používá při aktualizaci pole%

* ve výchozím nastavení [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) vlastnost je nastavena na [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) který formátuje pole pomocí současné kultury vláken
* tuto vlastnost lze nastavit na [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) takže jazyk nastavený z kódu pole pole je použit pro formátování místo

### Formátování pomocí současné kultury vláken

Pro kontrolu kultury použité při výpočtu pole stačí nastavit **CurrentCulture** vlastnost do kultury dle vašeho výběru před vyvoláním výpočtu pole.

Následující příklad kódu ukazuje, jak změnit kulturu použitou ve formátovacích polích během aktualizace:

PŘÍKLAD (použijte veřejný obal CurrentThreadSettings.getLocale() a nastavitLocale() místo soukromého `Thread.CurrentThread`.CurrentCulture)

Použití současné kultury k formátování polí umožňuje systému snadno a důsledně kontrolovat, jak jsou všechna pole v dokumentu formátována během aktualizace pole.

### Formátování pomocí kultury v dokumentu

Na druhou stranu, Microsoft Word formátuje každé jednotlivé pole založené na jazyku textu nalezeného v poli (specificky běží od kódu pole). Někdy během aktualizace pole to může být žádoucí chování, například pokud máte globalizované dokumenty obsahující obsah tvořený mnoha různými jazyky a chtěli byste, aby každé pole uctívalo místo použité z textu. Aspose.Words podporuje tuto funkci.

The [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) třída [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) vlastnost, která obsahuje členy, které lze použít pro kontrolu toho, jak jsou pole aktualizována v dokumentu.

Následující příklad kódu ukazuje, jak určit, kde kultura použitá pro formátování dat během aktualizace pole a Mail Merge je vybrán z:

PŘÍKLAD

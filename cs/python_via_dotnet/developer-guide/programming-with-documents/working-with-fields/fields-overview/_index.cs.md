---
title: Přehled polí v Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Přehled polí
linktitle: Přehled polí
description: "Můžete přistupovat k poli modifikace pomocí Python. Pole dokumentu jsou vložena do Aspose.Words Document Object Model (DOM)."
type: docs
weight: 10
url: /cs/python-net/fields-overview/
timestamp: 2024-10-21-11-17-44
---


Obvykle pole, je-li vložen do Microsoft Word, již obsahuje aktuální hodnotu. Například pokud je pole vzorec nebo číslo stránky, bude obsahovat správnou vypočtenou hodnotu pro danou verzi dokumentu. Pokud však máte aplikaci, která vytváří nebo modifikuje dokument s poli (např. kombinuje dva dokumenty nebo se zabydluje s daty), pak by měla být všechna pole ideálně aktualizována.

Pole sestává z:

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- Spouštěcí a oddělovačové uzly pole se používají k pokrytí obsahu, který tvoří kód pole (obvykle jako prostý text)
- Oddělovač pole a konec pole zahrnuje výsledek pole. To může být tvořeno různými typy obsahu od průběhu textu po odstavce až po tabulky.
- Některá pole nemusí mít oddělovač, což znamená, že celý obsah tvoří kód pole.
- Kód pole definuje chování pole a je tvořen identifikátorem pole a často dalšími parametry, jako je název pole a přepínače.
- Výsledkem oboru je nejnovější hodnocení oboru. Tato hodnota se uloží do výsledku pole a zobrazí se uživateli. Některá pole nemusí mít žádný výsledek pole, takže se v dokumentu nic nezobrazí. Stejně tak nemusí být některá pole aktualizována, a proto nebude mít výsledek ani pole.

Zde je pohled na to, jak je pole uloženo v Aspose.Words Použitím příkladu "DocumentExplorer" *, který lze nalézt na [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words je třídní knihovna určená pro zpracování na straně serveru Microsoft Word dokumenty a podporuje pole těmito způsoby:

- Všechna pole v dokumentu jsou zachována při otevření/zachování a konverzi.
- Je možné aktualizovat výsledky některých z nejpopulárnějších polí.

## Pole Microsoft Word

Pole Microsoft Word Dokumenty jsou složité. Existuje více než 50 typů polí (každý potřebuje svůj vlastní postup výpočtu výsledků), vzorce a výrazy, záložky a reference, funkce a různé přepínače. Pole mohou být také hnízdit. Obvykle při otevření dokumentu je výsledek pole (hodnota pole) uveden pro všechna pole v dokumentu. Můžete přepnout zobrazení výsledků pole nebo kódy pole v Microsoft Word pro všechna pole lisováním **ALT+F9**.

| Kód pole | Výsledek pole |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### Vkládání polí do Microsoft Word

Pro vložení pole do Microsoft Word:

1. Klikněte na **Insert** menu.
1. Klikněte na **Quick Parts** menu
1. Vybrat **Field**
1. Jste prezentován s obrazovkou, která vám umožní zadat detaily pole. Na levé straně je uveden seznam možných polí a na pravé straně je obrazovka pro vizuální úpravu vlastností pole.<br/>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1. Navíc můžete stisknout **Field Codes** tlačítko, které vám umožní přímo zapsat kód pole.<br/>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1. Přepínače lze také vložit pomocí **Options** tlačítko<br/>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1. Pomocí obou metod vyplňte požadovaná pole vhodnými informacemi a stiskněte **Ok**.
1. Pole se vkládá do dokumentu v aktuální pozici kurzoru.<br/>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### Aktualizace polí v Microsoft Word

Aktualizovat jedno pole v Microsoft Word:

1. Přesuňte péči do pole, které chcete aktualizovat.
1. Tisk **F9** aktualizovat pole.

Pro aktualizaci všech polí v Microsoft Word:

1. Tisk **Ctrl+A** zvolit veškerý obsah v dokumentu.
1. Tisk **F9** aktualizovat všechna pole ve výběru.

### Přepínání mezi zobrazením kódu pole a výsledkem pole

Přepnout kódy polí jednoho pole v Microsoft Word:

1. Přesuňte péči do požadovaného pole.
1. Tisk **SHIFT+F9** přepnout kód pole jen pro toto pole.

Přepnout kódy polí všech polí v Microsoft Word:

1. Tisk **ALT+F9**

### Převod polí na statický text v Microsoft Word

Převést dynamické pole na statický text v Microsoft Word:

1. Přesuňte péči do pole, které chcete převést.
1. Tisk **Ctrl+Shift+F9** převést pole na statický text.

### Odstranění pole v Microsoft Word

Odstranit pole v Microsoft Word:

1. Vyberte celý obsah tvořící pole. Pokud jsou kódy polí zobrazeny, je třeba vybrat i otevírací a koncová rovnátka.
1. Tisk **Delete** odstranit celé pole.

## Pole Aspose.Words

Při načtení dokumentu <span notrans="<span notrans=" Aspose.Words"=""></span>,? pole dokumentu jsou vložena do Aspose.Words Document Object Model jako sada samostatných součástí (nod). Jedno pole je naloženo jako sbírka [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) a [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) uzly spolu s obsahem mezi těmito uzly. Pokud pole nemá výsledek pole pak nebude [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) Uzel. Všechny tyto uzly jsou vždy nalezeny inline (jako děti [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) nebo [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/).

Obsah, který tvoří kód pole, je uložen jako [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) uzly mezi [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) a [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Výsledek pole je uložen mezi [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) a [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) uzly a mohou být složeny z různých typů obsahu. Normálně výsledek pole obsahuje pouze text tvořený [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) uzly, nicméně je možné pro [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) uzel, který má být umístěn v úplně jiném odstavci, a tak výsledek pole se skládá z blokové úrovně uzlů, jako je [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) a [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) Taky uzly.

In Aspose.Words každý z **FieldXXX** uzly pocházejí z [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/). Tato třída poskytuje vlastnost pro kontrolu typu pole zastoupeného daným uzlem prostřednictvím [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/) majetek. Například [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) představuje pole sloučení v dokumentu.

{{% alert color="primary" %}}

Existují určitá pole, která existují v dokumentu Slovo, které nejsou dováženy do Aspose.Words jako kolekce **FieldXXX** uzly. Například, `LINK` pole a `INCLUDEPICTURE` pole se dováží do Aspose.Words jako [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) objekt. Tento objekt poskytuje vlastnosti pro práci s obrazovými daty běžně uloženými v těchto polích.

Tisková pole jsou také dovážena do Aspose.Words jako vlastní speciální třída. • [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) třída představuje pole formuláře v dokumentu Word a poskytuje další metody, které jsou specifické pro pole formuláře.

{{% /alert %}}

### Pole podporována během aktualizace

Výpočet následujících polí je podporován v aktuální verzi Aspose.Words:

- = (formule pole)
- `ADDRESSBLOCK`
- `AUTHOR`
- `COMPARE`
- `CREATEDATE`
- `DATE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `GREETINGLINE`
- `IF`
- `INCLUDETEXT`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NUMPAGES`
- `PAGE`
- `PAGEREF`
- `REF`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `STYLEREF`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (včetně TT a TF)
- TC

### Sofistikované zkoumání

Aspose.Words Následuje cestu Microsoft Word zpracovává pole a v důsledku toho správně zpracovává:

- Vyčištěná pole
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- Hádka v terénu může být důsledkem hnízda.
- Pole mohou být vnořena do kódu pole i do výsledku pole.
- Prostory / žádné prostory, citace / žádné citace, únikové znaky v polích atd.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- Pole, která se pohybují napříč několika odstavci.

#### Vzorová pole

Aspose.Words poskytuje velmi závažné provedení vzorce motoru a podporuje:

- Aritmetické a logické operátory:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Funkce:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- Odkazy na záložky:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- Formátovací spínače:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Podporují se tyto funkce v výrazech: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

#### `IF` a `COMPARE` Pole

Jen některé z `IF` výrazy, které Aspose.Words může snadno vypočítat by vám měl dát představu o tom, jak mocná tato funkce je:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### `DATE` a `TIME` Pole

Aspose.Words podporuje všechny přepínače pro formátování dat a času dostupné v Microsoft Word, Některé příklady jsou:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Mail Merge Pole

Aspose.Words neukládá žádné omezení složitosti mail merge pole ve vašich dokumentech a podporuje vnořené `IF` a pole vzorce a může dokonce vypočítat název pole sloučení pomocí vzorce.

Některé příklady mail merge pole, která Aspose.Words podpora:

- Mail merge přepínače polí:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- Vyčištěná pole sloučení ve vzorci:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- Vypočítejte název pole sloučení v runtime:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- Podmíněný přesun do dalšího záznamu ve zdroji dat:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

#### Formátové přepínače

Pole v dokumentu může mít formátovací přepínače, které určují, jak má být výsledná hodnota formátována. Aspose.Words podporuje tyto formátové spínače:

- @ - datum a formátování času
-\\\# - formátování čísel
-\\\\\\\\* Víčka
-\\\\\\\\* FirstCap
-\\\\\\\\* Níž
-\\\\\\\\* Horní
-\\\\\\\\* CHARFORMAT formát výsledek podle prvního znaku kódu pole.
-\\\\\\\\* MERGEFORMAT formát výsledek podle toho, jak starý výsledek je formátován.

#### Date a formátování čísel v polích

Kdy? Aspose.Words počítá výsledek pole, často je třeba propojit řetězec s hodnotou čísla nebo data a také jej formátovat zpět do řetězce. Výchozí Aspose.Words při výpočtu hodnot polí při aktualizaci pole a mail merge. Existují také možnosti poskytované v podobě [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/) třída, která umožňuje další kontrolu, která kultura se používá při aktualizaci pole.

- Ve výchozím nastavení [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) vlastnost je nastavena na [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread) který formátuje pole pomocí současné kultury vláken.
- Tato vlastnost může být nastavena [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code) takže jazyk nastavený z kódu pole pole se místo toho používá pro formátování.

#### Formátování pomocí současné kultury vláken

Pro kontrolu kultury používané při výpočtu pole stačí použít **locale.setlocale** metoda nastavení kultury dle vašeho výběru před vyvoláním výpočtu pole.
Níže uvedený příklad ukazuje, jak změnit kulturu použitou ve formátovacích polích během aktualizace.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

Pomocí současné kultury formátovat pole umožňuje systém snadno a důsledně kontrolovat, jak jsou všechna pole v dokumentu formátována během aktualizace pole.

#### Formátování pomocí kultury v dokumentu

Na druhou stranu, Microsoft Word formátuje každé jednotlivé pole založené na jazyku textu nalezeného v poli (specificky běží od kódu pole). Někdy během aktualizace pole to může být žádoucí chování, například pokud máte globalizované dokumenty obsahující obsah tvořený z mnoha různých jazyků a chtěli byste, aby každé pole uctívalo místo použité z textu. Aspose.Words podporuje tuto funkci.

• [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) třída [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) vlastnost, která obsahuje členy, které lze použít pro kontrolu toho, jak jsou pole aktualizována v dokumentu. Níže uvedený příklad ukazuje, jak určit, kde kultura použitá pro formátování dat během aktualizace pole a mail merge je vybrán.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## Nalezení kódu pole a výsledku pole

Pole, které se vkládá pomocí [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) vrací a [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) objekt. Jedná se o třídu fasády, která poskytuje užitečné metody, jak rychle najít takové vlastnosti pole. Poznámka, pokud hledáte pouze jména polí sloučení v dokumentu, pak můžete místo toho použít vestavěnou metodu [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/). Níže uvedený příklad ukazuje, jak získat jména všech polí sloučení v dokumentu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## Jak přejmenovat pole sloučení

Níže uvedený příklad ukazuje, jak přejmenovat pole sloučení v dokumentu Word.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

---
title: K vložení prvků dokumentu použijte DocumentBuilder
second_title: Aspose.Words pro C++
articleTitle: K vložení prvků dokumentu použijte DocumentBuilder
linktitle: K vložení prvků dokumentu použijte DocumentBuilder
type: docs
description: "Vložte prvky dokumentu pomocí nástroje pro tvorbu dokumentů do C++."
weight: 80
url: /cs/cpp/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

`DocumentBuilder` se používá k úpravě dokumentů. Tento článek vysvětluje a popisuje, jak provádět řadu úkolů:

## Vložení řetězce textu

Jednoduše předejte řetězec textu, který potřebujete vložit do dokumentu, metodě `DocumentBuilder.Write`. Formátování textu je určeno vlastností `Font`. Tento objekt obsahuje různé atributy písma (název písma, velikost písma, barvu atd.). Některé důležité atributy písma jsou také reprezentovány vlastnostmi DocumentBuilder, které vám umožňují přímý přístup k nim. Jedná se o Booleovské vlastnosti `Font.Bold`, `Font.Italic` a `Font.Underline`.

Formátování znaků, které nastavíte, se bude vztahovat na veškerý text vložený z aktuální pozice v dokumentu dále.

Níže uvedený příklad vloží formátovaný text pomocí DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## Vložení odstavce

 `DocumentBuilder.Writeln` vloží do dokumentu také řetězec textu, ale navíc přidá konec odstavce. Aktuální formátování písma je také určeno vlastností `DocumentBuilder.Font` a aktuální formátování odstavce je určeno vlastností `DocumentBuilder.ParagraphFormat`. Níže uvedený příklad ukazuje, jak vložit odstavec do dokumentu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Vložení tabulky

Základní algoritmus pro vytvoření tabulky pomocí DocumentBuilder je jednoduchý:

1. Začněte tabulku pomocí `DocumentBuilder.StartTable`.
1. Vložte buňku pomocí `DocumentBuilder.InsertCell`. Tím se automaticky spustí nový řádek. V případě potřeby použijte vlastnost `DocumentBuilder.CellFormat` k určení formátování buněk.
1. Vložte obsah buňky pomocí metod `DocumentBuilder`.
1. Opakujte kroky 2 a 3, dokud není řádek dokončen.
1. Volání `DocumentBuilder.EndRow` pro ukončení aktuálního řádku. V případě potřeby použijte vlastnost `DocumentBuilder.RowFormat` k určení formátování řádků.
1. Opakujte kroky 2-5, dokud není tabulka kompletní.
1. Zavolejte `DocumentBuilder.EndTable` a dokončete stavbu stolu. Příslušné metody vytváření tabulek DocumentBuilder jsou popsány níže.

### Spuštění tabulky

Volání `DocumentBuilder.StartTable` je prvním krokem při vytváření tabulky. Lze jej také nazvat uvnitř buňky, v takovém případě spustí vnořenou tabulku. Další způsob volání je `DocumentBuilder.InsertCell`.

### Vložení buňky

Po volání `DocumentBuilder->InsertCell` se vytvoří nová buňka a veškerý obsah, který přidáte pomocí jiných metod třídy `DocumentBuilder`, bude přidán do aktuální buňky. Chcete-li spustit novou buňku ve stejném řádku, zavolejte znovu `DocumentBuilder->InsertCell`. K určení formátování buňky použijte vlastnost `DocumentBuilder.CellFormat`. Vrátí objekt `CellFormat`, který představuje veškeré formátování buňky tabulky.

### Ukončení řádku

Zavolejte `DocumentBuilder.EndRow` a dokončete aktuální řádek. Pokud zavoláte `DocumentBuilder->InsertCell` ihned poté, pak tabulka pokračuje na novém řádku.

K určení formátování řádků použijte vlastnost `DocumentBuilder.RowFormat`. Vrátí objekt `RowFormat`, který představuje veškeré formátování pro řádek tabulky.

### Ukončení stolu

Zavolejte `DocumentBuilder.EndTable` a dokončete aktuální tabulku. Tato metoda by měla být volána pouze jednou po volání `DocumentBuilder->EndRow`. Při volání `DocumentBuilder.EndTable` přesune kurzor z aktuální buňky na pozici těsně za tabulkou. Následující příklad ukazuje, jak vytvořit formátovanou tabulku, která obsahuje 2 řádky a 2 sloupce.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## Vložení přestávky

Pokud chcete explicitně začít nový řádek, odstavec, sloupec, oddíl nebo stránku, zavolejte `DocumentBuilder.InsertBreak`. Předejte této metodě Typ přestávky, kterou potřebujete vložit, který je reprezentován výčtem `BreakType`. Níže uvedený příklad ukazuje, jak vložit konce stránek do dokumentu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## Vložení obrázku

DocumentBuilder poskytuje několik přetížení metody `DocumentBuilder->InsertImage`, která umožňuje vložit vložený nebo plovoucí obrázek. Pokud je obrázek metasoubor EMF nebo WMF, bude do dokumentu vložen ve formátu metasouboru. Všechny ostatní obrázky budou uloženy ve formátu PNG. Metoda `DocumentBuilder->InsertImage` může používat obrázky z různých zdrojů:

- Ze souboru nebo `URL` předáním parametru řetězce `DocumentBuilder->InsertImage`.
- Z proudu předáním parametru `Stream` `DocumentBuilder->InsertImage`.
- Z obrazového objektu předáním parametru obrázku `DocumentBuilder->InsertImage`.
- Z bajtového pole předáním parametru bajtového pole `DocumentBuilder.InsertImage`.Pro každou z metod `DocumentBuilder->InsertImage` existují další přetížení, která vám umožní vložit obrázek s následujícími možnostmi:
- Inline nebo plovoucí na konkrétní pozici, například `DocumentBuilder->InsertImage`.
- Procentuální měřítko nebo vlastní velikost, například `DocumentBuilder.InsertImage`. Metoda `DocumentBuilder->InsertImage` navíc vrací objekt `Shape`, který byl právě vytvořen a vložen, takže můžete dále upravovat vlastnosti tvaru.

### Vložení vloženého obrázku

Předáním jednoho řetězce představujícího soubor, který obsahuje obrázek, `DocumentBuilder->InsertImage` vložte obrázek do dokumentu jako vloženou grafiku. Níže uvedený příklad ukazuje, jak vložit vložený obrázek na pozici kurzoru do dokumentu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### Vložení plovoucího (absolutně umístěného) obrázku

Tento příklad vloží plovoucí obrázek ze souboru nebo `URL` na zadanou pozici a velikost.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## Vložení záložky

Chcete-li do dokumentu vložit záložku, postupujte takto:

1. Zavolejte `DocumentBuilder->StartBookmark` předáním požadovaného názvu záložky.
1. Vložte text záložky pomocí metod DocumentBuilder.
1. Zavolejte `DocumentBuilder.EndBookmark` a předejte mu stejný název, jaký jste použili s **DocumentBuilder->StartBookmark**.
1. Záložky se mohou překrývat a pokrývat jakýkoli rozsah. Chcete-li vytvořit platnou záložku, musíte zavolat `DocumentBuilder->StartBookmark` i `DocumentBuilder->EndBookmark` se stejným názvem záložky.

{{% alert color="primary" %}}

Špatně vytvořené záložky nebo záložky s duplicitními názvy budou při uložení dokumentu ignorovány.

{{% /alert %}}

Níže uvedený příklad ukazuje, jak vložit záložku do dokumentu pomocí nástroje pro tvorbu dokumentů.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## Vložení pole `Form`

Pole formuláře jsou konkrétním případem polí Word, která umožňují "interakci" s uživatelem. Pole formuláře v Microsoft Word zahrnují textové pole, pole se seznamem a checkbox.DocumentBuilder poskytuje speciální metody pro vložení každého typu pole formuláře do dokumentu: `DocumentBuilder.InsertTextInput`, `DocumentBuilder->InsertCheckBox` a `DocumentBuilder.InsertComboBox`. Všimněte si, že pokud zadáte název pole formuláře, automaticky se vytvoří záložka se stejným názvem.

### Vkládání textu

 `DocumentBuilder.InsertTextInput` pro vložení textového pole do dokumentu. Níže uvedený příklad ukazuje, jak vložit pole formuláře pro zadávání textu do dokumentu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### Vložení zaškrtávacího políčka

Zavolejte `DocumentBuilder.InsertCheckBox` a vložte checkbox do dokumentu. Níže uvedený příklad ukazuje, jak vložit pole formuláře checkbox do dokumentu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### Vložení pole se seznamem

Zavolejte `DocumentBuilder.InsertComboBox` a vložte do dokumentu pole se seznamem. Níže uvedený příklad ukazuje, jak vložit pole formuláře se seznamem do dokumentu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## Vložení národního prostředí na úrovni pole

Zákazníci mohou nyní určit národní prostředí na úrovni pole a mohou dosáhnout lepší kontroly. ID národního prostředí lze přiřadit ke každému poli uvnitř DocumentBuilder. Níže uvedené příklady ilustrují, jak tuto možnost využít.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## Vložení hypertextového odkazu

Pomocí `DocumentBuilder.InsertHyperlink` vložte hypertextový odkaz do dokumentu. Tato metoda přijímá tři parametry: text odkazu, který se má zobrazit v dokumentu, cíl odkazu (URL nebo název záložky uvnitř dokumentu) a booleovský parametr, který by měl být pravdivý, pokud `URL` je název záložky uvnitř dokumentu.DocumentBuilder.InsertHyperlink interně volá `DocumentBuilder.InsertField`.Metoda vždy přidává apostrofy na začátek a konec URL. Všimněte si, že musíte zadat formátování písma pro text zobrazení hypertextového odkazu explicitně pomocí vlastnosti `Font`. Níže uvedený příklad vloží hypertextový odkaz do dokumentu pomocí DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Vložení Ole Objektu

Pokud chcete Ole objekt volání `DocumentBuilder.InsertOleObject`. Předejte této metodě `ProgId` explicitně s dalšími parametry. Níže uvedený příklad ukazuje, jak vložit objekt Ole do dokumentu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## Při vkládání Ole objektu Nastavte název souboru a příponu

OLE package je starší a" nezdokumentovaný " způsob uložení vloženého objektu, pokud není známa obslužná rutina OLE. Rané verze Windows, jako jsou Windows 3.1, 95 a 98, měly aplikaci Packager.exe, kterou lze použít k vložení jakéhokoli typu dat do dokumentu. Nyní je tato aplikace vyloučena z Windows, ale MS Word a další aplikace ji stále používají k vložení dat, pokud OLE handler chybí nebo není znám. Třída OlePackage umožňuje přístup k vlastnostem OLE Package. Níže uvedený příklad ukazuje, jak nastavit název souboru, příponu a zobrazovaný název pro OLE Package.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## Vložení HTML

Do dokumentu Word můžete snadno vložit řetězec HTML, který obsahuje fragment HTML nebo celý dokument HTML. Stačí předat tento řetězec metodě `DocumentBuilder->InsertHtml`. Jednou z užitečných implementací metody je uložení řetězce HTML do databáze a jeho vložení do dokumentu během Mail Merge, aby se formátovaný obsah přidal místo vytváření pomocí různých metod tvůrce dokumentů. Níže uvedený příklad ukazuje vložení HTML do dokumentu pomocí DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## Vložení vodorovného Pravidla do dokumentu

Příklad Below code ukazuje, jak vložit vodorovný tvar pravidla do dokumentu pomocí metody `DocumentBuilder->InsertHorizontalRule`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}

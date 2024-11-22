---
title: Použití `DocumentBuilder` Vložit prvky dokumentu
second_title: Aspose.Words místo Java
articleTitle: Použití `DocumentBuilder` Vložit prvky dokumentu
linktitle: Použití `DocumentBuilder` Vložit prvky dokumentu
type: docs
description: "Vložit prvky dokumentu pomocí stavitele dokumentů do Java."
weight: 10
url: /cs/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

The [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) se používá k úpravě dokumentů. Tento článek vysvětluje a popisuje, jak vykonávat řadu úkolů.

## Vložení řetězce textu

Jednoduše přejděte řetězec textu, který musíte vložit do dokumentu [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)) metoda. Formátování textu určuje `Font` majetek. Tento objekt obsahuje různé atributy písma (název fontu, velikost písma, barva atd.). Některé důležité atributy písma jsou také reprezentovány [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) vlastnosti, které vám umožní přístup přímo. Tohle jsou Booleovy vlastnosti. [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), a [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Všimněte si, že formátování znaků, které jste nastavili, bude platit pro všechny texty vložené z aktuální polohy v dokumentu.

{{% /alert %}}

Následující příklad kódu Vloží formátovaný text pomocí nástroje DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Vložení odstavce

DokumentBuilder.writeln vloží do dokumentu také řetězec textu, ale navíc přidá odstavec přestávku. Současné formátování písma je také specifikováno v DocumentBuilder. get Vlastnost písma a aktuální formátování odstavce určuje vlastnost DocumentBuilder.getParagraphFormat

Následující příklad kódu ukazuje, jak do dokumentu vložit odstavec.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Vložení tabulky

Základní algoritmus pro vytvoření tabulky pomocí `DocumentBuilder` je jednoduché:

1. Spustit tabulku pomocí [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Vložit buňku [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). Tím se automaticky spustí nový řádek. V případě potřeby použijte [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) vlastnost pro upřesnění formátování buněk.
1. Vložit obsah buňky pomocí `DocumentBuilder` metody.
1. Zopakujte kroky 2 a 3 až do dokončení řady.
1. Volat [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) ukončit současnou řadu. V případě potřeby použijte [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) vlastnost zadat formátování řádku.
1. Opakujte kroky 2 - 5 až do dokončení tabulky.
1. Volat [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) dokončit budovu stolu. Níže jsou popsány vhodné metody tvorby tabulky DokumentBuilder.

### Spuštění tabulky

Volám DokumentBuilder.start Stůl je prvním krokem při stavbě stolu. Může být také nazýván uvnitř buňky, v tomto případě, to začíná hnízdit stůl. Další způsob, jak zavolat, je DocumentBuilder. insertCell.

### Vkládání buňky

Až zavoláš DocumentBuilder. vložit Buňka, je vytvořena nová buňka a jakýkoliv obsah přidáte pomocí jiných metod `DocumentBuilder` třída bude přidána do současné buňky. Chcete-li začít novou buňku ve stejné řadě, volejte DocumentBuilder. vložit Zase mobil. Použijte dokumentBuilder.getCell Vlastnost formátu pro upřesnění formátování buněk. Vrací se [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) objekt, který představuje formátování pro tabulku buňku.

### Konec řady

Zavolejte DocumentBuilder.end Dokončit současnou řadu. Když zavoláš DocumentBuilder. vložit Buňka hned potom pokračuje v nové řadě. Použijte `DocumentBuilder.RowFormat` vlastnost zadat formátování řádku. Vrací se [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) objekt, který představuje formátování pro řádek tabulky.

### Ukončení tabulky

Zavolejte DocumentBuilder.end Tabulka pro dokončení aktuální tabulky. Tato metoda by se měla volat pouze jednou po DocumentBuilder. EndRow byl povolán. Když voláte, stavba dokumentu.end Stůl posune kurzor z současné buňky do pozice těsně za stolem. Následující příklad ukazuje, jak vytvořit formátovanou tabulku obsahující 2 řádky a 2 sloupce.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Vložení přestávky

Pokud chcete explicitně spustit nový řádek, odstavec, sloupec, oddíl nebo stránku, volejte DocumentBuilder. vložitBreak. Pošlete k této metodě typ přestávky, kterou musíte vložit, který představuje `BreakType` výčtu
Následující příklad kódu ukazuje, jak vložit stránku do dokumentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Vložení obrázku

DokumentBuilder poskytuje několik přetížení [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) metoda, která umožňuje vložit inline nebo plovoucí obraz. Pokud je obraz EMF nebo WMF metafile, bude vložen do dokumentu ve formátu metafile. Všechny ostatní obrázky budou uloženy ve formátu PNG. DocumentBuilder. Image metoda může použít obrázky z různých zdrojů:

- Ze souboru nebo `URL` průchodem parametru řetězce
- Z potoka průchodem `Stream` parametr
- Z Obrazového objektu zadáním parametru Obrázek
- Z pole byte zadáním parametru byte pole
- A další

Pro každý z budov Dokumentu. vložit Image metody, tam jsou další přetížení, které vám umožní vložit obrázek s těmito možnostmi:

- Inline nebo plovoucí na určité pozici
- Procentní nebo vlastní velikost

Kromě toho stavební dokument. Metoda obrázku vrací a [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) objekt, který byl právě vytvořen a vložen, takže můžete dále upravovat vlastnosti Tvaru.

### Vložení inline obrazu

Předejte jeden řetězec představující soubor, který obsahuje obrázek do DocumentBuilder. vložit Obrázek pro vložení obrázku do dokumentu jako inline grafika. Následující příklad kódu ukazuje, jak vložit inline obrázek na pozici kurzoru do dokumentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Vkládání plovoucího (rozhodně umístěného) obrazu

Tento příklad vloží plovoucí obrázek ze souboru nebo `URL` ve stanovené poloze a velikosti.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Vkládání záložky

Pro vložení záložky do dokumentu byste měli udělat následující:

1. Volat [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) předat mu požadovaný název záložky.
1. Vložit text záložky pomocí `DocumentBuilder` metody.
1. Volat [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) předat to stejné jméno, které jste použili s DocumentBuilder.startBookmark.

Záložky se mohou překroutit a rozšířit libovolný rozsah. Chcete-li vytvořit platnou záložku, musíte volat jak DokumentBuilder.startZáložka a DokumentBuilder.endZáložka se stejným názvem záložky.

Špatně vytvořené záložky nebo záložky s duplikátními jmény budou při uložení dokumentu ignorovány.

Následující příklad kódu ukazuje, jak vložit záložku do dokumentu pomocí stavitele dokumentů.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Vložení pole

Pole Microsoft Word dokumenty se skládají z kódu pole a z výsledku pole. Kód pole je jako vzorec a výsledek pole je hodnota, kterou vzorec produkuje. Kód pole může rovněž obsahovat přepínače polí, které jsou doplňkovými pokyny k provedení určité akce. Můžete přepnout mezi zobrazením kódů polí a výsledky ve vašem dokumentu v Microsoft Word pomocí klávesové zkratky Alt+F9. Mezi kudrnatými rovnátkami se zobrazují kódy polí ( { } )Použití [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) vytvořit pole v dokumentu. Musíte zadat typ pole, kód pole a hodnotu pole. Pokud si nejste jisti konkrétní syntaxi kódu pole, vytvořit pole v Microsoft Word Nejprve přepněte na kód pole
Následující příklad kódu vloží pole sloučení do dokumentu pomocí DocumentBuilderu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Vložení a `Form` Pole

Formulářová pole jsou konkrétním případem polí Word, které umožňují "interakce" s uživatelem. Forma polí v Microsoft Word obsahovat textbox, Combobox a zaškrtávací políčko. DokumentBuilder poskytuje speciální metody pro vložení každého typu formuláře do dokumentu: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) , [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), a [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Všimněte si, že pokud zadáte název pole formuláře, pak je automaticky vytvořena záložka se stejným názvem.

### Vkládání textu

DocumentBuilder.insertTextVložení textového pole do dokumentu. Následující příklad kódu ukazuje, jak vložit vstupní pole textu do dokumentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Vložení a `CheckBox`

Zavolejte DocumentBuilder. Zaškrtněte políčko pro vložení checkboxu do dokumentu. Následující příklad kódu ukazuje, jak vložit pole zaškrtávacího políčka do dokumentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Vkládání boxu Combo

Zavolejte DocumentBuilder.ComboBox vložit do dokumentu kombo box. Následující příklad kódu ukazuje, jak vložit pole formuláře combo do dokumentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Vložení lokality na úroveň pole

Zákazníci mohou určit Lokalizace na úrovni pole nyní a může dosáhnout lepší kontroly. Lokalita Ids mohou být spojeny s každým polem uvnitř DocumentBuilder. Níže uvedené příklady ukazují, jak této možnosti využít.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Vkládání HTML

Můžete snadno vložit HTML řetězec, který obsahuje HTML fragment nebo celý HTML dokument do dokumentu Word. Pošli tenhle řetězec do DocumentBuilderu. vložit Html metoda. Jednou z užitečných implementací metody je uložení HTML řetězce v databázi a vložení do dokumentu během Mail Merge aby byl přidán formátovaný obsah namísto jeho budování pomocí různých metod stavitele dokumentů. Následující příklad kódu zobrazí vložení HTML do dokumentu pomocí DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Vkládání hypertextového odkazu

Použijte DokumentBuilder.insertHyperlink pro vložení hypertextového odkazu do dokumentu. Tato metoda přijímá tři parametry: text odkazu, který má být zobrazen v dokumentu, link destination (URL nebo název záložky uvnitř dokumentu), a boolean parametr, který by měl být true pokud `URL` je název záložky uvnitř dokumentu. DokumentBuilder.insertHyperlink interně volá DocumentBuilder. insertField. Metoda vždy přidává apostrofy na začátku a na konci URL. Všimněte si, že je třeba zadat formátování písma pro text zobrazení hyperlinku explicitně pomocí `Font` majetek. Následující příklad kódu vloží hypertextový odkaz do dokumentu pomocí DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Vložení obsahu

Můžete vložit `TOC` (obsah) pole do dokumentu na aktuální pozici voláním [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) metoda. Metoda DocumentBuilder.inserTableOfContents pouze vloží `TOC` pole do dokumentu. Pro sestavení tabulky obsahu a zobrazení podle čísel stránek, oba **Document.UpdateFields**metoda se volá po vložení pole. Následující příklad kódu ukazuje, jak vložit pole Obsah tabulky do dokumentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Vkládání Ole objektu

Pokud chcete Ole Object Call [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Nastavit název a příponu souboru při vkládání Ole Object

OLE balíček je odkaz a "nedokumentovaný" způsob uložení vložených objektů, pokud je OLE manipulátor neznámý. Brzy Windows verze jako např. Windows 3.1, 95 a 98 měli Balker. exe aplikace, která by mohla být použita k vložení jakéhokoli typu údajů do dokumentu. Tato aplikace je vyloučena. Windows ale MS Word a další aplikace ji stále používají k vložení dat, pokud je OLE manipulátor chybí nebo neznámý. OlePackage třída umožňuje přístup k OLE vlastnosti balíčku. Následující příklad kódu ukazuje, jak nastavit název souboru, příponu a název displeje pro OLE Package.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Získejte přístup k Raw data objektu OLE

Následující příklad kódu ukazuje, jak získat OLE Objekt surové údaje pomocí `OleFormat.GetRawData`() metoda.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Vložit vodorovně Článek do dokumentu

Následující příklad kódu ukazuje, jak vložit horizontální tvar pravidla do dokumentu s použitím `DocumentBuilder.InsertHorizontalRule` metoda.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Práce s tvary

### Vkládání inline a volně plovoucích tvarů

Můžete vložit inline tvar se zadaným typem a velikostí a volně plovoucím tvarem se zadanou polohou, velikostí a textovým zábalem do dokumentu pomocí `DocumentBuilder.InsertShape` metoda. The `DocumentBuilder.InsertShape` metoda umožňuje vložit tvar DML do modelu dokumentu. Dokument musí být uložen ve formátu, který podporuje tvary DML, jinak tyto uzly budou převedeny do tvaru VML, zatímco ukládání dokumentů. Následující příklad kódu ukazuje, jak vložit tyto typy tvarů do dokumentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Vytvořit Snip Corner Rectangle

Můžete vytvořit střih rohový obdélník pomocí Aspose.Words. Typy tvarů jsou SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRounded OneSnipped, SingleCornerRounded, TopCornersRounded, and DiagonalCornersRounded. Tvar DML je vytvořen pomocí `DocumentBuilder.InsertShape` metoda s těmito typy tvarů. Tyto typy nelze použít k vytvoření tvarů VML. Pokuste se vytvořit tvar pomocí veřejného konstruktéra třídy "Tvar" zvyšuje výjimku "NotSupportedException." Následující příklad kódu ukazuje, jak vložit tyto typy tvarů do dokumentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Importovat tvary s matematickým XML jako tvary do DOM

Můžete použít `LoadOptions.ConvertShapeToOfficeMath` vlastnost převést tvary s RovniceXML do Office Math objektů. Výchozí hodnota této vlastnosti odpovídá chování MS Word, tj. tvary s rovnicí XML nejsou převedeny na objekty Office Math.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}

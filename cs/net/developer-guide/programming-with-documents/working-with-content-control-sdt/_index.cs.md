---
title: Práce s řízením obsahu SDT
second_title: Aspose.Words místo .NET
articleTitle: Práce s řízením obsahu SDT
linktitle: Práce s řízením obsahu SDT
description: "Pokročilá správa obsahu dokumentů, jak vytvářet a manipulovat s ovládáním obsahu (strukturované značky dokumentů) pomocí C#."
type: docs
weight: 390
url: /cs/net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

In Microsoft Word, si můžete vytvořit formulář tím, že začnete s šablonou a přidáváním ovládacích prvků obsahu, včetně zaškrtávacích boxů, textových krabic, sběračů dat a seznamů drop-downů. In <span notrans="<span notrans=" Aspose.Words"=""></span>,? Strukturovaná značka dokumentu nebo kontrola obsahu z jakéhokoli dokumentu naloženého do Aspose.Words je dovážen jako uzel StructedDocumentTag. Strukturované značky dokumentů (SDT nebo kontrola obsahu) umožňují vkládání sémantik definovaných zákazníků, jakož i jeho chování a vzhled do dokumentu.

Strukturovaný dokument Značka se může objevit v dokumentu na následujících místech:

- Block-level - Mezi odstavci a tabulky, jako dítě těla, HeaderFooter, Komentář, Poznámka pod čarou nebo Tvar uzel
- Row-level - Mezi řádky v tabulce jako dítě uzel tabulky
- Cell-level - Mezi buňkami v řadě tabulky, jako dítě uzel řádku
- Mezi inline obsah uvnitř, jako dítě odstavce
- Nested inside another StrucatedDocument Značka

## Vkládání kontrol obsahu do dokumentu

V této verzi Aspose.Words, lze vytvořit tyto typy SDT nebo řízení obsahu:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

Následující příklad kódu ukazuje, jak vytvořit kontrolu obsahu zaškrtávacího políčka typu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

Následující příklad kódu ukazuje, jak vytvořit kontrolu obsahu textového pole bohatého typu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

Následující příklad kódu ukazuje, jak vytvořit kontrolu obsahu typu kombo pole:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## Jak aktualizovat kontrolu obsahu

Tato sekce vysvětluje, jak programově aktualizovat hodnoty SDT nebo řízení obsahu.

Následující příklad kódu ukazuje, jak nastavit aktuální stav zaškrtávacího políčka:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

Následující příklad kódu ukazuje, jak upravit ovládání obsahu textového pole typu, seznamu drop-down a obrázku:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## Řízení obsahu vazby na vlastní XML části

Ovládání obsahu můžete navázat pomocí XML dat (*custom XML part*) v dokumentech Word.

Následující příklad kódu ukazuje, jak přivázat kontrolu obsahu na vlastní XML části:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## XML Mapování strukturovaného rozsahu značek dokumentů

Mapování tohoto strukturovaného rozsahu tagů dokumentů na XML data můžete získat ve vlastní XML části aktuálního dokumentu pomocí **Strukturovaný dokumentTagRangeStart.XmlMaping vlastnost**. Nicméně [SetMapping](https://reference.aspose.com/words/net/aspose.words.markup/xmlmapping/setmapping/) metoda může být použita pro mapování strukturovaného rozsahu značek dokumentů na XML data.

Následující příklad kódu ukazuje, jak nastavit mapování XML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## Jasný obsah kontroly obsahu

Obsah kontroly obsahu můžete vymazat zobrazením zástupce. • **StructuredDocumentTag.Clear** metoda vymaže obsah této strukturované značky dokumentu a pokud je definován, zobrazí zástupce. Nicméně, Není možné odstranit obsah kontroly obsahu, pokud má revize. Pokud kontrola obsahu nemá žádné místodržitele, vloží se pět míst jako v Microsoft Word (kromě opakujících se sekcí, opakujících se sekcí, skupin, check-boxů, citací). Pokud je kontrola obsahu mapována na vlastní XML, referenční XML uzel je vymazán.

Následující příklad kódu ukazuje, jak odstranit obsah kontroly obsahu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## Změnit kontrolní pozadí obsahu a barvy okraje

• `StructuredDocumentTag.Color` vlastnost umožňuje získat nebo nastavit barvu kontroly obsahu. Barva ovlivňuje kontrolu obsahu ve dvou situacích:

1. MS Word zdůrazňuje pozadí kontroly obsahu, když se myš pohybuje přes kontrolu obsahu. To pomáhá identifikovat kontrolu obsahu. Barva zvýraznění je trochu "měkčí" než *Color*. Například, MS Word zdůrazňuje pozadí s růžovou barvou, když *Color* je Red.
2. Při interakci (editace, výběr atd.) s kontrolou obsahu je hranice kontroly obsahu zbarvena *Color*.

Následující příklad kódu ukazuje, jak změnit barvu kontroly obsahu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## Jak nastavit styl pro formátování textu zadaného do kontroly obsahu

Pokud chcete nastavit styl kontroly obsahu, můžete použít `StructuredDocumentTag.Style` nebo `StructuredDocumentTag.StyleName` vlastnosti. Když zadáte text do kontroly obsahu ve výstupním dokumentu, bude mít zadaný text styl "Quote."

{{% alert color="primary" %}}

Všimněte si, že ke kontrole obsahu lze použít pouze Linked a Character styles. Neplatná operace Výjimka ("Není možné použít tento styl na SDT") se hodí, když je použit styl, který existuje, ale není linked nebo styl znaků.

{{% /alert %}}

Následující příklad kódu ukazuje, jak nastavit styl kontroly obsahu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## Práce s kontrolou obsahu v sekci opakování

Ovládání obsahu opakované sekce umožňuje opakování obsahu obsaženého v něm. Použití Aspose.Words, mohou být vytvořeny strukturované uzly značky dokumentů opakující se sekce a opakující se typy položek oddílu a pro tento účel, [Typ výčtu SdtType](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) poskytuje **RepeatingSectionItem** majetek.

Následující příklad kódu ukazuje, jak přivázat kontrolu obsahu opakované části k tabulce.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}

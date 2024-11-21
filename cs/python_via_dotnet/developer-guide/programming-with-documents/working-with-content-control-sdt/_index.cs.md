---
title: Práce s řízením obsahu SDT
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce s řízením obsahu SDT
linktitle: Práce s řízením obsahu SDT
description: "Pomocí krajty můžete vložit sémantika definovaná zákazníkem i jeho chování a vzhled do dokumentu."
type: docs
weight: 390
url: /cs/python-net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

In Microsoft Word, si můžete vytvořit formulář tím, že začnete s šablonou a přidáváním ovládacích prvků obsahu, včetně zaškrtávacích boxů, textových krabic, sběračů dat a seznamů drop-downů. In <span notrans="<span notrans=" Aspose.Words"=""></span>,? Strukturovaná značka dokumentu nebo kontrola obsahu z jakéhokoli dokumentu naloženého do Aspose.Words je dovážen jako [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) Uzel. Strukturované značky dokumentů (SDT nebo kontrola obsahu) umožňují vkládání sémantik definovaných zákazníků, jakož i jeho chování a vzhled do dokumentu. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) může dojít v dokumentu na těchto místech:

- Block-level - Mezi odstavci a tabulky, jako dítě [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) nebo [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) uzel
- Row-level - Mezi řádky v tabulce, jako dítě [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) uzel
- Mezi buňkami v řadě, jako dítě [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) uzel
- Inline úroveň - Mezi inline obsah uvnitř, jako dítě [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- Nested uvnitř další [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

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

Následující příklad kódu ukazuje, jak vytvořit kontrolu obsahu zaškrtávacího políčka typu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

Následující příklad kódu ukazuje, jak vytvořit kontrolu obsahu textového pole bohatého na typ.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

Následující příklad kódu ukazuje, jak vytvořit kontrolu obsahu typu kombo boxu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## Jak aktualizovat Ovládání obsahu

Tato sekce vysvětluje, jak programově aktualizovat hodnoty SDT nebo řízení obsahu

Následující příklad kódu ukazuje, jak nastavit aktuální stav zaškrtávacího políčka:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

Následující příklad kódu ukazuje, jak upravit ovládání obsahu textového pole typu, seznamu drop-down a obrázku:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

Můžete si stáhnout ukázkový soubor těchto příkladů z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Řízení obsahu vazby na vlastní XML části

Ovládání obsahu můžete navázat pomocí XML dat (*custom XML part*) v dokumentech Word.

Následující příklad kódu ukazuje, jak přivázat kontrolu obsahu na vlastní XML části:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## XML Mapování strukturovaného rozsahu značek dokumentů

Mapování tohoto strukturovaného rozsahu tagů dokumentů na XML data můžete získat ve vlastní XML části aktuálního dokumentu pomocí [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/) majetek. Nicméně [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) metoda může být použita pro mapování strukturovaného rozsahu značek dokumentů na XML data.

Následující příklad kódu ukazuje, jak nastavit mapování XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## Jasný obsah kontroly obsahu

Obsah kontroly obsahu můžete vymazat zobrazením zástupce. [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) metoda vymaže obsah této strukturované značky dokumentu a pokud je definován, zobrazí zástupce. Nicméně, Není možné odstranit obsah kontroly obsahu, pokud má revize. Pokud kontrola obsahu nemá žádné místodržitele, pět míst se vkládá stejně jako v MS Word (s výjimkou opakování sekcí, opakování položek sekcí, skupin, check-boxů, citací). Pokud je kontrola obsahu mapována na vlastní XML, referenční XML uzel je vymazán.

Následující příklad kódu ukazuje, jak odstranit obsah kontroly obsahu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## Změnit kontrolní pozadí obsahu a barvy okraje

• [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) vlastnost umožňuje získat nebo nastavit barvu kontroly obsahu. Barva ovlivňuje kontrolu obsahu ve dvou situacích:

1. MS Word zdůrazňuje pozadí kontroly obsahu, když se myš pohybuje přes kontrolu obsahu. To pomáhá identifikovat kontrolu obsahu. Barva zvýraznění je trochu "měkčí" než *color*. Například, MS Word zdůrazňuje pozadí s růžovou barvou, když *color* je červená.
2. Při interakci (editace, výběr atd.) s kontrolou obsahu je hranice kontroly obsahu zbarvena *color*.

Následující příklad kódu ukazuje, jak změnit barvu kontroly obsahu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## Jak nastavit styl pro formátování textu zadaného do kontroly obsahu

Pokud chcete nastavit styl kontroly obsahu, můžete použít [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) nebo [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/) vlastnosti. Když zadáte text do kontroly obsahu ve výstupním dokumentu, bude mít zadaný text styl "Quote."

{{% alert color="primary" %}}

Všimněte si, že ke kontrole obsahu lze použít pouze Linked a Character styles. Výjimku ("Není možné použít tento styl na SDT") se hodí, když se uplatňuje styl, který existuje, ale není Linked nebo styl znaků.

{{% /alert %}}

Následující příklad kódu ukazuje, jak nastavit styl kontroly obsahu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Práce s kontrolou obsahu v sekci opakování

Ovládání obsahu opakované sekce umožňuje opakování obsahu obsaženého v něm. Použití Aspose.Words, mohou být vytvořeny strukturované uzly značky dokumentů opakující se sekce a opakující se typy položek oddílu a pro tento účel, [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) typ výčtu poskytuje [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item) majetek.

Následující příklad kódu ukazuje, jak přivázat kontrolu obsahu opakované části k tabulce:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}

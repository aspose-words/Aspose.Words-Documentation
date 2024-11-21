---
title: Práce s řízením obsahu SDT v Java
second_title: Aspose.Words místo Java
articleTitle: Práce s ovládáním obsahu SDT
linktitle: Práce s ovládáním obsahu SDT
type: docs
description: "Pokročilá správa obsahu dokumentů, jak vytvářet a manipulovat s ovládáním obsahu (strukturované značky dokumentů) pomocí Java."
weight: 390
url: /cs/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

In Microsoft Word, si můžete vytvořit formulář tím, že začnete s šablonou a přidáváním ovládacích prvků obsahu, včetně zaškrtávacích boxů, textových boxů, sběračů dat a seznamů drop-downů. In <span notrans="<span notrans=" Aspose.Words"=""></span>, Strukturovaná značka dokumentu nebo kontrola obsahu z jakéhokoli dokumentu naloženého do Aspose.Words je dovážen jako uzel StructuredDocumentTag. Strukturované značky dokumentů (SDT nebo kontrola obsahu) umožňují vložit do dokumentu jak sémantika, tak i chování a vzhled zákazníka.

Strukturovaný dokument Značka se může objevit v dokumentu na následujících místech:

- Block-level - Mezi odstavci a tabulky, jako dítě těla, HeaderFooter, Komentář, Poznámka pod čarou nebo Tvar uzel.
- Row-level - Mezi řádky v tabulce, jako dítě uzel stolu.
- Mezi buňkami v řadě, jako dítě uzelu v řadě.
- Mezi inline obsah uvnitř, jako dítě odstavce.
- Nested inside another StructuredDocumentTag.

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

Následující příklad kódu ukazuje, jak vytvořit kontrolu obsahu zaškrtávacího políčka:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

Následující příklad kódu ukazuje, jak vytvořit kontrolu obsahu textového pole bohatého na typ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

Následující příklad kódu ukazuje, jak vytvořit kontrolu obsahu typu kombo box:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Jak aktualizovat kontrolu obsahu

Tato sekce vysvětluje, jak aktualizovat hodnoty SDT nebo řízení obsahu programově.

Následující příklad kódu ukazuje, jak nastavit aktuální stav zaškrtávacího políčka:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

Následující příklad kódu ukazuje, jak změnit ovládání obsahu textového pole typu, seznamu drop-down a obrázku:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

Můžete si stáhnout ukázkový soubor těchto příkladů z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Řízení obsahu vazby na vlastní XML části

Ovládání obsahu můžete navázat pomocí XML dat (*custom XML part*) v dokumentech Word

Následující příklad kódu ukazuje, jak navázat kontrolu obsahu na vlastní XML části:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Jasný obsah kontroly obsahu

Obsah kontroly obsahu můžete vymazat zobrazením majitele. **Strukturovaný dokumentTag.clear()** metoda vymaže obsah této strukturované značky dokumentu a pokud je definován, zobrazí umísťovatele. Nicméně, Není možné odstranit obsah kontroly obsahu, pokud má revize. Pokud kontrola obsahu nemá žádný držák, vloží se pět mezer jako v MS Word (s výjimkou opakování sekcí, opakování položek sekcí, skupin, check-boxů, citací). Pokud je kontrola obsahu mapována na vlastní XML, referenční XML uzel je vymazán.

Následující příklad kódu ukazuje, jak odstranit obsah kontroly obsahu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Změnit pozadí kontroly obsahu a barvy okraje

The `StructuredDocumentTag.Color` vlastnost umožňuje získat nebo nastavit barvu ovládání obsahu. Barva ovlivňuje kontrolu obsahu ve dvou situacích:

1. MS Word zdůrazňuje pozadí kontroly obsahu, když se myš pohybuje přes kontrolu obsahu. To pomáhá identifikovat kontrolu obsahu. Barva zvýraznění je trochu "měkčí" než *Color*. Například MS Word zdůrazňuje pozadí s růžovou barvou, když *Color* Červená.
2. Při interakci (editace, výběr atd.) s kontrolou obsahu je hranice kontroly obsahu barevná *Color*.

Následující příklad kódu ukazuje, jak změnit barvu kontroly obsahu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Jak nastavit styl pro formátování textu zadaného do kontroly obsahu

Pokud chcete nastavit styl kontroly obsahu, můžete použít `StructuredDocumentTag.Style` nebo `StructuredDocumentTag.StyleName` vlastnosti. Když zadáte text do kontroly obsahu ve výstupním dokumentu, bude mít zadaný text styl "Quote."

{{% alert color="primary" %}}

Všimněte si, že pro kontrolu obsahu lze použít pouze Linked a Character styles. Neplatná operace Výjimka ("Není možné použít tento styl na SDT") se hodí, když je použit styl, který existuje, ale není Linked nebo styl znaků.

{{% /alert %}}

Následující příklad kódu ukazuje, jak nastavit styl kontroly obsahu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Práce s kontrolou obsahu v sekci opakování

Ovládání obsahu opakované sekce umožňuje opakování obsahu obsaženého v něm. Použití Aspose.Words, mohou být vytvořeny strukturované uzly tagů dokumentů opakujících se sekcí a opakujících se typů položek a pro tento účel, [Typ výpisu SdtType](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) poskytuje repeating_SECTION_ITEM člen.

Následující příklad kódu ukazuje, jak přivázat kontrolu obsahu opakované části k tabulce:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}


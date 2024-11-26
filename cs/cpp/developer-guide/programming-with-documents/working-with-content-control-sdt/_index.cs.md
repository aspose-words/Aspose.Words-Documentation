---
title: Práce s ovládáním obsahu SDT
second_title: Aspose.Words pro C++
articleTitle: Práce s ovládáním obsahu SDT
linktitle: Práce s ovládáním obsahu SDT
type: docs
description: "Pokročilá správa obsahu dokumentů, jak vytvářet a manipulovat s ovládacími prvky obsahu (strukturované značky dokumentů) pomocí C++."
weight: 390
url: /cs/cpp/structured-document-tags-or-content-control/
timestamp: 2024-01-27-14-07-04
---

V Microsoft Word můžete vytvořit formulář tak, že začnete šablonou a přidáte ovládací prvky obsahu, včetně zaškrtávacích políček, textových polí, výběru data a rozevíracích seznamů. V Aspose.Words je strukturovaná značka dokumentu nebo ovládací prvek obsahu z libovolného dokumentu načteného do Aspose.Words importován jako uzel StructuredDocumentTag. Strukturované značky dokumentů (SDT nebo content control) umožňují vložit do dokumentu sémantiku definovanou zákazníkem, stejně jako její chování a vzhled. StructuredDocumentTag se může v dokumentu vyskytovat na následujících místech:

- Úroveň bloku-mezi odstavci a tabulkami, jako dítě těla, HeaderFooter, komentář, poznámka pod čarou nebo uzel tvaru
- Úroveň řádku-mezi řádky v tabulce jako podřízený uzel tabulky
- Úroveň buněk - mezi buňkami v řádku tabulky jako podřízený uzel řádku
- Inline-level-mezi vloženým obsahem uvnitř, jako dítě odstavce
- Vnořené uvnitř jiného StructuredDocumentTag

## Jak nastavit styl pro formátování textu zadaného do ovládacího prvku obsahu

Pokud chcete nastavit styl ovládání obsahu, můžete použít vlastnosti `StructuredDocumentTag.Style` nebo `StructuredDocumentTag.StyleName`. Když zadáte text do Content control ve výstupním dokumentu, zadaný text bude mít styl "Quote".

{{% alert color="primary" %}}

Všimněte si, že pro ovládání obsahu lze použít pouze propojené styly a styly znaků. InvalidOperationException ("nelze použít tento styl na SDT") je vyvolán, když je použit styl, který existuje, ale není propojen nebo znakový styl.

{{% /alert %}}

Následující příklad kódu ukazuje, jak nastavit styl ovládání obsahu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## Práce s kontrolou obsahu opakujících se sekcí

Ovládací prvek obsahu opakující se sekce umožňuje opakovat obsah v něm obsažený. Pomocí Aspose.Words lze vytvořit uzly strukturované značky dokumentu opakujících se sekcí a typů položek opakujících se sekcí a pro tento účel poskytuje SdtType enumeration type vlastnost **RepeatingSectionItem**.

Následující příklad kódu ukazuje, jak svázat ovládací prvek obsahu opakujících se oddílů s tabulkou:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}

---
title: Logické úrovně uzlů v dokumentu v C++
second_title: Aspose.Words pro C++
articleTitle: Logické úrovně uzlů v dokumentu
linktitle: Logické úrovně uzlů v dokumentu
type: docs
description: "V dokumentaci Aspose.Words pro C++ jsou uvedeny logické úrovně uzlů-úroveň bloku, úroveň inline nebo úroveň řádku. Úroveň uzlu se používá k popisu umístění ve stromu dokumentů, kde se uzel obvykle vyskytuje."
weight: 10
url: /cs/cpp/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Tato dokumentace někdy odkazuje na skupinu tříd uzlů, které patří do" úrovně "v dokumentu, například" bloková úroveň"," vložená úroveň "(také známá jako" vložená") nebo" řádková úroveň " uzly. Tyto úrovně v dokumentu jsou diferencovány čistě logicky a nejsou výslovně vyjádřeny dědičností nebo jinými prostředky Aspose.Words DOM. Úroveň uzlu se používá k popisu místa ve stromu dokumentů, kde by se uzel obvykle vyskytoval.

V předchozím článku jsme již hovořili o vztahu mezi uzly a skutečnosti, že ne všechny uzly mohou být dítětem jakýchkoli uzlů. Například buňka může být pouze podřízeným řádkem a řádek může být pouze podřízeným stolem atd. Tyto vztahy jsou také použitelné pro logické rozdělení uzlů na úrovně v dokumentu.

Následující části popisují logické úrovně uzlů v Aspose.Words a třídy, které patří do každé úrovně.

## Logická úroveň dokumentu a sekce

Word dokument se skládá z jedné nebo více sekcí, reprezentovaných třídou [Section](https://reference.aspose.com/words/cpp/aspose.words/section) a oddělených zlomy sekcí. Sekce může definovat vlastní velikost stránky, okraje, orientaci, počet textových sloupců a záhlaví a zápatí.

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) a [Oddíl](https://www.aspose.com/api/words/cpp/aspose.words/section/) uzly úrovně mají strukturu, jak je znázorněno na následujícím obrázku.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-cpp" style="width:700px"/>

Sekce obsahuje hlavní text, stejně jako záhlaví a zápatí pro první, sudé a liché stránky. Tyto různé "toky" textu se nazývají *stories*.

V Aspose.Words uzel **Section** obsahuje uzly [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) a [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) příběhu. Objekt **Body** ukládá hlavní text. Objekty **HeaderFooter** ukládají text pro každou záhlaví a zápatí. Text libovolného příběhu se skládá z odstavců a tabulek, které jsou reprezentovány Objekty **Paragraph** a **Table** blokové úrovně.

Kromě toho může každý dokument Word obsahovat glosář, který je reprezentován uzlem [GlossaryDocument](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/) v Aspose.Words. Glosář obsahuje položky [BuildingBlocks](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/get_buildingblocks/), [AutoText](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/) a [AutoCorrect](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/).

**GlossaryDocument**

## Blok Logická Úroveň

Uzly na úrovni bloku představují kontejnery pro obsah a ovládací prvky obsahu a mohou se vyskytovat v podřízených uzlech stromu dokumentů v následujících uzlech:

- Tělo
- Záhlaví
- Zápatí
- Čára
- Komentář
- Tvar
- GroupShape
- Buňka
- StructuredDocumentTag

Uzly na úrovni bloků jsou reprezentovány následujícími třídami:

- [Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) a [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), což jsou nejdůležitější uzly na úrovni bloku
- Záložky, které se vyskytují jak na úrovni bloku, tak na úrovni inline
- [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/), které představují vlastní označení a mohou obsahovat jak obsah, Tak ovládací prvky obsahu

Následující diagram ukazuje prvky na úrovni bloku.

<img src="block-level.png" alt="block-level-aspose-words-cpp" style="width:550px"/>

## Inline Logická Úroveň

Uzly na úrovni Inline představují skutečný obsah dokumentu a mohou být obsaženy v následujících kontejnerech:

- Odstavec-nejběžnější kontejner
- [SmartTag](https://reference.aspose.com/words/cpp/aspose.words.markup/smarttag/)
- StructuredDocumentTag

Prvky na úrovni Inline jsou reprezentovány následujícími třídami:

- [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) - běhy textu formátovaného jinak
- [BookmarkStart](https://reference.aspose.com/words/cpp/aspose.words/bookmarkstart/) a [BookmarkEnd](https://reference.aspose.com/words/cpp/aspose.words/bookmarkend) představují záložky
- [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) a [Footnote](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/) představují anotace
- [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldseparator/) a [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldend/), které představují znaky pole, a [FormField](https://reference.aspose.com/words/cpp/aspose.words.fields/formfield/) představují Word pole
- [SpecialChar](https://reference.aspose.com/words/cpp/aspose.words/specialchar/) představuje speciální znaky v dokumentu
- [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) a [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) představují tvary, kresby, obrázky atd.
- SmartTag a StructuredDocumentTag představují vlastní značku

Následující diagram ukazuje strukturu uzlů na úrovni inline.

<img src="inline-level.png" alt="inline-level-aspose-words-cpp" style="width:785px"/>

{{% alert color="primary" %}}

Tvary v Microsoft Word zahrnují Office Art AutoShapes, textová pole, obrázky, objekty OLE a ovládací prvky ActiveX, které jsou všechny reprezentovány pomocí třídy `Shape`. Některé tvary mohou také obsahovat text, takže uzly tvarů v Aspose.Words mohou obsahovat uzly na úrovni bloku.

Tvary mohou být seskupeny uvnitř sebe pomocí GroupShape uzlů.

{{% /alert %}}

{{% alert color="primary" %}}

Poznámky pod čarou a komentáře mohou obsahovat text, proto uzly pod čarou a komentáře v Aspose.Words mohou obsahovat uzly na úrovni bloku.

{{% /alert %}}

## Úroveň tabulky, řádku a uzlu buňky

Tabulka se skládá z uzlů řádků a buněk. Prvky tabulky jsou reprezentovány následujícími třídami:

- [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) představuje řádek tabulky
- [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) představuje buňku tabulky
- StructuredDocumentTag představují vlastní značku

Následující diagram ukazuje struktury uzlů úrovně tabulky, řádku a buňky.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-cpp" style="width:910px"/>

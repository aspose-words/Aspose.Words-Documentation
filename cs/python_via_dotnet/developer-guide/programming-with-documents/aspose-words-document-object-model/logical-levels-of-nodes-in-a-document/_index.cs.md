---
title: Logické úrovně uzlů v dokumentu
second_title: Aspose.Words místo Python via .NET
articleTitle: Logické úrovně uzlů v dokumentu
linktitle: Logické úrovně uzlů v dokumentu
type: docs
description: "In Aspose.Words místo Python via .NET dokumentace zmínila logické úrovně uzlů, úroveň bloku, inline úroveň nebo úroveň řádku. Úroveň nódu se používá k popisu umístění ve stromu dokumentu, kde se uzel obvykle vyskytuje."
weight: 10
url: /cs/python-net/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Tato dokumentace někdy označuje skupinu tříd nódu jako "úroveň" v dokumentu, jako je "úroveň bloku," "úroveň inline" (známá též jako "inline") nebo "úrovňové uzly." Tyto úrovně v dokumentu jsou rozlišeny čistě logicky a nejsou výslovně vyjádřeny dědictvím nebo jiným způsobem Aspose.Words DOM znamená. Úroveň uzlu se používá k popisu místa ve stromu dokumentů, kde by se uzel typicky objevil.

V předchozím článku jsme již hovořili o vztahu mezi uzly a o tom, že ne všechny uzly mohou být dítětem jakýchkoli uzlů. Například: [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) může být pouze [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) dítě a [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) může být pouze [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) dítě, a tak dále. Tyto vztahy jsou rovněž použitelné pro logické rozdělení uzlů do úrovní v dokumentu.

Následující oddíly popisují logické úrovně uzlů v Aspose.Words a třídy, které patří do každé úrovně.

## Dokument a sekce Logická úroveň

A Slovní dokument se skládá z jedné nebo více částí zastoupených [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) třída a oddělené úseky. Sekce může definovat vlastní velikost stránky, okraje, orientaci, počet textových sloupců, hlavičky a zápatí.

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/) a [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) rovinné uzly mají strukturu, jak je znázorněno v následujícím diagramu.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words" style="width:700px"/>

Část obsahuje hlavní text, stejně jako hlavičky a zápatí pro první, dokonce, a liché stránky. Tyto různé postupy textu se nazývají *stories*.

In Aspose.Words, vá [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) Uzel obsahuje [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) a [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) Příběh uzlů. • [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) objekt ukládá hlavní text. • [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) objekty ukládají text pro každou hlavičku a zápatí. Text každého příběhu se skládá z odstavců a tabulek, které představují [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) a [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) objekty úrovně bloku.

Navíc každý Slovní dokument může obsahovat glosář, který je zastoupen [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) uzel Aspose.Words. Glosář dokument obsahuje [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/) [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text), a [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct) záznamy.

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) zahrnuje [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) uzly představující různé typy zápisů do glosářů. Každý [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) obsahuje oddíly, které lze vložit, odstranit a zkopírovat do dokumentů.

## Blokovat logickou úroveň

Blokové uzly představují kontejnery pro kontrolu obsahu a obsahu a mohou se objevit v dětských uzlech dokumentárního stromu v těchto uzlech:

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Blokové uzly jsou zastoupeny těmito třídami:

- [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) a [Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), které jsou nejdůležitější blokové uzly
- [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/), která se vyskytuje jak na úrovni bloku, tak na úrovni inline
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/), které představují vlastní označení a mohou obsahovat kontroly obsahu i obsahu

Následující schéma ukazuje prvky úrovně bloku.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words" style="width:550px"/>

## Logická úroveň inline

Uzely inline úrovně představují skutečný obsah dokumentu a mohou být obsaženy v těchto nádobách:

- [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) Nejběžnější nádoba
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Prvky inline úrovně jsou zastoupeny těmito třídami:

- [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) Výsledky textu formátovaného jinak
- [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) a [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) představují záložky
- [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) a [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) představují anotace
- [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) a [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) které představují znaky pole a [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) reprezentovat Slovní pole
- [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) představuje zvláštní znaky v dokumentu
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) a [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) představují tvary, výkresy, obrázky atd.
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) a [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) reprezentovat vlastní přihlášení

Následující schéma ukazuje strukturu uzlů inline úrovně.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words" style="width:785px"/>

{{% alert color="primary" %}}

Tvary Microsoft Word zahrnují Office Art AutoShapes, textové schránky, obrázky, OLE objekty a ActiveX ovládací prvky, z nichž všechny jsou zastoupeny pomocí `Shape` třída. Některé tvary mohou také obsahovat text, takže tvar uzlů v Aspose.Words může obsahovat blokové uzly.

Tvary mohou být seskupeny do sebe pomocí [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) uzly.

{{% /alert %}}

{{% alert color="primary" %}}

Poznámky a připomínky proto mohou obsahovat text [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) a [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) uzliny Aspose.Words může obsahovat blokové uzly.

{{% /alert %}}

## Tabulka, řádek a úroveň buněčného uzlu

Tabulka se skládá z uzlů řádků a buněk. [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) prvky jsou zastoupeny těmito třídami:

- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) představuje řádek tabulky
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) představuje tabulku
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) reprezentovat vlastní přihlášení

Následující schéma ukazuje uzel struktury [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), a [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) úrovně.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words" style="width:910px"/>

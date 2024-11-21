---
title: Logické úrovně uzlů v dokumentu C#
second_title: Aspose.Words místo .NET
articleTitle: Logické úrovně uzlů v dokumentu
linktitle: Logické úrovně uzlů v dokumentu
type: docs
description: "In Aspose.Words místo .NET dokumentace zmíněná logická úroveň uzlů - úroveň bloku, inline úroveň nebo úroveň řádku pomocí C#. Úroveň nódu se používá k popisu umístění ve stromu dokumentu, kde se uzel obvykle vyskytuje."
weight: 10
url: /cs/net/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Tato dokumentace někdy označuje skupinu tříd nódu jako "úroveň" v dokumentu, jako je "úroveň bloku," "úroveň inline" (známá též jako "inline") nebo "úrovňové uzly." Tyto úrovně v dokumentu jsou rozlišeny čistě logicky a nejsou výslovně vyjádřeny dědictvím nebo jiným způsobem Aspose.Words DOM znamená. Úroveň uzlu se používá k popisu místa ve stromu dokumentů, kde by se uzel typicky objevil.

V předchozím článku jsme již hovořili o vztahu mezi uzly a o tom, že ne všechny uzly mohou být dítětem jakýchkoli uzlů. Například buňka může být pouze Row dítě, a Řádek může být pouze dítě stolu, a tak dále. Tyto vztahy jsou rovněž použitelné pro logické rozdělení uzlů do úrovní v dokumentu.

Následující oddíly popisují logické úrovně uzlů v Aspose.Words a třídy, které patří do každé úrovně.

## Dokument a sekce Logická úroveň

A Slovní dokument se skládá z jedné nebo více částí zastoupených [Section](https://reference.aspose.com/words/net/aspose.words/section/) třída a oddělené úseky. Sekce může definovat vlastní velikost stránky, okraje, orientaci, počet textových sloupců, hlavičky a zápatí.

[Document](https://reference.aspose.com/words/net/aspose.words/document/) a [Section](https://reference.aspose.com/words/net/aspose.words/section/) rovinné uzly mají strukturu, jak je znázorněno v následujícím diagramu.

<img src="/words/net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words" style="width:700px"/>

Část obsahuje hlavní text, stejně jako hlavičky a zápatí pro první, dokonce, a liché stránky. Tyto různé postupy textu se nazývají *stories*.

In Aspose.Words, vá **Section** Uzel obsahuje [Body](https://reference.aspose.com/words/net/aspose.words/body/) a [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) Příběh uzlů. • **Body** objekt ukládá hlavní text. • **HeaderFooter** objekty ukládají text pro každou hlavičku a zápatí. Text každého příběhu se skládá z odstavců a tabulek, které představují **Paragraph** a **Table** objekty úrovně bloku.

Navíc každý Slovní dokument může obsahovat glosář, který je zastoupen [GlossaryDocument](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/) uzel Aspose.Words. Glosář dokument obsahuje [BuildingBlocks](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/buildingblocks/), [AutoText](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/), a [AutoCorrect](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/) záznamy.

**GlossaryDocument** zahrnuje [BuildingBlock](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblock/) uzly představující různé typy zápisů do glosářů. Každý **BuildingBlock** obsahuje oddíly, které lze vložit, odstranit a zkopírovat do dokumentů.

## Blokovat logickou úroveň

Blokové uzly představují kontejnery pro kontrolu obsahu a obsahu a mohou se objevit v dětských uzlech dokumentárního stromu v těchto uzlech:

- Tělo
- Hlavička
- Footer
- Poznámka pod čarou
- Komentář
- Tvar
- GroupTvar
- Buňka
- StructuredDocumentTag

Blokové uzly jsou zastoupeny těmito třídami:

- [Tables](https://reference.aspose.com/words/net/aspose.words.tables/table/) a [Paragraphs](https://reference.aspose.com/words/net/aspose.words/paragraph/), které jsou nejdůležitější blokové uzly
- Záložky, které se vyskytují jak na úrovni bloku, tak na inline úrovni
- [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/), které představují vlastní označení a mohou obsahovat kontroly obsahu i obsahu

Následující schéma ukazuje prvky úrovně bloku.

<img src="/words/net/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words" style="width:550px"/>

## Logická úroveň inline

Uzely inline úrovně představují skutečný obsah dokumentu a mohou být obsaženy v těchto nádobách:

- Odstavec
- [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/)
- StructuredDocumentTag

Prvky inline úrovně jsou zastoupeny těmito třídami:

- [Run](https://reference.aspose.com/words/net/aspose.words/run/) Výsledky textu formátovaného jinak
- [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmarkstart/) a [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmarkend/) představují záložky
- [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) a [Footnote](https://reference.aspose.com/words/net/aspose.words.notes/footnote/) představují anotace
- [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) a [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) které představují znaky pole a [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) reprezentovat Slovní pole
- [SpecialChar](https://reference.aspose.com/words/net/aspose.words/specialchar/) představuje zvláštní znaky v dokumentu
- [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) a [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) představují tvary, výkresy, obrázky atd.
- SmartTag a strukturovanýDocument Značka představuje vlastní přihlášení

Následující schéma ukazuje strukturu uzlů inline úrovně.

<img src="/words/net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words" style="width:785px"/>

{{% alert color="primary" %}}

Tvary Microsoft Word zahrnují Office Art AutoShapes, textové schránky, obrázky, OLE objekty a ActiveX ovládací prvky, z nichž všechny jsou zastoupeny pomocí `Shape` třída. Některé tvary mohou také obsahovat text, takže tvar uzlů v Aspose.Words může obsahovat blokové uzly.

Tvary mohou být seskupeny do sebe pomocí GroupTvarové uzly.

{{% /alert %}}

{{% alert color="primary" %}}

Poznámky a připomínky mohou obsahovat text, proto Poznámka pod čarou a Komentář uzly v Aspose.Words může obsahovat blokové uzly.

{{% /alert %}}

## Tabulka, řádek a úroveň buněčného uzlu

Tabulka se skládá z uzlů řádků a buněk. Prvky tabulky představují tyto třídy:

- [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) představuje řádek tabulky
- [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) představuje tabulku
- Strukturovaný dokument Značka představuje vlastní přihlášení

Následující diagram zobrazuje struktury uzel tabulky, řádku a úrovní buněk.

<img src="/words/net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words" style="width:910px"/>

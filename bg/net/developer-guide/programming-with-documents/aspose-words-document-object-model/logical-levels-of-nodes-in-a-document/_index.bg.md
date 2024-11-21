---
title: Логически нива на възли в документ в C#
second_title: Aspose.Words вместо .NET
articleTitle: Логически нива на възли в документ
linktitle: Логически нива на възли в документ
type: docs
description: "В Aspose.Words вместо .NET документиране на логическите нива на възлите на блок, ниво в линия или ниво на ред, като се използва C#. Нивото на възела се използва за описване на местоположението в дървото на документа, където обикновено се появява възелът."
weight: 10
url: /bg/net/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Тази документация понякога се отнася до група от класове възли като принадлежащи към "ниво" в документ, като например "ниво на блока," "ниво на линия" (известен също като "inline") или "нивото на канала." Тези нива в документ са диференцирани напълно логично и не са изрично изразени по наследство или друго Aspose.Words DOM Означава. Нивото на възела се използва, за да се опише мястото в дървото на документа, където обикновено се появява възелът.

В предишната статия вече говорихме за връзката между възлите и факта, че не всички възли могат да бъдат деца на всякакви възли. Например, клетката може да бъде само едно дете, и ред може да бъде само дете на маса, и така нататък. Тези взаимоотношения са приложими и за логичното разделяне на възлите на нива в документа.

Следните раздели описват логическите нива на възлите в Aspose.Words и класовете, които принадлежат на всяко ниво.

## Документ и раздел Логично ниво

A Word документ се състои от една или повече секции, представени от [Section](https://reference.aspose.com/words/net/aspose.words/section/) клас и разделени от раздел прекъсвания. Раздел може да определи своя собствена страница размер, маржове, ориентация, брой текстови колони, и заглавни части и подноси.

[Document](https://reference.aspose.com/words/net/aspose.words/document/) както и [Section](https://reference.aspose.com/words/net/aspose.words/section/) Равните възли имат структурата, както е показано на следната диаграма.

<img src="/words/net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words" style="width:700px"/>

Раздел съдържа основния текст, както и заглавни части и подноси за първите, дори и нечетни страници. Тези различни от текста се наричат *stories*.

В Aspose.Words, на **Section** Възелът съдържа [Body](https://reference.aspose.com/words/net/aspose.words/body/) както и [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) Възли на историята. На **Body** Обектът съхранява основния текст. На **HeaderFooter** Обектите съхраняват текста за всяка заглавна част и стъпало. Текстът на всяка история се състои от параграфи и таблици, съответно представени от **Paragraph** както и **Table** обекти на ниво блок.

Освен това, всеки Word документ може да съдържа речник, който е представен от [GlossaryDocument](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/) Възел в Aspose.Words. Документ с речник [BuildingBlocks](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/buildingblocks/), [AutoText](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/), както и [AutoCorrect](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/) Записи.

**GlossaryDocument** включва [BuildingBlock](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblock/) възли, представляващи различни видове речникови документи. Всеки **BuildingBlock** съдържа раздели, които могат да бъдат вмъквани, отстранявани и копирани в документи.

## Блокиране на логическо ниво

Блоковите възли представляват контейнери за контрол на съдържанието и съдържанието и могат да се появят в дървените върхове на децата в следните възли:

- Тяло
- Заглавна част
- Футър
- Бележка под линия
- Коментар
- Форма
- GroupФорма
- Килия
- Structured DocumentTag

Блоковите възли се представят от следните класове:

- [Tables](https://reference.aspose.com/words/net/aspose.words.tables/table/) както и [Paragraphs](https://reference.aspose.com/words/net/aspose.words/paragraph/), които са най-важните възли на ниво блок
- Отметки, които се случват както на ниво блок, така и на ниво inline
- [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/), които представляват потребителска марка и могат да съдържат както контрол на съдържанието, така и контрол на съдържанието

Следната диаграма показва елементи на блоково ниво.

<img src="/words/net/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words" style="width:550px"/>

## Логично ниво

Вътрешните възли представляват действителното съдържание на документа и могат да се съдържат в следните контейнери:

- Параграф. .. най-често срещаният контейнер
- [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/)
- Structured DocumentTag

Елементите на Inline ниво са представени от следните класове:

- [Run](https://reference.aspose.com/words/net/aspose.words/run/)
- [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmarkstart/) както и [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmarkend/) представлява отметки
- [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) както и [Footnote](https://reference.aspose.com/words/net/aspose.words.notes/footnote/) представлява анотация
- [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) както и [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) които представляват символи на полето, и [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) представлява Полета с думи
- [SpecialChar](https://reference.aspose.com/words/net/aspose.words/specialchar/) представлява специални знаци в документа
- [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) както и [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) представя форми, рисунки, изображения и др.
- SmartTag и структуриран документ Етикетът представлява потребителска марка

Следната диаграма показва структурата на вътрешните възли.

<img src="/words/net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words" style="width:785px"/>

{{% alert color="primary" %}}

Форма в Microsoft Word включват Office Art AutoShapes, текстови кутии, изображения, OLE обекти, и ActiveX контроли, всички от които са представени с помощта на `Shape` Клас. Някои форми също могат да съдържат текст, така че формата възли в Aspose.Words може да съдържа блокови възли.

Форматите могат да бъдат групирани един в друг, използвайки GroupФормални възли.

{{% /alert %}}

{{% alert color="primary" %}}

Бележки под линия и коментари могат да съдържат текст, следователно бележка под линия и коментар възли в Aspose.Words може да съдържа блокови възли.

{{% /alert %}}

## Ниво на клетъчен възел

Таблицата се състои от възли от редове и клетки. Елементите на таблицата се представят от следните класове:

- [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) представлява ред в таблицата
- [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) представлява клетка на таблицата
- Структуриран документ Етикетът представлява потребителска марка

Следната диаграма показва структурата на възела на нивата на таблица, ред и клетки.

<img src="/words/net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words" style="width:910px"/>

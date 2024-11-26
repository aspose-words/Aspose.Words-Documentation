---
title: Логически нива на възли в документ C++
second_title: Aspose.Words за C++
articleTitle: Логически нива на възли в документ
linktitle: Логически нива на възли в документ
type: docs
description: "В Aspose.Words за C++ документация се споменават логически нива на възли-ниво блок, ниво инлайн или ниво ред. Нивото на възела се използва за описание на местоположението в документното дърво, където обикновено се появява възелът."
weight: 10
url: /bg/cpp/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Тази документация понякога се отнася до група от класове възли като принадлежащи към" ниво "в документ, като например възли" на ниво блок"," инлайн ниво "(известни също като" инлайн") или" ниво на ред". Тези нива в документа са диференцирани чисто логически и не са изрично изразени чрез наследяване или други Aspose.Words DOM средства. Нивото на възел се използва, за да опише мястото в документното дърво, където обикновено се появява възелът.

В предишната статия вече говорихме за връзката между възлите и факта, че не всички възли могат да бъдат деца на възли. Например клетка може да бъде само дете на ред, а ред може да бъде само дете на таблица и т.н. Тези релации са приложими и за логическото разделяне на възли на нива в документа.

Следващите раздели описват логическите нива на възли в Aspose.Words и класовете, които принадлежат към всяко ниво.

## Логическо ниво на документа и секцията

Документът Word се състои от една или повече секции, представени от класа [Section](https://reference.aspose.com/words/cpp/aspose.words/section) и разделени с раздели на раздели. Разделът може да определи свой собствен размер на страницата, полета, ориентация, брой текстови колони и горни и долни колонтитули.

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) и [Раздел](https://www.aspose.com/api/words/cpp/aspose.words/section/) възлите на ниво имат структурата, както е показано на следващата диаграма.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-cpp" style="width:700px"/>

Разделът съдържа основния текст, както и горни и долни колонтитули за първите, четните и нечетните страници. Тези различни "потоци" от текст се наричат *stories*.

Във Aspose.Words, **Section** възел съдържа [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) и [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) история възли. **Body** обектът съхранява основния текст. **HeaderFooter** обектите съхраняват текста за всеки горен и долен колонтитул. Текстът на всяка история се състои от параграфи и таблици, съответно представени от **Paragraph** и **Table** обекти на ниво блок.

Освен това всеки документ Word може да съдържа речник, който е представен от [GlossaryDocument](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/) възел в Aspose.Words. Речникът съдържа записи [BuildingBlocks](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/get_buildingblocks/), [AutoText](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/) и [AutoCorrect](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/).

**GlossaryDocument**

## Блок Логическо Ниво

Възлите на блоково ниво представляват контейнери за съдържание и контроли на съдържание и могат да се появят в дъщерните възли на документното дърво в следните възли:

- Тяло
- Заглавна част
- Долен колонтитул
- Бележка под линия
- Коментар
- Форма
- GroupShape
- Клетка
- StructuredDocumentTag

Възлите на блоково ниво са представени от следните класове:

- [Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) и [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), които са най-важните възли на блоково ниво
- Отметки, които се появяват както на блоково ниво, така и на вградено ниво
- [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/), които представляват персонализирано маркиране и могат да съдържат както контроли на съдържание, така и контроли на съдържание

Следващата диаграма показва елементите на ниво блок.

<img src="block-level.png" alt="block-level-aspose-words-cpp" style="width:550px"/>

## Логическо Ниво

Вградените възли представляват действителното съдържание на документа и могат да се съдържат в следните контейнери:

- Параграф – най-често срещаният контейнер
- [SmartTag](https://reference.aspose.com/words/cpp/aspose.words.markup/smarttag/)
- StructuredDocumentTag

Елементите на вградено ниво са представени от следните класове:

- [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) - тиражи на текст, форматирани по различен начин
- [BookmarkStart](https://reference.aspose.com/words/cpp/aspose.words/bookmarkstart/) и [BookmarkEnd](https://reference.aspose.com/words/cpp/aspose.words/bookmarkend) представляват отметки
- [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) и [Footnote](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/) представляват анотации
- [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldseparator/) и [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldend/), които представляват знаци за полета, и [FormField](https://reference.aspose.com/words/cpp/aspose.words.fields/formfield/) представляват Word полета
- [SpecialChar](https://reference.aspose.com/words/cpp/aspose.words/specialchar/) представлява специални знаци в документа
- [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) и [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) представляват форми, рисунки, изображения и др.
- SmartTag и StructuredDocumentTag представляват персонализирана маркировка

Следващата диаграма показва структурата на инлайн-ниво възли.

<img src="inline-level.png" alt="inline-level-aspose-words-cpp" style="width:785px"/>

{{% alert color="primary" %}}

Формите в Microsoft Word включват Офис Изкуство AutoShapes, текстови полета, изображения, OLE обекти и контроли на Активекс, всички от които са представени в класа `Shape`. Някои фигури също могат да съдържат текст, така че фигурните възли в Aspose.Words могат да съдържат възли на блоково ниво.

Фигурите могат да бъдат групирани една в друга, използвайки GroupShape възли.

{{% /alert %}}

{{% alert color="primary" %}}

Бележките под линия и коментарите могат да съдържат текст, следователно бележките под линия и коментарите в Aspose.Words могат да съдържат възли на блоково ниво.

{{% /alert %}}

## Ниво на таблица, ред и клетъчен възел

Таблицата се състои от възли от редове и клетки. Елементите на таблицата са представени от следните класове:

- [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) представлява ред на таблица
- [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) представлява таблица клетка
- StructuredDocumentTag представляват потребителски маркиране

Следващата диаграма показва структурите на възлите на нивата на таблицата, реда и клетките.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-cpp" style="width:910px"/>

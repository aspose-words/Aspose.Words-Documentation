---
title: Логічні рівні імен у документі
second_title: Aspose.Words для Python via .NET
articleTitle: Логічні рівні імен у документі
linktitle: Логічні рівні імен у документі
type: docs
description: "У Aspose.Words для Python via .NET документація зазначено логічні рівні вузлів – рівень блоків, рівень інлайн або рівень рядка. Рівень вершини використовується для опису місця розташування в дереві документа, де зазвичай відбувається вузол."
weight: 10
url: /uk/python-net/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Ця документація іноді відноситься до групи класів вузлів, що належать до "рівню" в документі, таких як "блок-рівень", "інлайн-рівень" (також відомий як "інлайн"), або "рівневі" вершини. Ці рівні в документі диференційовані чисто логічно і не явно виражені спадкування або інші Aspose.Words DOM засоби. Рівень вершини використовується для опису місця в дереві документа, де вузол зазвичай виникне.

У попередній статті ми вже говорили про зв'язок між вузлами і тим, що не всі вузли дозволяють бути дитиною будь-яких вузлів. Наприклад, [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) може бути тільки [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) дитина, і [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) може бути тільки [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) і так далі. Ці відносини також застосовуються для логічного поділу вузлів на рівні в документі.

Нижче наведено логічні рівні вузлів в Aspose.Words і класи, які відносяться до кожного рівня.

## Документ і розділ логічний рівень

Р Документ Word складається з одного або декількох розділів, представлених на сайті [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) клас і відокремлені перервами секцій. В розділі можна визначити власний розмір сторінок, запаси, орієнтацію, кількість текстових стовпчиків, а також заголовки та нижній колонтитул.

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/) і [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) рівні вузли мають структуру, як показано на наступній діаграмі.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words" style="width:700px"/>

В розділі міститься основний текст, а також заголовки та нижній колонтитул для перших, парних і непарних сторінок. Ці різні "квітки" тексту називають *stories*й

У Aspose.Words, Про нас [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) вузол містить [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) і [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) сюжетні вузли. Про нас [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) об'єкт зберігає основний текст. Про нас [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) об'єкти зберігають текст для кожного заголовка та нижнього колонтитула. Текст будь-якої історії складається з абзаців і таблиць, відповідно представлених [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) і [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) об'єкти блоку-рівню.

Додатково, кожен Документ Word може містити глянцеву, яка представлена глянцевою [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) вузол в Aspose.Wordsй глянцевий документ містить [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/) [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text), і [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct) записи.

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) В наявності [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) вершини, що представляють різні типи записів глянцевого документа. Що [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) містить розділи, які можуть бути вставлені, видалені і скопійовані в документи.

## Блок логічний рівень

Блок-рівневі вузли представляють собою контейнери для контролю вмісту та вмісту, і можуть виникати в дочірніх вузлах документа в таких вузлах:

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Блок-рівневі вузли представлені такими класами:

- до [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) і [Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), які найбільш важливі блок-рівневі вузли
- до [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/), що відбувається як на рівні блоків, так і на внутрішньому рівні
- до [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/), які представляють спеціальний розмітку і можуть містити як контент, так і контроль вмісту

Наведені нижче діаграми відображаються елементи блочного рівня.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words" style="width:550px"/>

## Вхідний логічний рівень

Вузлові вузли в режимі реального вмісту документа і можуть міститися в наступних контейнерах:

- до [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) – найбільш поширена ємність
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Внутрішні елементи представлені за наступними класами:

- до [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) – перебіги текстового форматування
- до [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) і [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) зауважити закладки
- до [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) і [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) показати анотації
- до [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) і [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) що представляють символи поля, і [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) Головна Поле слів
- до [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) являє собою спеціальні символи в документі
- до [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) і [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) представляють форми, малюнки, зображення тощо.
- до [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) і [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) показати власний розмітка

Наведені нижче діаграми відображаються структура вузлів в режимі онлайн.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words" style="width:785px"/>

{{% alert color="primary" %}}

Шпильки в Microsoft Word включають Office Art AutoShapes, текстові коробки, зображення, об'єкти OLE та керування ActiveX, всі з яких представлені за допомогою `Shape` клас. Деякі форми можуть також містити текст, тому форму вершини в Aspose.Words може містити блок-рівневі вузли.

Шпильки можуть бути груповані всередині одного за допомогою [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) вершини.

{{% /alert %}}

{{% alert color="primary" %}}

Ноти і коментарі можуть містити текст, тому [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) і [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) вершини в Aspose.Words може містити блок-рівневі вузли.

{{% /alert %}}

## Таблиця, Рядок і клітинний рівень шуму

Стіл складається з вузлів рядків і клітин. [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) елементи представлені наступними класами:

- до [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) являє собою настільний ряд
- до [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) являє собою настільну клітинку
- до [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) показати власний розмітка

Наведена нижче схема показує структури вузлів [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), і [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) рівні.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words" style="width:910px"/>

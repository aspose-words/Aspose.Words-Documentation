---
title: Логічні рівні імен у документі C#
second_title: Aspose.Words для .NET
articleTitle: Логічні рівні імен у документі
linktitle: Логічні рівні імен у документі
type: docs
description: "У Aspose.Words для .NET документація зазначено логічні рівні вузлів – рівень блоку, рівень інлайну або рівень рядків за допомогою C#й Рівень вершини використовується для опису місця розташування в дереві документа, де зазвичай відбувається вузол."
weight: 10
url: /uk/net/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Ця документація іноді відноситься до групи класів вузлів, що належать до "рівню" в документі, таких як "блок-рівень", "інлайн-рівень" (також відомий як "інлайн"), або "рівневі" вершини. Ці рівні в документі диференційовані чисто логічно і не явно виражені спадкування або інші Aspose.Words DOM засоби. Рівень вершини використовується для опису місця в дереві документа, де вузол зазвичай виникне.

У попередній статті ми вже говорили про зв'язок між вузлами і тим, що не всі вузли дозволяють бути дитиною будь-яких вузлів. Наприклад, клітина може бути тільки малюком, і може бути тільки настільною дитиною, і так далі. Ці відносини також застосовуються для логічного поділу вузлів на рівні в документі.

Нижче наведено логічні рівні вузлів в Aspose.Words і класи, які відносяться до кожного рівня.

## Документ і розділ логічний рівень

Р Документ Word складається з одного або декількох розділів, представлених на сайті [Section](https://reference.aspose.com/words/net/aspose.words/section/) клас і відокремлені перервами секцій. В розділі можна визначити власний розмір сторінок, запаси, орієнтацію, кількість текстових стовпчиків, а також заголовки та нижній колонтитул.

[Document](https://reference.aspose.com/words/net/aspose.words/document/) і [Section](https://reference.aspose.com/words/net/aspose.words/section/) рівні вузли мають структуру, як показано на наступній діаграмі.

<img src="/words/net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words" style="width:700px"/>

В розділі міститься основний текст, а також заголовки та нижній колонтитул для перших, парних і непарних сторінок. Ці різні "квітки" тексту називають *stories*й

У Aspose.Words, Про нас **Section** вузол містить [Body](https://reference.aspose.com/words/net/aspose.words/body/) і [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) сюжетні вузли. Про нас **Body** об'єкт зберігає основний текст. Про нас **HeaderFooter** об'єкти зберігають текст для кожного заголовка та нижнього колонтитула. Текст будь-якої історії складається з абзаців і таблиць, відповідно представлених **Paragraph** і **Table** об'єкти блоку-рівню.

Додатково, кожен Документ Word може містити глянцеву, яка представлена глянцевою [GlossaryDocument](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/) вузол в Aspose.Wordsй глянцевий документ містить [BuildingBlocks](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/buildingblocks/), [AutoText](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/), і [AutoCorrect](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/) записи.

**GlossaryDocument** В наявності [BuildingBlock](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblock/) вершини, що представляють різні типи записів глянцевого документа. Що **BuildingBlock** містить розділи, які можуть бути вставлені, видалені і скопійовані в документи.

## Блок логічний рівень

Блок-рівневі вузли представляють собою контейнери для контролю вмісту та вмісту, і можуть виникати в дочірніх вузлах документа в таких вузлах:

- Тіло
- Заголовок
- Футер
- Ноти
- Коментарі
- Форма
- до GroupШпилька
- Клітка
- СтруктурованийДокументТаг

Блок-рівневі вузли представлені такими класами:

- до [Tables](https://reference.aspose.com/words/net/aspose.words.tables/table/) і [Paragraphs](https://reference.aspose.com/words/net/aspose.words/paragraph/), які найбільш важливі блок-рівневі вузли
- Замітки, які виникають як на блоці, так і на внутрішньому рівні
- до [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/), які представляють спеціальний розмітку і можуть містити як контент, так і контроль вмісту

Наведені нижче діаграми відображаються елементи блочного рівня.

<img src="/words/net/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words" style="width:550px"/>

## Вхідний логічний рівень

Вузлові вузли в режимі реального вмісту документа і можуть міститися в наступних контейнерах:

- Параграф - найбільш поширена ємність
- [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/)
- СтруктурованийДокументТаг

Внутрішні елементи представлені за наступними класами:

- до [Run](https://reference.aspose.com/words/net/aspose.words/run/) – перебіги текстового форматування
- до [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmarkstart/) і [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmarkend/) зауважити закладки
- до [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) і [Footnote](https://reference.aspose.com/words/net/aspose.words.notes/footnote/) показати анотації
- до [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) і [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) що представляють символи поля, і [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) Головна Поле слів
- до [SpecialChar](https://reference.aspose.com/words/net/aspose.words/specialchar/) являє собою спеціальні символи в документі
- до [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) і [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) представляють форми, малюнки, зображення тощо.
- СмартТаг і СтруктурованийДокумент Тег представляє спеціальний розмітка

Наведені нижче діаграми відображаються структура вузлів в режимі онлайн.

<img src="/words/net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words" style="width:785px"/>

{{% alert color="primary" %}}

Шпильки в Microsoft Word включають Office Art AutoShapes, текстові коробки, зображення, об'єкти OLE та керування ActiveX, всі з яких представлені за допомогою `Shape` клас. Деякі форми можуть також містити текст, тому форму вершини в Aspose.Words може містити блок-рівневі вузли.

Шпильки можуть бути груповані всередині одного за допомогою GroupФорма вершини.

{{% /alert %}}

{{% alert color="primary" %}}

Ноти і коментарі можуть містити текст, тому Футноти і коментар вузлів в Aspose.Words може містити блок-рівневі вузли.

{{% /alert %}}

## Таблиця, Рядок і клітинний рівень шуму

Стіл складається з вузлів рядків і клітин. Елементи таблиці представлені в наступних класах:

- до [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) являє собою настільний ряд
- до [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) являє собою настільну клітинку
- СтруктурованийДокумент Тег представляє спеціальний розмітка

Наведені нижче діаграми відображаються структури вузлів таблиці, пороги та рівня клітин.

<img src="/words/net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words" style="width:910px"/>

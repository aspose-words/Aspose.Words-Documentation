---
title: Логічні рівні імен у документі Java
second_title: Aspose.Words для Java
articleTitle: Логічні рівні імен у документі
linktitle: Логічні рівні імен у документі
type: docs
description: "У Aspose.Words для Java документація зазначено логічні рівні вузлів – рівень блоків, нелінійний рівень або рівень рядків. Рівень вершини використовується для опису місця розташування в дереві документа, де зазвичай відбувається вузол."
weight: 10
url: /uk/java/logical-levels-of-nodes-in-a-document/
---

Ця документація іноді відноситься до групи класів вузлів, що належать до "рівню" в документі, таких як "блок-рівень", "інлайн-рівень" (також відомий як "інлайн"), або "рівневі" вузли. Ці рівні в документі диференційовані чисто логічно і не явно виражені спадкування або інші Aspose.Words DOM засоби. Рівень вершини використовується для опису місця в дереві документа, де вузол зазвичай виникне.

У попередній статті ми вже говорили про відносини між вузлами і тим, що не всі вузли допускаються бути дитиною будь-яких вузлів. Наприклад, клітина може бути тільки малюком, і може бути тільки настільною дитиною, і так далі. Ці взаємозв'язки також застосовуються для логічного поділу вузлів на рівні в документі.

Нижче наведено логічні рівні вузлів в Aspose.Words і класи, які відносяться до кожного рівня.

## Документ і розділ логічний рівень

Р Документ Word складається з одного або декількох розділів, представлених на сайті [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) клас і відокремлений перервами секцій. В розділі можна визначити власний розмір сторінок, запаси, орієнтацію, кількість текстових стовпчиків, а також заголовки та нижній колонтитул.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) і [Розсилка](https://www.aspose.com/api/words/java/com.aspose.words/section) рівні вузли мають структуру, як показано на наступній діаграмі.

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

В розділі міститься основний текст, а також заголовки та нижній колонтитул для перших, парних і непарних сторінок. Ці різні "квітки" тексту називають *stories*й

У Aspose.Words, Про нас **Section** вузол містить [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) і [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) сюжетні вузли. Про нас **Body** об'єкт зберігає основний текст. Про нас **HeaderFooter** об'єкти зберігають текст для кожного заголовка та нижнього колонтитула. Текст будь-якої історії складається з абзаців і таблиць, відповідно представлених **Paragraph** і **Table** об'єкти блоку-рівню.

Додатково, кожен Документ Word може містити глянцеву, яка представлена глянцевою [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) вузол в Aspose.Wordsй глянцевий документ містить [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT), і [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) записи.

**GlossaryDocument** В наявності [BuildingBlock](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/) вершини, що представляють різні типи записів глянцевого документа. Що **BuildingBlock** містить розділи, які можуть бути вставлені, видалені і скопійовані в документи.

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

- до [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) і [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), які є найважливішими вершинами блоків
- Замітки, які виникають як на блоці, так і на внутрішньому рівні
- до [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), які представляють спеціальний розмітку і можуть містити як контент, так і контроль вмісту

Наведені нижче діаграми відображаються елементи блоку.

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## Вхідний логічний рівень

Вузлові вершини представляють фактичний зміст документа і можуть міститися в наступних контейнерах:

- Параграф - найбільш поширена ємність
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- СтруктурованийДокументТаг

Внутрішні елементи представлені за наступними класами:

- до [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) – перебіги текстового форматування
- до [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) і [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) зауважити закладки
- до [EnglishDeutschPусский简体中文中國傳統EspañolالعربيةFrançaisελληνικάDanskАнглійскаябългарскиCatalàČeskýEestiSuomiGaeilgeहिन्दीHrvatskiMagyarIndonesiaIcelandicItalianoעברי日本の한국의LietuvosLatvijasмакедонскиMalayMaltiNederlandsNorskPolskiPortuguêsRomânescSlovenskýSlovenskiShqiptarCрпскиSvenskaไทยTürkçe](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) і [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) показати анотації
- до [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) і [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) що представляють символи поля, і [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) Головна Поле слів
- до [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) представляє спеціальні символи в документі
- до [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) і [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) представляють форми, малюнки, зображення тощо.
- СмартТаг і СтруктурованийДокумент Тег представляє спеціальний розмітка

Наведені нижче діаграми відображаються структура вузлів в режимі онлайн.

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

Шпильки в Microsoft Word включають Office Art AutoShapes, текстові коробки, зображення, об'єкти OLE та керування ActiveX, всі з яких представлені за допомогою `Shape` клас. Деякі форми можуть також містити текст, тому форму вершини в Aspose.Words може містити блок-рівневі вузли.

Шпильки можуть бути груповані всередині одного за допомогою GroupФорма вершини.

{{% /alert %}}

{{% alert color="primary" %}}

Нотатки і коментарі можуть містити текст, тому Футноти і коментар вузлів в Aspose.Words може містити блок-рівневі вузли.

{{% /alert %}}

## Таблиця, Рядок та клітинний рівень

Стіл складається з вузлів рядків і клітин. Елементи таблиці представлені такими класими:

- до [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) являє собою настільний ряд
- до [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) являє собою настільну клітинку
- СтруктурованийДокумент Тег представляє спеціальний розмітка

Наведені нижче діаграми відображаються вузлові структури таблиці, рядів та клітин.

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>

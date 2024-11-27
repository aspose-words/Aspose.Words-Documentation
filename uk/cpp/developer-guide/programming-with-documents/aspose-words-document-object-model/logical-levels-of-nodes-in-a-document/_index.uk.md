---
title: Логічні рівні вузлів у документі в C++
second_title: Aspose.Words для C++
articleTitle: Логічні рівні вузлів у документі
linktitle: Логічні рівні вузлів у документі
type: docs
description: "У документації Aspose.Words для C++ згадуються логічні рівні вузлів – рівень блоку, вбудований рівень або рівень рядка. Рівень вузла використовується для опису розташування в дереві документа, де зазвичай знаходиться вузол."
weight: 10
url: /uk/cpp/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

У цій документації іноді згадується група КЛАСІВ вузлів, що відносяться до" рівня "в документі, наприклад, вузли" рівня блоків"," вбудованого рівня "(також відомі як" вбудовані") або"рівня рядків". Ці рівні в документі різняться чисто логічно і не виражаються явно за допомогою успадкування або іншими способами Aspose.Words DOM. Рівень вузла використовується для опису місця в дереві документа, де зазвичай знаходиться вузол.

У попередній статті ми вже говорили про взаємозв'язок між вузлами і про те, що не всім вузлам дозволено бути дочірніми по відношенню до будь-яких вузлів. Наприклад, комірка може бути дочірньою лише по відношенню до рядка, А рядок може бути дочірньою лише по відношенню до таблиці тощо. Ці взаємозв'язки також застосовні для логічного поділу вузлів на рівні в документі.

У наступних розділах описуються логічні рівні вузлів в Aspose.Words і класи, що належать кожному рівню.

## Логічний рівень документа та розділу

Документ Word складається з одного або декількох розділів, представлених класом [Section](https://reference.aspose.com/words/cpp/aspose.words/section) і розділених розділовими смугами. Розділ може сам визначати розмір сторінки, поля, орієнтацію, кількість текстових стовпців, а також верхні і нижні колонтитули.

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) і [Розділ](https://www.aspose.com/api/words/cpp/aspose.words/section/) вузли рівня мають структуру, показану на наступній діаграмі.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-cpp" style="width:700px"/>

Розділ містить основний текст, а також колонтитули для першої, парної та непарної сторінок. Ці різні "потоки" тексту називаються *stories*.

У Aspose.Words вузол **Section** містить вузли історії [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) та [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/). Об'єкт **Body** зберігає основний текст. Об'єкти **HeaderFooter** зберігають текст для кожного верхнього та нижнього колонтитулів. Текст будь-якої статті складається з абзаців і таблиць, відповідно представлених об'єктами **Paragraph** і **Table** рівня блоків.

Крім того, кожен документ Word може містити глосарій, який представлений вузлом [GlossaryDocument](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/) в Aspose.Words. Документ-глосарій містить записи [BuildingBlocks](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/get_buildingblocks/), [AutoText](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/) і [AutoCorrect](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/).

**GlossaryDocument**

## Логічний рівень блоку

Вузли блокового рівня-це контейнери для вмісту та елементів керування вмістом і можуть зустрічатися в дочірніх вузлах дерева документів у наступних вузлах:

- Тіло
- Заголовок
- Нижній колонтитул
- Виноска
- Коментар
- Форма
- GroupShape
- Клітина
- StructuredDocumentTag

Вузли блочного рівня представлені наступними класами:

- [Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) та [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), які є найважливішими вузлами рівня блоку
- Закладки, які виконуються як на рівні блоків, так і на вбудованому рівні
- [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/), які є Користувацькою розміткою і можуть містити як вміст, так і елементи керування вмістом

На наступній діаграмі Показані елементи блочного рівня.

<img src="block-level.png" alt="block-level-aspose-words-cpp" style="width:550px"/>

## Вбудований логічний рівень

Вузли вбудованого рівня представляють фактичний вміст документа і можуть міститися в наступних контейнерах:

- Абзац-найпоширеніший контейнер
- [SmartTag](https://reference.aspose.com/words/cpp/aspose.words.markup/smarttag/)
- StructuredDocumentTag

Елементи вбудованого рівня представлені наступними класами:

- [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) - фрагменти тексту, відформатовані по-різному
- [BookmarkStart](https://reference.aspose.com/words/cpp/aspose.words/bookmarkstart/) і [BookmarkEnd](https://reference.aspose.com/words/cpp/aspose.words/bookmarkend) являють собою закладки
- [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) і [Footnote](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/) являють собою анотації
- [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldseparator/) і [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldend/), які представляють символи полів, а [FormField](https://reference.aspose.com/words/cpp/aspose.words.fields/formfield/) представляють Word полів
- [SpecialChar](https://reference.aspose.com/words/cpp/aspose.words/specialchar/) представляє спеціальні символи в документі
- [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) і [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) являють собою форми, малюнки, зображення і т. д.
- SmartTag та StructuredDocumentTag представляють спеціальну розмітку

На наступній діаграмі показана структура вузлів вбудованого рівня.

<img src="inline-level.png" alt="inline-level-aspose-words-cpp" style="width:785px"/>

{{% alert color="primary" %}}

Фігури в Microsoft Word включають Office Art AutoShapes, текстові поля, зображення, об'єкти OLE та елементи керування ActiveX, усі представлені за допомогою класу `Shape`. Деякі фігури також можуть містити текст, тому вузли фігур у Aspose.Words можуть містити вузли на рівні блоків.

Фігури можуть бути згруповані один всередині одного за допомогою вузлів GroupShape.

{{% /alert %}}

{{% alert color="primary" %}}

Виноски та коментарі можуть містити текст, тому вузли виносок та коментарів у Aspose.Words можуть містити вузли на рівні блоків.

{{% /alert %}}

## Рівень вузлів таблиць, рядків і комірок

Таблиця складається з вузлів рядків і осередків. Елементи таблиці представлені наступними класами:

- [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) представляє рядок таблиці
- [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) являє собою комірку таблиці
- StructuredDocumentTag представляє спеціальну розмітку

Наступна діаграма показує структури вузлів на рівні таблиці, рядка та комірки.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-cpp" style="width:910px"/>

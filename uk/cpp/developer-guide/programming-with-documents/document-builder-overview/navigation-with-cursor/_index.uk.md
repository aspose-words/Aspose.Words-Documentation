---
title: Навігація за допомогою курсору в C++
second_title: Aspose.Words для C++
articleTitle: Навігація за допомогою курсору
linktitle: Навігація за допомогою курсору
description: "Переміщайтеся між різними вузлами документа, такими як абзац, закладка або певний символ, використовуючи C++."
type: docs
weight: 10
url: /uk/cpp/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

При роботі з документом, навіть якщо він короткий або довгий, вам потрібно буде переміщатися по ньому. Навігація за допомогою віртуального курсору являє собою можливість переміщатися між різними вузлами документа.

У короткому документі легко переміщатися по тексту, оскільки ви можете переміщати точку вставки, навіть використовуючи клавіші зі стрілками на клавіатурі або клацаючи мишею, щоб знайти точку вставки в потрібному місці. Але якщо у вас великий документ з великою кількістю сторінок, цих основних методів буде недостатньо.

У цій статті пояснюється, як переміщатися по документу та переміщатися за допомогою віртуального курсору до різних його частин.

## Визначення поточного положення курсору

Перш ніж почати процес навігації по документу, вам потрібно буде вказати вузол, який обраний в даний момент. Ви можете отримати точне положення курсору на вибраному вузлі, використовуючи властивість [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Крім того, замість отримання поточного вузла ви можете отримати поточний вибраний абзац або поточний вибраний розділ, використовуючи властивості [CurrentParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentparagraph/) та [CurrentSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentsection/).

Усі операції вставки, які ви виконуєте за допомогою [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), будуть вставлені перед [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Якщо поточний абзац порожній або курсор встановлений безпосередньо перед кінцем абзацу, **CurrentNode** повертає значення nullptr.

## Методи навігації по документу

Коли ви редагуєте текст, важливо знати, як переміщатися по документу і куди саме переміщатися в ньому. Aspose.Words дозволяє переміщатися по документу і переходити до його різних розділів і частин – це аналогічно функціональності панелі навігації в Microsoft Word для переходу до сторінки або заголовка в документі Word без прокрутки.

Основний метод полягає в тому, щоб мати можливість перемістити положення курсору до певного вузла у вашому документі, ви можете досягти цього за допомогою методу [MoveTo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/moveto/).

Наступний приклад коду показує, як перемістити **DocumentBuilder** до різних вузлів документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

Але крім базового методу **MoveTo**, є і більш специфічні.

### Перейдіть до початку або кінця документа

Ви можете перейти до початку або кінця документа, використовуючи методи [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) та [MoveToDocumentEnd](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentend/).

Наступний приклад коду показує, як перемістити курсор на початок або кінець документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Навігація за допомогою закладок

Ви можете позначити місце, яке хочете знайти, і легко перейти до нього знову. Ви можете вставити в документ скільки завгодно закладок, а потім переміщатися по них, присвоюючи закладкам унікальні назви. Ви можете перейти до закладки, використовуючи метод [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/).

Наступні приклади коду показують, як перемістити курсор на закладку:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

### Перейдіть до клітинок таблиці

Ви можете перейти до комірки таблиці, використовуючи метод [MoveToCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetocell/). Цей метод дозволить вам перемістити курсор до будь-якої комірки певної таблиці. Крім того, ви можете вказати індекс для переміщення курсору в будь-яку позицію або на вказаний символ у комірці за допомогою методу **MoveToCell**.

Наступний приклад коду показує, як перемістити курсор до вказаної комірки таблиці:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Перейдіть до поля

Ви можете перейти до певного поля у вашому документі, використовуючи метод [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Крім того, ви можете перейти до певного поля об'єднання, використовуючи метод [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/).

Наступний приклад коду показує, як перемістити курсор конструктора документів на певне поле:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToMergeField.cpp" >}}

### Перейдіть до верхнього або нижнього колонтитула

Ви можете перейти до початку верхнього або нижнього колонтитула, використовуючи метод [MoveToHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoheaderfooter/).

Наступний приклад коду показує, як перемістити курсор конструктора документів у верхній або нижній колонтитул документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Перейдіть до розділу або абзацу

Ви можете перейти до певного розділу або абзацу, використовуючи методи [MoveToParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoparagraph/) або [MoveToSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetosection/). Крім того, ви можете вказати індекс для переміщення курсору в будь-яку позицію або на вказаний символ в абзаці за допомогою методу **MoveToParagraph**.

Наступний приклад коду показує, як перейти до певного розділу та певного абзацу в документі:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSectionParagraph.cpp" >}}

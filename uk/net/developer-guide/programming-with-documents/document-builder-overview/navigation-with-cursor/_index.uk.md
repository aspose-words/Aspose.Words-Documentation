---
title: Навігація з куратором в C#
second_title: Aspose.Words для .NET
articleTitle: Навігація з куратором
linktitle: Навігація з куратором
description: "Навігація між різними вузлами в межах документа, таких як абзац, закладок або специфічний характер, використовуючи C#й"
type: docs
weight: 10
url: /uk/net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Під час роботи з документом, навіть якщо це короткий або довгий, вам потрібно буде орієнтуватися через ваш документ. Навігація з віртуальним курсором представляє можливість навігації між різними вузлами в документі.

У короткому документі, що переміщається в документі, простий, як ви можете перемістити точку вставки навіть, використовуючи клавіші з стрілками клавіатури або натиснувши кнопку миші, щоб знайти точку вставки, де ви хочете. Але один раз у вас є великий документ, який має багато сторінок, ці основні методи будуть недостатньо.

Ця стаття пояснює, як перемістити в документі і навігувати віртуальним курсором на різні частини.

## Виявлення позицій поточного квадроцикла

Перед тим як розпочати процес навігації через ваш документ, вам потрібно буде отримати вузол, який в даний час вибрано. Ви можете отримати точну позицію курсора на вибраному вершині, використовуючи [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/) майно. Крім того, замість отримання поточного вузла ви можете отримати в даний час вибраний пункт або в даний час вибраний розділ, використовуючи [CurrentParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentparagraph/) і [CurrentSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentsection/) властивості.

Будь-які операції вставки ви виконуєте за допомогою [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) буде вставлятися до [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/)й Коли поточний пункт порожній або курсор розміщується безпосередньо перед закінченням пункту, то **CurrentNode** повертає null.

## Навігаційні методи в документі

Якщо ви встановите текст, важливо знати, як навігувати свій документ і де саме його переміщати. Aspose.Words дозволяє пересуватися в документі і орієнтуватися на її різні розділи і частини – це схоже на функціональність Панель навігації в Microsoft Word щоб перейти на сторінку або заголовок у документі Word без прокрутки.

Головний метод полягає в тому, щоб мати можливість перемістити позицію курсора на певну вершину у вашому документі, ви можете досягти цього за допомогою використання [MoveTo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/moveto/) метод.

Приклад наступного коду показує, як перемістити **DocumentBuilder** до різних вузлів в документі:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToNode.cs" >}}

Але крім основного **MoveTo** метод, є більш специфічні.

### Навігація до початку або закінчення документа

Ви можете перейти до початку або закінчення вашого документа, використовуючи [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) і [MoveToDocumentEnd](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentend/) методи.

Приклад наступного коду показує, як перемістити позицію курсора до початку або кінця документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToDocumentStartEnd.cs" >}}

### Navigate З закладками

Ви можете відмітити місце, яке ви хочете знайти і переїхати до неї знову легко. Ви можете вставити як багато закладок у ваш документ, як ви хочете, а потім навігувати через них, виявляти закладки з унікальними іменами. Ви можете перемістити закладку за допомогою закладки [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/#movetobookmark/) метод.

Приклади коду показує, як перемістити позицію курсора до закладки:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToBookmark.cs" >}}

### Навігація до таблиць клітин

Ви можете перемістити в настільну клітинку за допомогою [MoveToCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetocell/) метод. Цей метод дозволить вам навігувати курсор в будь-яку клітинку в певному столі. Крім того, ви можете вказати індекс, щоб перемістити курсор на будь-яку позицію або зазначений характер в комірці в межах комірки **MoveToCell** метод.

Приклад наступного коду показує, як перемістити позицію курсора до вказаної таблиці комірки:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToTableCell.cs" >}}

### Навігація до поля

Ви можете переїхати на конкретне поле у вашому документі, використовуючи [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/) метод. Крім того, ви можете перемістити в певну область злиття, використовуючи [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/#movetomergefield/) метод.

Приклад коду показує, як перемістити курсор конструктора документів на конкретне поле:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToMergeField.cs" >}}

### Навігація на заголовок або нижній колонтитул

Ви можете перейти до початку заголовка або нижній колонтитул за допомогою [MoveToHeaderFooter](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoheaderfooter/) метод

Приклад коду показує, як перемістити курсор конструктора документів на заголовок документа або нижній колонтитул:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToHeadersFooters.cs" >}}

### Навігація до розділу або пункту

Ви можете переходити в конкретну секцію або абзац за допомогою [MoveToParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoparagraph/) або [MoveToSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetosection/) методи. Крім того, ви можете вказати індекс, щоб перемістити курсор на будь-яку позицію або зазначений характер в пункті в межах пункту **MoveToParagraph** метод.

Наприклад, наступний код показує, як перейти до певного розділу та конкретного пункту у документі:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToSection.cs" >}}

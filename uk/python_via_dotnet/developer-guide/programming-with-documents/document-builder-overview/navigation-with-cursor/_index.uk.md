---
title: Навігація з куратором в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Навігація з куратором
linktitle: Навігація з куратором
description: "Негайний між різними вузлами в документі, такими як абзац, закладок або специфічний характер, використовуючи Pythonй"
type: docs
weight: 10
url: /uk/python-net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Під час роботи з документом, навіть якщо це короткий або довгий, вам потрібно буде орієнтуватися через ваш документ. Навігація з віртуальним курсором представляє можливість навігації між різними вузлами в документі.

У короткому документі, що переміщається в документі, простий, як ви можете перемістити точку вставки навіть, використовуючи клавіші з стрілками клавіатури або натиснувши кнопку миші, щоб знайти точку вставки, де ви хочете. Але один раз у вас є великий документ, який має багато сторінок, ці основні методи будуть недостатньо.

Ця стаття пояснює, як перемістити в документі і навігувати віртуальним курсором на різні частини.

## Виявлення позицій поточного квадроцикла

Перед тим як розпочати процес навігації через ваш документ, вам потрібно буде отримати вузол, який в даний час вибрано. Ви можете отримати точну позицію курсора на вибраному вершині, використовуючи [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) майно. Крім того, замість отримання поточного вузла ви можете отримати в даний час вибраний пункт або в даний час вибраний розділ, використовуючи [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) і [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/) властивості.

Будь-які операції вставки ви виконуєте за допомогою [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) буде вставлятися до [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/)й Коли поточний пункт порожній або курсор розміщується безпосередньо перед закінченням пункту, то [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) повертає None.

## Навігаційні методи в документі

Якщо ви встановите текст, важливо знати, як навігувати свій документ і де саме його переміщати. Aspose.Words дозволяє пересуватися в документі і орієнтуватися на її різні розділи і частини – це схоже на функціональність Панель навігації в Microsoft Word щоб перейти на сторінку або заголовок у документі Word без прокрутки.

Головний метод полягає в тому, щоб мати можливість перемістити позицію курсора на певну вершину у вашому документі, ви можете досягти цього за допомогою використання [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) метод.

Приклад наступного коду показує, як перемістити [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) до різних вузлів в документі:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

Але крім основного [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) метод, є більш специфічні.

### Навігація до початку або закінчення документа

Ви можете перейти до початку або закінчення вашого документа, використовуючи [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) і [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/) методи.

Приклад наступного коду показує, як перемістити позицію курсора до початку або кінця документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Navigate З закладками

Ви можете відмітити місце, яке ви хочете знайти і переїхати до неї знову легко. Ви можете вставити як багато закладок у ваш документ, як ви хочете, а потім навігувати через них, виявляти закладки з унікальними іменами. Ви можете перемістити закладку за допомогою закладки [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) метод.

Приклади коду показує, як перемістити позицію курсора до закладки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### Навігація до таблиць клітин

Ви можете перемістити в настільну клітинку за допомогою [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) метод. Цей метод дозволить вам навігувати курсор в будь-яку клітинку в певному столі. Крім того, ви можете вказати індекс, щоб перемістити курсор на будь-яку позицію або зазначений характер в комірці в межах комірки [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) метод.

Приклад наступного коду показує, як перемістити позицію курсора до вказаної таблиці комірки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### Навігація до поля

Ви можете переїхати на конкретне поле у вашому документі, використовуючи [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/) метод. Крім того, ви можете перемістити в певну область злиття, використовуючи [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) метод.

Приклад коду показує, як перемістити курсор конструктора документів на конкретне поле:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### Навігація на заголовок або нижній колонтитул

Ви можете перейти до початку заголовка або нижній колонтитул за допомогою [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) метод

Приклад коду показує, як перемістити курсор конструктора документів на заголовок документа або нижній колонтитул:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### Навігація до розділу або пункту

Ви можете переходити в конкретну секцію або абзац за допомогою [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) або [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/) методи. Крім того, ви можете вказати індекс, щоб перемістити курсор на будь-яку позицію або зазначений характер в пункті в межах пункту [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) метод.

Наприклад, наступний код показує, як перейти до певного розділу та конкретного пункту у документі:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}

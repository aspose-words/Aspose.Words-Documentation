---
title: Навігація з куратором в Java
second_title: Aspose.Words для Java
articleTitle: Навігація з куратором
linktitle: Навігація з куратором
description: "Навігація між різними вузлами в документі, такими як абзац, закладок або специфічний характер, використовуючи Javaй"
type: docs
weight: 5
url: /uk/java/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Під час роботи з документом, навіть якщо це короткий або довгий, вам потрібно буде орієнтуватися через ваш документ. Навігація з віртуальним курсором представляє можливість навігації між різними вузлами в документі.

У короткому документі, що переміщається в документі, простий, як ви можете перемістити точку вставки навіть, використовуючи клавіші зі стрілками клавіатури або натиснувши кнопку миші, щоб знайти точку вставки, де ви хочете. Але один раз у вас є великий документ, який має багато сторінок, ці основні методи будуть недостатньо.

У статті описано, як пересуватися в документі і навігувати віртуальним курсором на різні частини його.

## Виявлення позицій поточного квадроцикла

Перед тим як почати процес навігації через ваш документ, вам потрібно буде отримати вузол, який в даний час вибрано. Ви можете отримати точну позицію курсора на вибраному вершині, використовуючи [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) майно. Крім того, замість отримання поточного вузла ви можете отримати в даний час вибраний пункт або в даний час вибраний розділ, використовуючи [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) і [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) властивості.

Будь-які операції вставки ви виконуєте за допомогою [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) буде вставлятися до [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode)й Коли поточний пункт порожній або курсор розміщується безпосередньо перед закінченням пункту, то **CurrentNode** повертає null.

## Навігаційні методи в документі

Якщо ви редагування тексту, важливо знати, як навігувати свій документ і де саме перемістити в ньому. Aspose.Words дозволяє пересуватися в документі і орієнтуватися на її різні розділи і частини – це схоже на функціональність Панель навігації в Microsoft Word щоб перейти на сторінку або заголовок у документі Word без прокрутки.

Основний метод полягає в тому, щоб мати можливість перемістити позицію курсора на певну вершину у вашому документі, ви можете досягти цього, використовуючи цей метод [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) метод.

Приклад наступного коду показує, як перемістити **DocumentBuilder** до різних вузлів в документі:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Але крім основного **MoveTo** метод, є більш специфічні.

### Навігація до початку або закінчення документа

Ви можете перейти до початку або закінчення вашого документа, використовуючи [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) і [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) методи.

Приклад коду показує, як перемістити позицію курсора до початку або закінчення документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Навігація з закладками

Ви можете відмітити місце, яке ви хочете знайти і переїхати до неї знову легко. Ви можете вставляти в свій документ, як ви хочете, а потім переміщатися через них, виявляти закладки з унікальними іменами. Ви можете переїхати на закладку за допомогою [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) метод.

Приклади коду показує, як перемістити позицію курсора до закладки:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Навігація до таблиць клітин

Ви можете перемістити в настільну клітинку за допомогою [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) метод. Цей метод дозволить вам навігувати курсор в будь-яку клітинку в певному столі. Крім того, ви можете вказати індекс для переміщення курсора в будь-яку позицію або зазначений характер в комірці в межах комірки **MoveToCell** метод.

Приклад коду показує, як перемістити позицію курсора до вказаної таблиці комірки:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Навігація до поля

Ви можете переїхати на конкретне поле у вашому документі, використовуючи [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) метод. Крім того, ви можете перемістити в певну область злиття, використовуючи [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) метод.

Приклад коду показує, як перемістити курсор конструктора документів на конкретне поле:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Навігація на заголовок або нижній колонтитул

Ви можете перейти до початку заголовка або нижній колонтитул за допомогою [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) метод

Приклад коду показує, як перемістити курсор конструктора документів на заголовок документа або нижній колонтитул:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Навігація до розділу або пункту

Ви можете переїхати на конкретний розділ або абзац за допомогою [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) або [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) методи. Крім того, ви можете вказати індекс для переміщення курсора в будь-яку позицію або зазначений характер в пункті в межах пункту **MoveToParagraph** метод.

Наприклад, наступний код показує, як перейти до певного розділу та конкретного пункту у документі:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}

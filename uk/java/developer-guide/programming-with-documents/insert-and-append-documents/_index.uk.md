---
title: Вставити та подати документи Java
second_title: Aspose.Words для Java
articleTitle: Документи
linktitle: Документи
description: "Об'єднайте документи в одну: вставте або додайте документ на новий або існуючий, використовуючи пошук і заміну, об'єднати поле, закладку або просто в документі, кінець в Javaй"
type: docs
weight: 80
url: /uk/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Іноді необхідно об'єднати кілька документів в одну. Ви можете зробити це вручну або ви можете використовувати Aspose.Words вставки або додаток функції.

Вставка дозволяє вставити вміст раніше створених документів в новий або існуючий.

У свою чергу, функція Додаток дозволяє додати документ тільки в кінці іншого документа.

Ця стаття пояснює, як вставляти або додавати документ іншим чином і описує загальні властивості, які можна застосувати при вставці або застосуванні документів.

## Вставте документ

Як зазначено вище, в Aspose.Words Документ представлений як дерево вершин, так і операція вставки одного документа в інший є копіювання вузлів з першого документа дерево в другий.

Ви можете вставити документи в різних форматах. Наприклад, ви можете вставити документ через заміну операції, об'єднання поля під час операції злиття або через закладку.

Ви також можете використовувати [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) чи [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) метод, який схожий на вставку документа в Microsoft Word, вставити весь документ на поточну позицію курсора без попереднього імпорту.

Приклад наступного коду показує, як вставити документ за допомогою **InsertDocument** метод:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

Приклад наступного коду показує, як вставити документ за допомогою **InsertDocumentInline** метод:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

Наступні підрозділи описують параметри, під час яких можна вставити один документ на інший.

### Вставте документ під час пошуку та заміни операції {#insert-a-document-during-find-and-replace-operation}

Ви можете вставляти документи під час здійснення пошуку та заміни операцій. Наприклад, документ може містити абзаци з текстом [INTRODUCTION] та [CONCLUSION]. Але в кінцевому документі необхідно замінити ці абзаци з вмістом, отриманим з іншого зовнішнього документа. Щоб досягти цього, вам потрібно буде створити обробник для замінного заходу.

Приклад коду показує, як створити обробник для заміні події, щоб використовувати його пізніше в процесі вставки:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

Приклад коду показує, як вставити вміст одного документа в інший під час пошуку і заміни операції:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Вставте документ під час Mail Merge Операція {#insert-a-document-during-mail-merge-operation}

Ви можете вставити документ в поле злиття під час mail merge робота. Наприклад, mail merge шаблон може містити поле злиття, такі як [Summary]. Але в кінцевому документі необхідно вставити вміст, отриманий з іншого зовнішнього документа в цю область злиття. Щоб досягти цього, вам потрібно буде створити обробник для об'єднання заходу.

Приклад коду показує, як створити обробник для злиття події, щоб використовувати його пізніше в процесі вставки:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

Приклад коду показує, як вставити документ у поле злиття за допомогою створеного обробника:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Вставте документ у закладку

Ви можете імпортувати текстовий файл в документ і вставити його прямо після закладки, який ви вказали в документі. Щоб зробити це, створіть закладений пункт, де ви хочете, щоб документ був вставлений.

Приклад кодування показує, як вставити вміст одного документа до закладки в іншому документі:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Зверніть увагу, що закладок не повинні закривати кілька абзаців або текстів, які ви хочете, щоб вони з'являються в кінцевому документі.

{{% /alert %}}

## Додаток до документа

У вас є випадок використання, де потрібно включати додаткові сторінки з документа до кінця існуючого документа. Для цього потрібно просто зателефонувати [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) спосіб додати документ до кінця іншого.

{{% alert color="primary" %}}

Примітка [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) метод рівня вершини в документі. Наприклад, ви можете створити абзац, встановити форматування властивостей, а потім додати його як дитину до тіла за допомогою абзацу **AppendChild** метод.

{{% /alert %}}

Приклад коду показує, як застосувати документ до кінця іншого документа:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Імпорт і вставка Ноди вручну {#import-and-insert-nodes-manually}

Aspose.Words дозволяє автоматично вставляти та додавати документи без вимог попереднього імпорту. Однак, якщо вам потрібно вставити або додати конкретну вершину вашого документа, наприклад, розділ або пункт, то спочатку потрібно імпортувати цей вузол вручну.

Коли потрібно вставити або додати одну секцію або абзац в інший, вам необхідно ввозити вершини першого вузла документа в другий за допомогою [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) метод. Після імпортування вузлів потрібно використовувати [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) спосіб вставити новий вузол після / введіть довідковий вузол. Це дозволяє налаштувати процес вставки, імпортуючи вершини з документа і вставляючи його на даній позиції.

Ви також можете використовувати [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) спосіб додати новий вказаний вузол до кінця списку дочірніх вузлів, наприклад, якщо ви хочете застосувати вміст на рівні абзацу замість рівня розділу.

Приклад наступного коду показує, як вручну імпортувати вузли та вставляти їх після певного вузла за допомогою певного вузла **InsertAfter** метод:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

Імпорт створює новий вузол, який є копіям оригінального вузла і підходить для вставки в документ призначення.

{{% /alert %}}

Контент ввозиться в розділ призначення, що означає, що настройки, такі як налаштування сторінок і заголовки або нижній колонтитул, зберігаються при імпорті. Також корисно зауважити, що ви можете визначити налаштування форматування при вставці або додатку документа, щоб вказати, як з'єднуються два документи.

## Загальні властивості для інертних та прикладних документів {#common-properties-for-insert-and-append-documents}

І [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) і [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) методи прийому [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) і [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) як параметри введення. Про нас **ImportFormatMode** дозволяє контролювати, як форматування документів об'єднано, коли ви імпортуєте вміст з одного документа в інший спосіб, вибравши різні режими форматів, такі як [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), і [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES)й Про нас **ImportFormatOptions** дозволяє вибрати різні варіанти імпорту, такі як [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), і [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior)й

Aspose.Words дозволяє налаштовувати візуалізацію отриманого документа при додаванні двох документів у вставку або застосунку [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) і [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) властивості. Про нас **PageSetup** майно містить всі атрибути розділу, такі як [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), та інші. Найпоширеніший випадок використання є встановлення **SectionStart** властивість визначити, чи з'явиться доданий контент на одній сторінці або розбитись на нову.

{{% alert color="primary" %}}

Зверніть увагу, що **Section** і **PageSetup** Властивості не контролюють, як вставляються дві документи/додаткові разом. Вони тільки дозволяють змінити зовнішній вигляд документа.

{{% /alert %}}

Приклад коду показує, як застосувати один документ на інший, зберігаючи вміст від розщеплення через дві сторінки:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}

---
title: Вставити та подати документи C#
second_title: Aspose.Words для .NET
articleTitle: Документи
linktitle: Документи
description: "Об'єднайте документи в одну: вставте або додайте документ на новий або існуючий, використовуючи пошук і заміну, об'єднати поле, закладку або просто в документі, кінець в C#й"
type: docs
weight: 80
url: /uk/net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Іноді необхідно об'єднати кілька документів в одну. Ви можете зробити це вручну або ви можете використовувати Aspose.Words вставки або додаток функції.

Робота вставки дозволяє вставляти вміст раніше створених документів в новий або існуючий.

У свою чергу, функція Додаток дозволяє додати документ тільки в кінці іншого документа.

Ця стаття пояснює, як вставляти або додавати документ іншим чином і описує загальні властивості, які ви можете застосувати під час вставки або внесення документів.

## Вставте документ {#insert-a-document}

Як зазначено вище, в Aspose.Words Документ представлений як дерево вершин, так і операція вставки одного документа в інший є копіювання вузлів з першого документа дерево в другий.

Ви можете вставити документи в різних форматах. Наприклад, ви можете вставити документ через заміну операції, об'єднання поля під час операції з злиття або через закладку.

Ви також можете використовувати [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) чи [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) метод, який схожий на вставку документа в Microsoft Word, вставити весь документ на поточну позицію курсора без попереднього імпорту.

Приклад наступного коду показує, як вставити документ за допомогою **InsertDocument** метод:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

Приклад наступного коду показує, як вставити документ за допомогою **InsertDocumentInline** метод:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

Наступні підрозділи описують параметри, під час яких можна вставити один документ на інший.

### Вставте документ під час пошуку та заміни операції {#insert-a-document-during-find-and-replace-operation}

Ви можете вставляти документи під час здійснення пошуку та заміни операцій. Наприклад, документ може містити абзаци з текстом [INTRODUCTION] та [CONCLUSION]. Але в кінцевому документі необхідно замінити ці абзаци з вмістом, отриманим з іншого зовнішнього документа. Щоб досягти цього, вам потрібно буде створити обробник для замінного заходу.

Приклад коду показує, як створити обробник для заміні події, щоб використовувати його пізніше в процесі вставки:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

Приклад коду показує, як вставити вміст одного документа в інший під час пошуку та заміни операції:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### Вставте документ під час Mail Merge Операція {#insert-a-document-during-mail-merge-operation}

Ви можете вставити документ в поле злиття під час mail merge робота. Наприклад, mail merge шаблон може містити поле злиття, такі як [Summary]. Але в кінцевому документі необхідно вставити вміст, отриманий з іншого зовнішнього документа в цю область злиття. Щоб досягти цього, вам потрібно буде створити обробник для об'єднання заходу.

Приклад коду показує, як створити обробник для злиття події, щоб використовувати його пізніше в процесі вставки:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

Приклад наступного коду показує, як вставити документ у поле злиття за допомогою створеного обробника:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### Вставте документ у закладку {#insert-a-document-at-bookmark}

Ви можете імпортувати текстовий файл в документ і вставити його прямо після закладки, який ви вказали в документі. Щоб зробити це, створіть закладений пункт, де ви хочете, щоб документ був вставлений.

Приклад кодування показує, як вставити вміст одного документа до закладки в іншому документі:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

Зауважте, що закладок не повинні закривати кілька абзаців або текстів, які ви хочете, щоб вони з'являються в кінцевому документі.

{{% /alert %}}

## Додаток до документа {#append-a-document}

У вас є випадок використання, де потрібно включати додаткові сторінки з документа до кінця існуючого документа. Для цього потрібно просто зателефонувати [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) спосіб додати документ до кінця іншого.

{{% alert color="primary" %}}

Примітка [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) метод рівня вершини в документі. Наприклад, ви можете створити абзац, встановити форматування властивостей, а потім додати його як дитину до тіла за допомогою абзацу **AppendChild** метод.

{{% /alert %}}

Приклад коду показує, як застосувати документ до кінця іншого документа:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## Імпорт та інертні вузли вручну {#import-and-insert-nodes-manually}

Aspose.Words дозволяє автоматично вставляти та додавати документи без вимог попереднього імпорту. Однак, якщо вам потрібно вставити або додати конкретну вершину вашого документа, наприклад, розділ або пункт, то спочатку потрібно імпортувати цей вузол вручну.

Коли потрібно вставити або додати одну секцію або абзац в інший, вам необхідно ввозити вершини першого вузла документа в другий за допомогою [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/) метод. Після імпортування вузлів потрібно використовувати [InsertAfter](https://reference.aspose.com/words/net/aspose.words/compositenode/insertafter/) Українська [InsertBefore](https://reference.aspose.com/words/net/aspose.words/compositenode/insertbefore/) спосіб вставити новий вузол після / введіть посилання вузол. Це дозволяє налаштувати процес вставки, імпортуючи вершини з документа і вставляючи його на даній позиції.

Ви також можете використовувати [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) спосіб додати новий вказаний вузол до кінця списку дочірніх вузлів, наприклад, якщо ви хочете застосувати вміст на рівні абзацу замість рівня розділу.

Приклад коду показує, як вручну імпортувати вузли та вставляти їх після певного вузла за допомогою певного вузла **InsertAfter** метод:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

Імпорт створює новий вузол, який є копіям оригінального вузла і підходить для вставки в документ призначення.

{{% /alert %}}

Контент імпортується в розділ призначення, за допомогою якого зберігаються параметри, такі як налаштування сторінок та заголовки або нижній колонтитули. Також корисно відзначити, що ви можете визначити налаштування форматування при вставці або додатку документа, щоб вказати, як з'єднуються два документи.

## Загальні властивості для інертних та прикладних документів {#common-properties-for-insert-and-append-documents}

І [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/) і [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) прийоми [ImportFormatMode](https://reference.aspose.com/words/net/aspose.words/importformatmode/) і [ImportFormatOptions](https://reference.aspose.com/words/net/aspose.words/importformatoptions/) як параметри введення. Про нас **ImportFormatMode** дозволяє контролювати, як форматування документів об'єднано, коли ви імпортуєте вміст з одного документа в інший спосіб, вибравши різні режими форматів, такі як [UseDestinationStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/net/aspose.words/importformatmode/), і [KeepDifferentStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/)й Про нас **ImportFormatOptions** дозволяє вибрати різні варіанти імпорту, такі як [IgnoreHeaderFooter](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/net/aspose.words/importformatoptions/keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/net/aspose.words/importformatoptions/mergepastedlists/), і [SmartStyleBehavior](https://reference.aspose.com/words/net/aspose.words/importformatoptions/smartstylebehavior/)й

Aspose.Words дозволяє налаштовувати візуалізацію отриманого документа при додаванні двох документів у вставку або застосунку [Section](https://reference.aspose.com/words/net/aspose.words/section/) і [PageSetup](https://reference.aspose.com/words/net/aspose.words/documentbuilder/pagesetup/) властивості. Про нас **PageSetup** майно містить всі атрибути розділу, такі як [SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/net/aspose.words/pagesetup/restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/net/aspose.words/pagesetup/pagestartingnumber/), [Orientation](https://reference.aspose.com/words/net/aspose.words/pagesetup/orientation/), та інші. Найпоширеніший випадок використання - встановити **SectionStart** властивість визначити, чи з’явиться доданий контент на одній сторінці або розбитись на нову.

{{% alert color="primary" %}}

Зверніть увагу, що **Section** і **PageSetup** Властивості не контролюють, як вставляються дві документи/додаткові разом. Вони тільки дозволяють змінити зовнішній вигляд документа.

{{% /alert %}}

Приклад коду показує, як застосувати один документ на інший, зберігаючи вміст від розщеплення через дві сторінки:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}

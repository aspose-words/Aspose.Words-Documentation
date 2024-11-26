---
title: Документи
second_title: Aspose.Words для Python via .NET
articleTitle: Документи
linktitle: Документи
description: "Об'єднайте документи в одну: вставте або додайте документ на новий або існуючий, використовуючи пошук і заміну, об'єднати поле, закладку або просто в документі, кінець в Pythonй"
type: docs
weight: 80
url: /uk/python-net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Іноді необхідно об'єднати кілька документів в одну. Ви можете зробити це вручну або ви можете використовувати Aspose.Words вставки або додаток функції.

Робота вставки дозволяє вставляти вміст раніше створених документів в новий або існуючий.

У свою чергу, функція Додаток дозволяє додати документ тільки в кінці іншого документа.

Ця стаття пояснює, як вставляти або додавати документ іншим чином і описує загальні властивості, які ви можете застосувати під час вставки або внесення документів.

## Вставте документ

Як зазначено вище, в Aspose.Words Документ представлений як дерево вершин, так і операція вставки одного документа в інший є копіювання вузлів з першого документа дерево в другий.

Ви можете вставити документи в різних форматах. Наприклад, ви можете вставити документ через заміну операції, об'єднання поля під час операції з злиття або через закладку.

Ви також можете використовувати [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) або [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) метод, який схожий на вставку документа в Microsoft Word, вставити весь документ на поточну позицію курсора без попереднього імпорту.

Приклад наступного коду показує, як вставити документ за допомогою **вставка_додаток** метод:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

Приклад наступного коду показує, як вставити документ за допомогою **вставка_document_inline** метод:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

Наступні підрозділи описують параметри, під час яких можна вставити один документ на інший.

### Вставте документ у закладку

Ви можете імпортувати текстовий файл в документ і вставити його прямо після закладки, який ви вказали в документі. Щоб зробити це, створіть закладений пункт, де ви хочете, щоб документ був вставлений.

Приклад кодування показує, як вставити вміст одного документа до закладки в іншому документі:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

Зауважте, що закладок не повинні закривати кілька абзаців або текстів, які ви хочете, щоб вони з'являються в кінцевому документі.

{{% /alert %}}

## Додаток до документа

У вас є випадок використання, де потрібно включати додаткові сторінки з документа до кінця існуючого документа. Для цього потрібно просто зателефонувати [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) спосіб додати документ до кінця іншого.

{{% alert color="primary" %}}

Примітка [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) метод рівня вершини в документі. Наприклад, ви можете створити абзац, встановити форматування властивостей, а потім додати його як дитину до тіла за допомогою абзацу [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) метод.

{{% /alert %}}

Приклад коду показує, як застосувати документ до кінця іншого документа:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## Імпорт та інертні вузли вручну

Aspose.Words дозволяє автоматично вставляти та додавати документи без вимог попереднього імпорту. Однак, якщо вам потрібно вставити або додати конкретну вершину вашого документа, наприклад, розділ або пункт, то спочатку потрібно імпортувати цей вузол вручну.

Коли потрібно вставити або додати одну секцію або абзац в інший, вам необхідно ввозити вершини першого вузла документа в другий за допомогою [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/) метод. Після імпортування вузлів потрібно використовувати [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) Українська [insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) спосіб вставити новий вузол після / введіть посилання вузол. Це дозволяє налаштувати процес вставки, імпортуючи вершини з документа і вставляючи його на даній позиції.

Ви також можете використовувати [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) спосіб додати новий вказаний вузол до кінця списку дочірніх вузлів, наприклад, якщо ви хочете застосувати вміст на рівні абзацу замість рівня розділу.

Приклад коду показує, як вручну імпортувати вузли та вставляти їх після певного вузла за допомогою певного вузла [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) метод:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

Імпорт створює новий вузол, який є копіям оригінального вузла і підходить для вставки в документ призначення.

{{% /alert %}}

Контент імпортується в розділ призначення, за допомогою якого зберігаються параметри, такі як налаштування сторінок та заголовки або нижній колонтитули. Також корисно відзначити, що ви можете визначити налаштування форматування при вставці або додатку документа, щоб вказати, як з'єднуються два документи.

## Загальні властивості для інертних та прикладних документів

І [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) і [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) прийоми [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) і [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) як параметри введення. Про нас [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) дозволяє контролювати, як форматування документів об'єднано, коли ви імпортуєте вміст з одного документа в інший спосіб, вибравши різні режими форматів, такі як [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting), і [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles)й Про нас [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) дозволяє вибрати різні варіанти імпорту, такі як [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/), і [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/)й

Aspose.Words дозволяє налаштовувати візуалізацію отриманого документа при додаванні двох документів у вставку або застосунку [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) і [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/)й Про нас [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) майно містить всі атрибути розділу, такі як [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) > [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/), та інші. Найпоширеніший випадок використання - встановити [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) властивість визначити, чи з’явиться доданий контент на одній сторінці або розбитись на нову.

{{% alert color="primary" %}}

Зверніть увагу, що [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) і [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) не контролює, як вставляється два документи. Вони тільки дозволяють змінити зовнішній вигляд документа.

{{% /alert %}}

Приклад коду показує, як застосувати один документ на інший, зберігаючи вміст від розщеплення через дві сторінки:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}

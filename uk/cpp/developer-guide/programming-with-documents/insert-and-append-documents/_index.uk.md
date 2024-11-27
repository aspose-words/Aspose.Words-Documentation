---
title: Вставити та додати документи в C++
second_title: Aspose.Words для C++
articleTitle: Вставка та додавання документів
linktitle: Вставка та додавання документів
description: "Об'єднуйте документи в один: вставляйте або додавайте документ в новий або існуючий, використовуючи функцію пошуку і заміни, поле об'єднання, закладку або просто в кінці документа."
type: docs
weight: 80
url: /uk/cpp/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Іноді потрібно об'єднати кілька документів в один. Ви можете зробити це вручну або скористатися функцією вставки або додавання Aspose.Words.

Операція вставки дозволяє вставляти вміст раніше створених документів у новий або існуючий.

У свою чергу, функція додавання дозволяє додавати документ лише в кінці іншого документа.

У цій статті пояснюється, як вставляти або приєднувати один документ до іншого різними способами, а також описуються загальні властивості, які можна застосовувати при вставці або додаванні документів.

## Вставка документа

Як згадувалося вище, в Aspose.Words документ представлений у вигляді дерева вузлів, і операція вставки одного документа в інший полягає в копіюванні вузлів з першого дерева документів у друге.

Ви можете вставляти документи в різні місця різними способами. Наприклад, ви можете вставити документ за допомогою операції заміни, поля об'єднання під час операції об'єднання або за допомогою закладки.

Ви також можете використовувати метод [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/), подібний до вставки документа в Microsoft Word, щоб вставити весь документ у поточне положення курсору без попереднього імпорту.

Наступний приклад коду показує, як вставити документ за допомогою методу `InsertDocument`:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-with-builder.h" >}}

У наступних підрозділах описані параметри, за допомогою яких ви можете вставляти один документ в інший.

### Вставте документ під час операції пошуку та заміни {#insert-a-document-during-find-and-replace-operation}

Ви можете вставляти документи під час виконання операцій пошуку і заміни. Наприклад, документ може містити абзаци з текстом [INTRODUCTION] та [CONCLUSION]. Але в кінцевому документі вам потрібно замінити ці абзаци вмістом, отриманим з іншого зовнішнього документа. Щоб досягти цього, вам потрібно буде створити обробник для події replace.

Наступний приклад коду показує, як створити обробник для події заміни, щоб використовувати його пізніше в процесі вставки:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace-handler.h" >}}

Наступний приклад коду показує, як вставити вміст одного документа в інший під час операції пошуку та заміни:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace.h" >}}

### Вставка документа під час операції Mail Merge {#insert-a-document-during-mail-merge-operation}

Ви можете вставити документ у поле для об'єднання під час операції Mail Merge. Наприклад, шаблон Mail Merge може містити поле для об'єднання, таке як [підсумок]. Але в кінцевому документі вам потрібно вставити вміст, отриманий з іншого зовнішнього документа, у це поле для об'єднання. Щоб досягти цього, вам потрібно буде створити обробник для події злиття.

Наступний приклад коду показує, як створити обробник для події злиття, щоб використовувати його пізніше в процесі вставки:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge-handler.h" >}}

Наступний приклад коду показує, як вставити документ у поле злиття за допомогою створеного обробника:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge.h" >}}

### Вставте документ у закладку

Ви можете імпортувати текстовий файл у документ і вставити його відразу після закладки, яку ви визначили в документі. Для цього створіть абзац із закладкою, куди потрібно вставити документ.

Наступний приклад кодування показує, як вставити вміст одного документа в закладку в іншому документі:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-bookmark.h" >}}

{{% alert color="primary" %}}

Зверніть увагу, що закладка не повинна містити кілька абзаців або тексту, які ви хочете, щоб вони з'явилися у вашому остаточному підсумковому документі.

{{% /alert %}}

## Додавання документа

Можливо, у вас є варіант використання, коли Вам потрібно додати додаткові сторінки з документа до кінця існуючого документа. Для цього вам просто потрібно викликати метод [AppendDocument](https://reference.aspose.com/words/cpp/aspose.words/document/appenddocument/), щоб додати документ до кінця іншого документа.

{{% alert color="primary" %}}

Зверніть увагу, що [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) - це метод на рівні вузла в документі. Наприклад, ви можете створити абзац, встановити властивості форматування, а потім додати його як дочірній елемент до тексту, використовуючи метод **AppendChild**.

{{% /alert %}}

Наступний приклад коду показує, як додати документ до кінця іншого документа:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "keep-source-formatting.h" >}}

## Імпортуйте та вставляйте вузли вручну {#import-and-insert-nodes-manually}

Aspose.Words дозволяє автоматично вставляти та доповнювати документи без будь-яких попередніх вимог до імпорту. Однак, якщо вам потрібно вставити або доповнити певний вузол документа, наприклад розділ або абзац, спочатку потрібно імпортувати цей вузол вручну.

Коли Вам потрібно вставити або доповнити один розділ або абзац іншим, Вам, по суті, потрібно імпортувати вузли першого дерева вузлів документа до другого, використовуючи метод [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/nodeimporter/importnode/). Після імпорту вузлів вам потрібно використовувати метод [InsertAfter](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertafter/)/[InsertBefore](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertbefore/), щоб вставити новий вузол після/перед посилальним вузлом. Це дозволяє налаштувати процес вставки, імпортуючи вузли з документа та вставляючи їх у задані позиції.

Ви також можете використовувати метод [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/), щоб додати новий вказаний вузол до кінця списку дочірніх вузлів, наприклад, якщо ви хочете додати вміст на рівні абзацу, а не на рівні розділу.

Наступний приклад коду показує, як вручну імпортувати вузли та вставляти їх після певного вузла, використовуючи метод **InsertAfter**:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-as-nodes.h" >}}

{{% alert color="primary" %}}

При імпорті створюється новий вузол, який є копією вихідного вузла і підходить для вставки в цільовий документ.

{{% /alert %}}

Вміст імпортується до цільового документа за розділами, що означає, що імпорт зберігає такі параметри, як налаштування сторінки та колонтитули. Також корисно відзначити, що ви можете задати параметри форматування при вставці або додаванні документа, щоб вказати, як два документи будуть об'єднані.

## Загальні властивості для вставки та додавання документів {#common-properties-for-insert-and-append-documents}

Як [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/), так і [AppendDocument](https://apireference.codeporting.com/native/cs2cpp/namespace/system#a6b77ccd8c49df28c153be0462cdfdf49) методи приймають [ImportFormatMode](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) та [ImportFormatOptions](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/) як вхідні параметри. Функція **ImportFormatMode** дозволяє управляти об'єднанням форматування документів при імпорті вмісту з одного документа в інший, вибираючи різні режими форматування, такі як [UseDestinationStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) і [KeepDifferentStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/). Параметр **ImportFormatOptions** дозволяє вибрати різні параметри імпорту, такі як [IgnoreHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_mergepastedlists/), і [SmartStyleBehavior](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_smartstylebehavior/).

Aspose.Words дозволяє налаштувати візуалізацію результуючого документа при об'єднанні двох документів в операції вставки або додавання за допомогою властивостей [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) і [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup). Властивість **PageSetup** містить усі атрибути розділу, такі як [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_pagestartingnumber/), [Orientation](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_orientation/), та інші. Найпоширенішим варіантом використання є встановлення властивості **SectionStart**, яка визначає, чи буде доданий вміст відображатися на тій самій сторінці чи буде розділений на нову.

{{% alert color="primary" %}}

Зверніть увагу, що властивості **Section** та **PageSetup** не керують тим, як два документи вставляються/додаються один до одного. Вони дозволяють тільки змінити зовнішній вигляд результуючого документа.

{{% /alert %}}

Наступний приклад коду показує, як додати один документ до іншого, не розділяючи вміст на дві сторінки:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "different-page-setup.h" >}}

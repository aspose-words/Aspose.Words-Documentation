---
title: Вставити поля в Java
second_title: Aspose.Words для Java
articleTitle: Вставити поля
linktitle: Вставити поля
description: "Різні способи вставити поля в документ, використовуючи Javaй"
type: docs
weight: 20
url: /uk/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

Є кілька різних способів вставити поля в документ:

- використання [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- використання [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- використання [Aspose.Words Document Object Model (DOM)](/words/uk/java/aspose-words-document-object-model/)

У цій статті ми розглянемо кожен спосіб більш детально і аналізуємо, як вставляти певні поля за допомогою цих параметрів.

## Введення полів у документ з використанням DocumentBuilder

У Aspose.Words Про нас [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) метод використовується для вставки нових полів в документ. Перший параметр приймає повне поле коду поля, щоб бути вставленим. Другий параметр є обов'язковим і дозволяє польовим результатам поля, щоб встановити вручну. Якщо це не подається, то поле автоматично оновлюється. Ви можете пройти null або порожній до цього параметра, щоб вставити поле з порожнім значенням поля. Якщо ви не впевнені, що конкретний код поля синтаксису, створюємо поле в Microsoft Word спочатку і переключіть, щоб побачити свій код поля.

{{% alert color="primary" %}}

Якщо ваш код поля має параметр, який містить простір, то він повинен бути закритий в межах мовних знаків. В іншому випадку поле в обох Microsoft Word і Aspose.Words не може працювати, як очікується, як параметр обробляється як при truncated.

{{% /alert %}}

Приклад коду показує, як вставити поле злиття в документ, використовуючи **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

Така ж техніка використовується для вставок полів, що приводяться в інші поля.

Наприклад, наступний код показує, як вставити поля, що містяться в іншому полі, використовуючи **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Вказати місцевість на рівні поля

English, Українська, Français... З Aspose.Words, Ви можете вказати Locale на рівні поля, використовуючи [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) майно, яке отримує або встановлює місцевий ідентифікатор поля.

Приклад коду показує, як використовувати цей варіант:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Вставити нетипове поле

Якщо ви хочете вставити нетипові / порожні поля ({}) так само як Microsoft Word дозволяє, ви можете використовувати [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) метод з [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) параметр. Щоб вставити поле в документ Word, ви можете натиснути клавішу "Ctrl + F9".

Приклад коду показує, як вставити порожні поля в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Вставити `COMPARE` Сфера

Про нас `COMPARE` поле порівнює два значення і повертає числовий значення 1, якщо порівняння true або 0 якщо порівняння falseй

Приклад наступного коду показує, як додати `COMPARE` поля з використанням DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Вставити `IF` Сфера

Про нас `IF` поле можна використовувати для оцінки аргументів умовно.

Приклад наступного коду показує, як додати `IF` поля з використанням DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Введення полів в документ з використанням FieldBuilder

Альтернативний спосіб вставити поля в Aspose.Words є [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) клас. Він надає швидкий інтерфейс, щоб вказати значення поля та значення аргументів, як текст, вершини або навіть вкладені поля.

Приклад наступного коду показує, як вставити поле в документ, використовуючи **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Вставки поля з використанням DOM

Ви також можете вставляти різні види полів [Aspose.Words Document Object Model (DOM)](/words/uk/java/aspose-words-document-object-model/)й В цьому розділі ми розглянемо кілька прикладів.

### Вставки Поле в документ з використанням DOM

`MERGEFIELD` поле в документі Word може бути представлений [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) клас. Ви можете використовувати **FieldMergeField** Клас виконання наступних операцій:

- вказати ім'я поля злиття
- вказати форматування поля злиття
- вкажіть текст, який знаходиться між польовим сепаратором і польовим закінченням поля злиття
- вказати текст, який буде вставлений після об'єднання поля, якщо поле не порожній
- вкажіть текст, який буде вставлятися до поля злиття, якщо поле не порожній

{{% alert color="primary" %}}

Докладніше див. інформацію [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) клас APIй

{{% /alert %}}

Приклад коду показує, як додати `MERGE` використання поля DOM до пункту у документі:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Вставки Mail Merge `ADDRESSBLOCK` поле в Документ за допомогою DOM

Про нас `ADDRESSBLOCK` поле використовується для вставки Mail Merge адресний блок у документі Word. `ADDRESSBLOCK` поле в документі Word може бути представлений [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) клас. Ви можете використовувати **FieldAddressBlock** Клас виконання наступних операцій:

- вкажіть, чи є ім'я країни/регіон у полі
- вкажіть, чи відформатувати адресу відповідно до країни/регіону одержувача, визначеної POST*CODE (Універсальний поштовий союз 2006)
- вкажіть назву виключеної країни/регіону
- вказати назву та формат адреси
- вказати ідентифікатор мови, який використовується для форматування адреси

{{% alert color="primary" %}}

Докладніше див. інформацію [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) клас APIй

{{% /alert %}}

Приклад коду показує, як додати Mail Merge `ADDRESSBLOCK` Використання поля DOM до пункту у документі:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Вставки `ADVANCE` JavaScript licenses API Веб-сайт Go1.13.8

Про нас `ADVANCE` поле використовується для відключення наступного тексту в рядок зліва, праворуч, вгору або вниз. `ADVANCE` поле в документі Word може бути представлений [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) клас. Ви можете використовувати **FieldAdvance** Клас виконання наступних операцій:

- вкажіть кількість точок, за допомогою яких текст, який слід перенести поле вертикально з верхнього краю сторінки
- вкажіть кількість точок, за допомогою яких текст, який слід перенести поле горизонтально з лівого краю стовпчика, рамки або текстової коробки
- вказати кількість точок, за допомогою яких текст, який слід перенести зліва, праворуч, вгору або вниз

{{% alert color="primary" %}}

Докладніше див. інформацію [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) клас APIй

{{% /alert %}}

Приклад коду показує, як додати `ADVANCE` Використання поля DOM до пункту у документі:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Вставки `ASK` JavaScript licenses API Веб-сайт Go1.13.8

Про нас `ASK` поле використовується для підказки користувача для тексту, щоб призначити закладку у документі Word. `ASK` поле в документі Word може бути представлений [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) клас. Ви можете використовувати **FieldAsk** Клас виконання наступних операцій:

- вказати ім'я закладки
- вкажіть відповідь користувача за замовчуванням (ідеальна вартість, що міститься в вікні підказки)
- вкажіть, чи слід отримувати відповідь користувача одноразово Mail Merge робота
- вказати підказковий текст (голова вікна підказки)

{{% alert color="primary" %}}

Докладніше див. інформацію [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) клас APIй

{{% /alert %}}

Приклад коду показує, як додати `ASK` Використання поля DOM до пункту у документі:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Вставки `AUTHOR` JavaScript licenses API Веб-сайт Go1.13.8

Про нас `AUTHOR` поле використовується для позначення імені автора документа з документа `Document` властивості. `AUTHOR` поле в документі Word може бути представлений [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) клас. Ви можете використовувати **FieldAuthor** Клас виконання наступних операцій:

- вказати ім'я автора документа

{{% alert color="primary" %}}

Докладніше див. інформацію [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) клас APIй

{{% /alert %}}

Приклад коду показує, як додати `AUTHOR` Використання поля DOM до пункту у документі:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Вставки `INCLUDETEXT` JavaScript licenses API Веб-сайт Go1.13.8

Про нас `INCLUDETEXT` поле вставляє текст і графіку, що міститься в документі, зазначеному в полі коду. Ви можете вставляти весь документ або частину документа, зазначеного у закладці. Це поле в документі Word представлений INCLUDETEXT. Ви можете використовувати [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) Клас виконання наступних операцій:

- вказати ім'я закладки включені документи
- вказати розташування документа

{{% alert color="primary" %}}

Докладніше див. інформацію [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) клас APIй

{{% /alert %}}

Приклад коду показує, як додати `INCLUDETEXT` використання поля DOM до пункту у документі:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Вставки `TOA` JavaScript licenses API Веб-сайт Go1.13.8

Про нас `TOA` (*Включення повноважень*) польових споруд та вставок таблиці органів влади. Про нас `TOA` поле збирає записи, позначені `TA` (*Включення полів авторських прав*) Microsoft Office Word вставляє `TOA` поле, коли ви натискаєте *Вставити таблицю авторів* в **Таблиця повноважень** група на **References** Увійти Коли ви переглядаєте `TOA` поле в документі, синтаксис виглядає так:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Докладніше див. інформацію [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) клас APIй

{{% /alert %}}

Приклад коду показує, як додати `TOA` використання поля DOM до пункту у документі.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}

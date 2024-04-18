---
title: Вставки поля в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Вставити поля
linktitle: Вставити поля
description: "Вставити поля в документ у Python за різними способами: `DocumentBuilder` або DOM (Українська)Document Object Model)."
type: docs
weight: 20
url: /uk/python-net/inserting-fields/
---

Є кілька різних способів вставити поля в документ:

- використання [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)
- використання [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/)
- використання [Aspose.Words Document Object Model (DOM)](/words/uk/python-net/aspose-words-document-object-model/)

У цій статті ми розглянемо кожен спосіб більш детально і аналізуємо, як вставляти певні поля за допомогою цих параметрів.

## Введення полів у документ з використанням DocumentBuilder

У Aspose.Words Про нас [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) метод використовується для вставки нових полів в документ. Перший параметр приймає повне поле коду поля, щоб бути вставленим. Другий параметр є обов'язковим і дозволяє польовий результат поля, щоб встановити вручну. Якщо це не подається, то поле автоматично оновлюється. Ви можете пройти null або порожній до цього параметра, щоб вставити поле з порожнім значенням поля. Якщо ви не впевнені, що конкретний код поля синтаксису, створюємо поле в Microsoft Word спочатку і переключіть, щоб побачити свій код поля.

{{% alert color="primary" %}}

Якщо ваш код поля має параметр, який містить простір, то він повинен бути закритий в межах мовних знаків. В іншому випадку поле в обох Microsoft Word і Aspose.Words не може працювати, як очікується, як параметр лікується як при truncated.

{{% /alert %}}

Приклад наступного коду показує, як вставити поле злиття в документ, використовуючи **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertField.py" >}}

Приклад коду показує, як вставляти об'єднане поле з німецькою локалізацією в документ, використовуючи **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-DocumentBuilderInsertField.py" >}}

Така ж техніка використовується для вставок полів, що приводяться в інші поля.

Наприклад, наступний код показує, як вставити поля, що містяться в іншому полі за допомогою **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertNestedFields.py" >}}

### Вказати місцевість на рівні поля

English, Українська, Français... З Aspose.Words, Ви можете вказати Локація на рівні поля. Про нас [locale_id](https://reference.aspose.com/words/python-net/aspose.words.fields/field/locale_id/) майно отримує або встановлює місцевий ідентифікатор поля.

Приклад наступного коду показує, як використовувати цей варіант:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-SpecifylocaleAtFieldlevel.py" >}}

### Вставити нетипове поле

Якщо ви хочете вставити нетипові / порожні поля ({}) так само як Microsoft Word дозволяє, ви можете використовувати [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) метод з [FieldType.FIELD_NONE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_none) параметр. Щоб вставити поле в документ Word, ви можете натиснути клавішу "Ctrl + F9".

Приклад коду показує, як вставити порожні поля в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldNone.py" >}}

## Введення полів в документ з використанням FieldBuilder

Альтернативний спосіб вставити поля в Aspose.Words є [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/) клас. Він надає швидкий інтерфейс, щоб вказати значення поля та значення аргументів, як текст, вершини або навіть вкладені поля.

Приклад наступного коду показує, як вставити поле в документ, використовуючи **FieldBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldUsingFieldBuilder.py" >}}

## Вставки поля з використанням DOM

Ви також можете вставляти різні види полів [Aspose.Words Document Object Model (DOM)](/words/uk/python-net/aspose-words-document-object-model/)й В цьому розділі ми розглянемо кілька прикладів.

### Вставки Поле в документ з використанням DOM

Про нас `MERGEFIELD` поле в документі Word може бути представлений [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) клас. Ви можете використовувати [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) Клас виконання наступних операцій:

- вказати ім'я поля злиття
- вказати форматування поля злиття
- вкажіть текст, який знаходиться між польовим сепаратором і польовим закінченням об'єднання поля
- вказати текст, який буде вставлений після об'єднання поля, якщо поле не порожній
- вкажіть текст, який буде вставлятися до поля злиття, якщо поле не порожній

Приклад наступного коду показує, як додати `Merge` Використання поля DOM до пункту у документі:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMergeFieldUsingDOM.py" >}}

### Вставки Mail Merge `ADDRESSBLOCK` поле в Документ, використовуючи DOM

Про нас `ADDRESSBLOCK` поле використовується для вставки mail merge адресний блок у документі Word. `ADDRESSBLOCK` поле в документі Word може бути представлений [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) клас. Ви можете використовувати [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) Клас виконання наступних операцій:

- вкажіть, чи вкажіть ім'я країни/регіон в полі
- вкажіть, чи відформатувати адресу відповідно до країни/регіону одержувача, визначеної POST*CODE (Універсальний поштовий союз 2006)
- вкажіть назву виключеної країни/регіону
- вказати назву та формат адреси
- вказати ідентифікатор мови, який використовується для форматування адреси

Приклад наступного коду показує, як додати Mail Merge `ADDRESSBLOCK` Використання поля DOM до пункту у документі:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMailMergeAddressBlockFieldUsingDOM.py" >}}

### Вставки `ADVANCE` JavaScript licenses API Веб-сайт Go1.13.8

Про нас `ADVANCE` поле використовується для відключення наступного тексту в рядок зліва, праворуч, вгору або вниз. Про нас `ADVANCE` поле в документі Word може бути представлений [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) клас. Ви можете використовувати [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) Клас виконання наступних операцій:

- вказати кількість точок, за допомогою яких текст, який слід перенести поле вертикально з верхнього краю сторінки
- вкажіть кількість точок, за допомогою яких текст, який слід перенести поле горизонтально з лівого краю стовпчика, рамки або текстової коробки
- вказати кількість точок, за допомогою яких текст, який слід перенести зліва, праворуч, вгору або вниз

Приклад наступного коду показує, як додати `ADVANCE` Використання поля DOM до пункту у документі.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAdvanceFieldWithOutDocumentBuilder.py" >}}

### Вставки `ASK` JavaScript licenses API Веб-сайт Go1.13.8

Про нас `ASK` поле використовується для підказки користувача для тексту, щоб призначити закладку у документі Word. `ASK` поле в документі Word може бути представлений [FieldAsk](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldask/) клас. Ви можете використовувати **FieldAsk** Клас виконання наступних операцій:

- вказати ім'я закладки
- вказати відповідь користувача за замовчуванням (ініційне значення, що міститься в вікні запиту)
- вкажіть, чи мається відповідь користувача mail merge робота
- вказати підказковий текст (голова вікна підказки)

Приклад наступного коду показує, як додати `ASK` Використання поля DOM до пункту у документі:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertASKFieldWithOutDocumentBuilder.py" >}}

### Вставки `AUTHOR` JavaScript licenses API Веб-сайт Go1.13.8

Про нас `AUTHOR` поле використовується для позначення імені автора документа з документа `Document` властивості. Про нас `AUTHOR` поле в документі Word може бути представлений [FieldAuthor](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/) клас. Ви можете використовувати **FieldAuthor** Клас виконання наступних операцій:

- вказати ім'я автора документа

Приклад наступного коду показує, як додати `AUTHOR` Використання поля DOM до пункту у документі:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAuthorField.py" >}}

### Вставки `INCLUDETEXT` JavaScript licenses API Веб-сайт Go1.13.8

Про нас `INCLUDETEXT` поле вставляє текст і графіку, що міститься в документі, зазначеному в полі коду. Ви можете вставляти весь документ або частину документа, зазначеного у закладці. Це поле в документі Word представлена INCLUDETEXT. Ви можете використовувати [FieldIncludeText](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldincludetext/) Клас виконання наступних операцій:

- вказати ім'я закладки вказаного документа
- вказати розташування документа

Приклад наступного коду показує, як додати `INCLUDETEXT` використання поля DOM до пункту у документі:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldIncludeTextWithoutDocumentBuilder.py" >}}

### Вставки `TOA` JavaScript licenses API Веб-сайт Go1.13.8

Про нас `TOA` (*Включення повноважень*) польових споруд та вставок таблиці органів влади. Про нас `TOA` поле збирає записи, позначені `TA` (*Увімкнення полів авторських прав*) Microsoft Office Word вставляє `TOA` поле, коли ви натискаєте *Вставити таблицю авторів* в **Зміст** група на **References** Увійти Коли ви переглядаєте `TOA` поле у вашому документі, синтаксис виглядає так:

{ `TOA` [Switches ] }

Ви можете використовувати [FieldToa](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtoa/) клас для виконання операцій з `TOA` поле.

Приклад наступного коду показує, як додати `TOA` використання поля DOM до пункту у документі:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertTOAFieldWithoutDocumentBuilder.py" >}}

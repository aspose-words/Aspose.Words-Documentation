---
title: Вставити поля в C++
second_title: Aspose.Words для C++
articleTitle: Вставка полів
linktitle: Вставка полів
description: "Різні способи вставки полів у ваш документ за допомогою C++."
type: docs
weight: 20
url: /uk/cpp/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

Існує кілька різних способів вставки полів у документ:

- використовуючи [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)
- використовуючи [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)
- за допомогою [Aspose.Words Об'єктна модель документа (DOM)](/words/cpp/aspose-words-document-object-model/)

У цій статті ми розглянемо кожен із способів більш детально і проаналізуємо, як вставляти певні поля, використовуючи ці опції.

## Вставка полів у документ за допомогою DocumentBuilder

Aspose.Words метод [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) використовується для вставки нових полів у документ. Перший параметр приймає повний код поля, яке необхідно вставити. Другий параметр є необов'язковим і дозволяє вручну задати результат заповнення поля. Якщо це значення не вказано, поле оновлюється автоматично. Ви можете встановити значення null або empty у цьому параметрі, щоб вставити поле з порожнім значенням. Якщо ви не впевнені в синтаксисі конкретного коду поля, спочатку створіть поле в Microsoft Word і перейдіть на перегляд його коду.

{{% alert color="primary" %}}

Якщо в коді вашого поля є параметр, що містить пробіл, то він повинен бути укладений в мовні знаки. В іншому випадку поле в обох варіантах Microsoft Word та Aspose.Words може працювати не так, як очікувалося, оскільки обидва параметри обробляються як усічені

{{% /alert %}}

Наступний приклад коду показує, як вставити поле злиття в документ за допомогою **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

Той самий метод використовується для вставки полів, вкладених в інші поля.

Наступний приклад коду показує, як вставити поля, вкладені в інше поле, використовуючи **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### Вкажіть мовний стандарт на рівні поля

Ідентифікатор мови-це стандартне міжнародне Цифрове скорочення для позначення мови в країні чи географічному регіоні. За допомогою Aspose.Words ви можете вказати локаль на рівні поля, використовуючи властивість [LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/), яка повертає або встановлює локаль поля ID.

Наступний приклад коду показує, як використовувати цю опцію:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### Вставити Нетипізоване / порожнє поле

Якщо ви хочете вставити нетипізовані/порожні поля ({}) так, як дозволяє Microsoft Word, ви можете використовувати метод [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield) з параметром [FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/). Щоб вставити поле в документ Word, ви можете натиснути комбінацію клавіш "Ctrl + F9".

Наступний приклад коду показує, як вставити порожнє поле в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## Вставка полів у документ за допомогою FieldBuilder

Альтернативним способом вставки полів у Aspose.Words є клас [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/). Він надає зручний інтерфейс для вказівки перемикачів полів та значень аргументів у вигляді тексту, вузлів або навіть вкладених полів.

Наступний приклад коду показує, як вставити поле в документ за допомогою **FieldBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## Вставка полів за допомогою DOM

Ви також можете вставляти поля різних типів, використовуючи [Aspose.Words Об'єктну модель документа (DOM)](/words/cpp/aspose-words-document-object-model/). У цьому розділі ми розглянемо кілька прикладів.

### Вставлення поля злиття в документ за допомогою DOM

Поле `MERGEFIELD` у документі Word може бути представлене класом [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/). Клас **FieldMergeField** можна використовувати для виконання наступних операцій:

- вкажіть назву поля для об'єднання
- вкажіть форматування поля для об'єднання
- вкажіть текст, який знаходиться між роздільником полів і кінцем поля в полі об'єднання
- вкажіть текст, який буде вставлений після поля об'єднання, якщо це поле не є порожнім
- вкажіть текст, який буде вставлений перед полем об'єднання, якщо це поле не є порожнім

{{% alert color="primary" %}}

Для отримання більш детальної інформації дивіться клас [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) API.

{{% /alert %}}

Наступний приклад коду показує, як додати поле `MERGE` за допомогою DOM до абзацу документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити приклад файлу цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Вставлення поля адресного блоку Mail Merge у документ за допомогою DOM

Поле `ADDRESSBLOCK` використовується для вставки адресного блоку Mail Merge у документ Word. Поле `ADDRESSBLOCK` у документі Word може бути представлене класом [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/). Клас **FieldAddressBlock** можна використовувати для виконання наступних операцій:

- вкажіть, чи слід вказувати назву країни / регіону в цьому полі
- вкажіть, чи слід форматувати адресу відповідно до країни / регіону одержувача, як зазначено в POST * CODE (Всесвітній Поштовий союз, 2006)
- вкажіть назву виключеної країни / регіону
- вкажіть формат імені та адреси
- вкажіть мову ID, яка використовується для форматування адреси

{{% alert color="primary" %}}

Для отримання більш детальної інформації дивіться клас [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/) API.

{{% /alert %}}

Наступний приклад коду показує, як додати поле Mail Merge `ADDRESSBLOCK` за допомогою DOM до абзацу документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити приклад файлу цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Вставлення поля "Попередній перегляд" у документ без використання DocumentBuilder

Поле `ADVANCE` використовується для переміщення наступного тексту в рядку вліво, вправо, вгору або вниз. Поле `ADVANCE` у документі Word може бути представлене класом [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/). Ви можете використовувати клас FieldAdvance для виконання наступних операцій:

- вкажіть кількість точок, на які текст, наступний за полем, повинен бути переміщений по вертикалі від верхнього краю сторінки
- вкажіть кількість точок, на яке текст, наступний за полем, повинен бути переміщений по горизонталі від лівого краю стовпця, рамки або текстового поля
- вкажіть кількість точок, на які текст, наступний за полем, повинен бути переміщений вліво, вправо, вгору або вниз

{{% alert color="primary" %}}

Для отримання більш детальної інформації дивіться клас [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/) API.

{{% /alert %}}

Наступний приклад коду показує, як додати поле `ADVANCE` за допомогою DOM до абзацу документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити приклад файлу цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Вставлення поля `ASK` у документ без використання DocumentBuilder

Поле `ASK` використовується для запиту тексту, який користувач повинен призначити закладці в документі Word. Поле `ASK` у документі Word може бути представлене класом [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/). Клас **FieldAsk** можна використовувати для виконання наступних операцій:

- вкажіть назву закладки
- вкажіть відповідь Користувача за замовчуванням (початкове значення, що міститься у вікні запиту)
- вкажіть, чи повинна відповідь Користувача бути отримана один раз за операцію Mail Merge
- вкажіть текст запиту (заголовок вікна запиту)

{{% alert color="primary" %}}

Для отримання більш детальної інформації дивіться клас [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask) API.

{{% /alert %}}

Наступний приклад коду показує, як додати поле `ASK` за допомогою DOM до абзацу документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити приклад файлу цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Вставлення поля `AUTHOR` у документ без використання DocumentBuilder

Поле `AUTHOR` використовується для вказівки імені автора документа у властивостях `Document`. Поле `AUTHOR` у документі Word може бути представлене класом [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/). Клас **FieldAuthor** можна використовувати для виконання наступних операцій:

- вкажіть ім'я автора документа

{{% alert color="primary" %}}

Для отримання більш детальної інформації дивіться клас [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/) API.

{{% /alert %}}

Наступний приклад коду показує, як додати поле `AUTHOR` за допомогою DOM до абзацу документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити приклад файлу цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Вставлення поля `INCLUDETEXT` у документ без використання DocumentBuilder

В поле `INCLUDETEXT` вставляється текст і графічні зображення, що містяться в документі, назва якого вказана в коді поля. Ви можете вставити весь документ або частину документа, на який посилається закладка. Це поле в документі Word представлено символом INCLUDETEXT. Ви можете використовувати клас [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) для виконання наступних операцій:

- вкажіть назву закладки для включеного документа
- вкажіть місце розташування документа

{{% alert color="primary" %}}

Для отримання більш детальної інформації дивіться клас [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) API.

{{% /alert %}}

Наступний приклад коду показує, як додати поле `INCLUDETEXT` за допомогою DOM до абзацу документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### Вставлення поля `TOA` у документ без використання DocumentBuilder

У полі `TOA` (*Table of Authorities*) створюється та вставляється таблиця повноважень. У полі `TOA` збираються записи, позначені полями `TA` (*Table of Authorities Entry*). Microsoft Office Word вставляє поле `TOA`, Коли ви натискаєте *Insert Table of Authorities* у групі **Table of Authorities** на вкладці **References**. Переглядаючи поле `TOA` у вашому документі, синтаксис буде виглядати так:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Для отримання більш детальної інформації дивіться клас [FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/) API.

{{% /alert %}}

Наступний приклад коду показує, як додати поле `TOA` за допомогою DOM до абзацу документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/

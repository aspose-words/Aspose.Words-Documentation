---
title: Вставить поля в Java
second_title: Aspose.Words для Java
articleTitle: Вставить поля
linktitle: Вставить поля
description: "Различные способы вставки полей в документ с помощью Java."
type: docs
weight: 20
url: /ru/java/insert-fields/
---

Существует несколько способов вставить поля в документ:

- использовать [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- использовать [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- использовать [Aspose.Words Document Object Model (DOM)](/words/ru/java/aspose-words-document-object-model/)

В этой статье мы рассмотрим каждый способ более подробно и проанализируем, как вставить определенные поля, используя эти параметры.

## Вставка полей в документ с помощью DocumentBuilder

В Aspose.Words тот [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) метод используется для вставки новых полей в документ. Первый параметр принимает полный код поля, подлежащего вставке. Второй параметр является необязательным и позволяет задавать полевой результат поля вручную. Если это не предусмотрено, то поле обновляется автоматически. Вы можете передать нуль или пустой к этому параметру, чтобы вставить поле с пустым значением поля. Если вы не уверены в конкретном синтаксисе кода поля, создайте поле в Microsoft Word Сначала переключитесь, чтобы увидеть код поля.

{{% alert color="primary" %}}

Если ваш полевой код имеет параметр, содержащий пространство, то он должен быть заключен в знаки речи. В противном случае поле в обоих Microsoft Word и Aspose.Words может не работать так, как ожидалось, поскольку параметр рассматривается обоими как усеченный.

{{% /alert %}}

Следующий пример кода показывает, как вставить поле слияния в документ, используя **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

Этот же метод используется для вставки полей, вложенных в другие поля.

Следующий пример кода показывает, как вставить поля, вложенные в другое поле, используя **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Укажите местоположение на уровне поля

Идентификатор языка является стандартной международной цифровой аббревиатурой языка в стране или географическом регионе. с Aspose.Words, Вы можете указать Locale на уровне поля, используя [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) собственность, которая получает или устанавливает локальный идентификатор поля.

Следующий пример кода показывает, как использовать эту опцию:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Вставить нетипированное/пустое поле

Если вы хотите вставить нетипированные/пустые поля{}) просто как Microsoft Word позволяет, вы можете использовать [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) метод с помощью [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) параметр. Чтобы вставить поле в документ Word, можно нажать комбинацию клавиш "Ctrl + F9".

Следующий пример кода показывает, как вставить пустое поле в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Включить `COMPARE` поле

The `COMPARE` поле сравнивает два значения и возвращает числовое значение 1, если сравнение true 0, если сравнение false.

Следующий пример кода показывает, как добавить `COMPARE` Поля с использованием DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Включить `IF` поле

The `IF` Поле может использоваться для условной оценки аргументов.

Следующий пример кода показывает, как добавить `IF` Поля с использованием DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Вставка полей в документ с помощью FieldBuilder

Альтернативный способ вставить поля в Aspose.Words Это [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) класс. Он обеспечивает свободный интерфейс для указания переключателей полей и значений аргументов в виде текста, узлов или даже вложенных полей.

Следующий пример кода показывает, как вставить поле в документ, используя **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Вставка полей с использованием DOM

Вы также можете вставлять различные типы полей, используя [Aspose.Words Document Object Model (DOM)](/words/ru/java/aspose-words-document-object-model/). В этом разделе мы рассмотрим несколько примеров.

### Включить слияние Поле в документе с использованием DOM

`MERGEFIELD` поле в документе Word может быть представлено [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) класс. Вы можете использовать **FieldMergeField** класс для выполнения следующих операций:

- указать название поля слияния
- указать форматирование поля слияния
- указать текст, который находится между разделителем поля и полевым концом поля слияния
- указать текст, который должен быть вставлен после поля слияния, если поле не является пустым
- указать текст, который следует вставить перед полем слияния, если поле не является пустым

{{% alert color="primary" %}}

Для более подробной информации смотрите [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) класс API.

{{% /alert %}}

Следующий пример кода показывает, как добавить `MERGE` поле используя DOM к пункту в документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Вставка Mail Merge `ADDRESSBLOCK` поле в документ, использующий DOM

The `ADDRESSBLOCK` поле используется для вставки mail merge Блок адреса в документе Word. `ADDRESSBLOCK` поле в документе Word может быть представлено [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) класс. Вы можете использовать **FieldAddressBlock** класс для выполнения следующих операций:

- указать, следует ли включать название страны/региона в поле;
- указать, форматировать ли адрес в соответствии со страной/регионом получателя, как определено POST*CODE (Universal Postal Union 2006)
- указать название исключенной страны/региона
- указать название и формат адреса
- указать идентификатор языка, используемый для форматирования адреса

{{% alert color="primary" %}}

Для более подробной информации смотрите [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) класс API.

{{% /alert %}}

Следующий пример кода показывает, как добавить Mail Merge `ADDRESSBLOCK` Полевое использование DOM к пункту в документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Вставка `ADVANCE` Отправка в документ без использования DocumentBuilder

The `ADVANCE` Поле используется для смещения последующего текста в строке слева, справа, вверх или вниз. `ADVANCE` поле в документе Word может быть представлено [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) класс. Вы можете использовать **FieldAdvance** класс для выполнения следующих операций:

- указать количество точек, по которым текст, следующий за полем, должен быть перемещен вертикально с верхнего края страницы;
- указать количество точек, по которым текст, следующий за полем, должен перемещаться горизонтально с левого края колонки, рамки или текстового ящика;
- указать количество точек, по которым текст, следующий за полем, должен быть перемещен влево, вправо, вверх или вниз;

{{% alert color="primary" %}}

Для более подробной информации смотрите [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) класс API.

{{% /alert %}}

Следующий пример кода показывает, как добавить `ADVANCE` Полевое использование DOM к пункту в документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Вставка `ASK` Отправка в документ без использования DocumentBuilder

The `ASK` Поле используется для того, чтобы побудить пользователя присвоить текст закладке в документе Word. `ASK` поле в документе Word может быть представлено [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) класс. Вы можете использовать **FieldAsk** класс для выполнения следующих операций:

- указать название закладки
- указать ответ пользователя по умолчанию (первоначальное значение, содержащееся в окне подсказки)
- указать, должен ли ответ пользователя быть получен один раз за mail merge операция
- указать текст запроса (заголовок окна запроса)

{{% alert color="primary" %}}

Для более подробной информации смотрите [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) класс API.

{{% /alert %}}

Следующий пример кода показывает, как добавить `ASK` Полевое использование DOM к пункту в документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Вставка `AUTHOR` Отправка в документ без использования DocumentBuilder

The `AUTHOR` поле используется для указания имени автора документа из `Document` свойств. `AUTHOR` поле в документе Word может быть представлено [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) класс. Вы можете использовать **FieldAuthor** класс для выполнения следующих операций:

- указать имя автора документа

{{% alert color="primary" %}}

Для более подробной информации смотрите [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) класс API.

{{% /alert %}}

Следующий пример кода показывает, как добавить `AUTHOR` Полевое использование DOM к пункту в документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Вставка `INCLUDETEXT` Отправка в документ без использования DocumentBuilder

The `INCLUDETEXT` поле вставляет текст и графику, содержащиеся в документе, названном в коде поля. Вы можете вставить весь документ или часть документа, на которую ссылается закладка. Это поле в документе Word представлено INCLUDETEXT. Вы можете использовать [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) класс для выполнения следующих операций:

- указать название закладки включенного документа
- указать местонахождение документа

{{% alert color="primary" %}}

Для более подробной информации смотрите [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) класс API.

{{% /alert %}}

Следующий пример кода показывает, как добавить `INCLUDETEXT` поле используя DOM к пункту в документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Вставка `TOA` Отправка в документ без использования DocumentBuilder

The `TOA` (* Таблица полномочий*) поле строит и вставляет таблицу полномочий. The `TOA` поле собирает записи, отмеченные `TA` (*Table of Authorities Entry*) поля. Microsoft Office Word вставляет `TOA` поле, когда вы нажимаете *Вставить таблицу полномочий* в **Таблица полномочий** группа на **References** вкладка. Когда вы смотрите на `TOA` Поле в вашем документе, синтаксис выглядит так:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Для более подробной информации смотрите [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) класс API.

{{% /alert %}}

Следующий пример кода показывает, как добавить `TOA` поле используя DOM к абзацу в документе.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}

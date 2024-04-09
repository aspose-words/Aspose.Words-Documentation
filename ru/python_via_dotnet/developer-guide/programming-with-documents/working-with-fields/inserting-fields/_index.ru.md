---
title: Вставка полей в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Вставить поля
linktitle: Вставить поля
description: "Вставить поля в документ в Python различными способами: использование `DocumentBuilder` или DOM ()Document Object Model)."
type: docs
weight: 20
url: /ru/python-net/inserting-fields/
---

Существует несколько способов вставить поля в документ:

- использовать [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)
- использовать [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/)
- использовать [Aspose.Words Document Object Model (DOM)](/words/ru/python-net/aspose-words-document-object-model/)

В этой статье мы рассмотрим каждый способ более подробно и проанализируем, как вставить определенные поля, используя эти параметры.

## Вставка полей в документ с помощью DocumentBuilder

В Aspose.Words тот [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) Метод используется для вставки новых полей в документ. Первый параметр принимает полный код поля, подлежащего вставке. Второй параметр является необязательным и позволяет задавать результат поля вручную. Если это не предусмотрено, то поле обновляется автоматически. Вы можете передать нуль или пустой к этому параметру, чтобы вставить поле с пустым значением поля. Если вы не уверены в конкретном синтаксисе кода поля, создайте поле в Microsoft Word Сначала переключитесь, чтобы увидеть код поля.

{{% alert color="primary" %}}

Если ваш полевой код имеет параметр, содержащий пространство, то он должен быть заключен в знаки речи. В противном случае поле в обоих Microsoft Word и Aspose.Words может не работать так, как ожидалось, поскольку параметр рассматривается обоими как усеченный.

{{% /alert %}}

Следующий пример кода показывает, как вставить поле слияния в документ, используя **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertField.py" >}}

Следующий пример кода показывает, как вставить поле слияния с немецким местоположением в документ, используя **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-DocumentBuilderInsertField.py" >}}

Этот же метод используется для вставки полей, вложенных в другие поля.

Следующий пример кода показывает, как вставить поля, вложенные в другое поле, используя **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertNestedFields.py" >}}

### Укажите местоположение на уровне поля

Идентификатор языка является стандартной международной цифровой аббревиатурой языка в стране или географическом регионе. с Aspose.Words, Вы можете указать Локально на уровне поля. The [locale_id](https://reference.aspose.com/words/python-net/aspose.words.fields/field/locale_id/) Имущество получает или устанавливает локальный идентификатор поля.

Следующий пример кода показывает, как использовать эту опцию:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-SpecifylocaleAtFieldlevel.py" >}}

### Вставить нетипированное/пустое поле

Если вы хотите вставить незапечатанные/пустые поля{}) просто как Microsoft Word позволяет, вы можете использовать [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) метод с помощью [FieldType.FIELD_NONE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_none) параметр. Чтобы вставить поле в документ Word, можно нажать комбинацию клавиш "Ctrl + F9".

Следующий пример кода показывает, как вставить пустое поле в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldNone.py" >}}

## Вставка полей в документ с помощью FieldBuilder

Альтернативный способ вставить поля в Aspose.Words Это [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/) класс. Он обеспечивает свободный интерфейс для указания переключателей полей и значений аргументов в виде текста, узлов или даже вложенных полей.

Следующий пример кода показывает, как вставить поле в документ, используя **FieldBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldUsingFieldBuilder.py" >}}

## Вставка полей с использованием DOM

Вы также можете вставлять различные типы полей, используя [Aspose.Words Document Object Model (DOM)](/words/ru/python-net/aspose-words-document-object-model/). В этом разделе мы рассмотрим несколько примеров.

### Включить слияние Поле в документе с использованием DOM

The `MERGEFIELD` поле в документе Word может быть представлено [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) класс. Вы можете использовать [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) класс для выполнения следующих операций:

- указать название поля слияния
- указать форматирование поля слияния
- указать текст, который находится между разделителем поля и концом поля поля слияния поля
- указать текст, который должен быть вставлен после поля слияния, если поле не является пустым
- указать текст, который следует вставить перед полем слияния, если поле не является пустым

Следующий пример кода показывает, как добавить `Merge` Полевое использование DOM к пункту в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMergeFieldUsingDOM.py" >}}

### Вставка Mail Merge `ADDRESSBLOCK` поле в документ, использующий DOM

The `ADDRESSBLOCK` поле используется для вставки mail merge Блок адресов в документе Word. `ADDRESSBLOCK` поле в документе Word может быть представлено [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) класс. Вы можете использовать [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) класс для выполнения следующих операций:

- указать, следует ли включать название страны/региона в поле;
- указать, форматировать ли адрес в соответствии со страной/регионом получателя, как определено POST*CODE (Universal Postal Union 2006)
- указать название исключенной страны/региона
- указать название и формат адреса
- указать идентификатор языка, используемый для форматирования адреса

Следующий пример кода показывает, как добавить Mail Merge `ADDRESSBLOCK` Полевое использование DOM к пункту в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMailMergeAddressBlockFieldUsingDOM.py" >}}

### Вставка `ADVANCE` полей в Документ без использования DocumentBuilder

The `ADVANCE` Поле используется для смещения последующего текста в строке слева, справа, вверх или вниз. The `ADVANCE` поле в документе Word может быть представлено [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) класс. Вы можете использовать [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) класс для выполнения следующих операций:

- указать количество точек, по которым текст, следующий за полем, должен быть перемещен вертикально с верхнего края страницы;
- указать количество точек, по которым текст, следующий за полем, должен перемещаться горизонтально с левого края колонки, рамки или текстового ящика;
- указать количество точек, по которым текст, следующий за полем, должен быть перемещен влево, вправо, вверх или вниз;

Следующий пример кода показывает, как добавить `ADVANCE` Полевое использование DOM к абзацу в документе.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAdvanceFieldWithOutDocumentBuilder.py" >}}

### Вставка `ASK` полей в Документ без использования DocumentBuilder

The `ASK` Поле используется для того, чтобы побудить пользователя присвоить текст закладке в документе Word. `ASK` поле в документе Word может быть представлено [FieldAsk](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldask/) класс. Вы можете использовать **FieldAsk** класс для выполнения следующих операций:

- указать название закладки
- указать ответ пользователя по умолчанию (первоначальное значение, содержащееся в окне подсказки)
- указать, должен ли ответ пользователя быть получен один раз за mail merge операция
- указать текст запроса (заголовок окна запроса)

Следующий пример кода показывает, как добавить `ASK` Полевое использование DOM к пункту в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertASKFieldWithOutDocumentBuilder.py" >}}

### Вставка `AUTHOR` полей в Документ без использования DocumentBuilder

The `AUTHOR` поле используется для указания имени автора документа из `Document` свойств. The `AUTHOR` поле в документе Word может быть представлено [FieldAuthor](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/) класс. Вы можете использовать **FieldAuthor** класс для выполнения следующих операций:

- указать имя автора документа

Следующий пример кода показывает, как добавить `AUTHOR` Полевое использование DOM к пункту в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAuthorField.py" >}}

### Вставка `INCLUDETEXT` полей в Документ без использования DocumentBuilder

The `INCLUDETEXT` поле вставляет текст и графику, содержащиеся в документе, названном в коде поля. Вы можете вставить весь документ или часть документа, на которую ссылается закладка. Это поле в документе Word представлено INCLUDETEXT. Вы можете использовать [FieldIncludeText](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldincludetext/) класс для выполнения следующих операций:

- указать название закладки включенного документа
- указать местонахождение документа

Следующий пример кода показывает, как добавить `INCLUDETEXT` поле используя DOM к пункту в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldIncludeTextWithoutDocumentBuilder.py" >}}

### Вставка `TOA` полей в Документ без использования DocumentBuilder

The `TOA` (* Таблица полномочий*) поле строит и вставляет таблицу полномочий. The `TOA` поле собирает записи, отмеченные `TA` (*Table of Authorities Entry*) поля. Microsoft Office Word вставляет `TOA` поле, когда вы нажимаете *Вставить таблицу полномочий* в **Таблица полномочий** группа на **References** вкладка. Когда вы смотрите на `TOA` Поле в вашем документе, синтаксис выглядит так:

{ `TOA` [Switches ] }

Вы можете использовать [FieldToa](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtoa/) класс для выполнения операций с `TOA` поле.

Следующий пример кода показывает, как добавить `TOA` поле используя DOM к пункту в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertTOAFieldWithoutDocumentBuilder.py" >}}

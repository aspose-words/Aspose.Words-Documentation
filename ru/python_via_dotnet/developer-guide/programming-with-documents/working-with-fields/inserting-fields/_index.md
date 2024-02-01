---
title: Вставка полей в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Вставить поля
linktitle: Вставить поля
description: "Вставлять поля в документ с номером Python можно разными способами: с помощью `DocumentBuilder` или DOM (Document Object Model)."
type: docs
weight: 20
url: /ru/python-net/inserting-fields/
---

Существует несколько способов вставки полей в документ:

- используя [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)
- используя [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/)
- используя [Aspose.Words Document Object Model (DOM)](/words/ru/python-net/aspose-words-document-object-model/)

В этой статье мы рассмотрим каждый способ более подробно и разберем, как вставить те или иные поля с помощью этих вариантов.

## Вставка полей в документ с помощью DocumentBuilder

В Aspose.Words метод [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) используется для вставки новых полей в документ. Первый параметр принимает полный код вставляемого поля. Второй параметр является необязательным и позволяет вручную установить результат поля. Если это значение не указано, поле обновляется автоматически. Вы можете передать этому параметру значение null или пустое, чтобы вставить поле с пустым значением поля. Если вы не уверены в синтаксисе кода конкретного поля, сначала создайте поле в Microsoft Word и переключитесь, чтобы увидеть его код поля.

{{% alert color="primary" %}}

Если в коде вашего поля есть параметр, содержащий пробел, его необходимо заключить в речевые знаки. В противном случае поле как в Microsoft Word, так и в Aspose.Words может работать не так, как ожидалось, поскольку оба параметра обрабатываются как усеченные.

{{% /alert %}}

В следующем примере кода показано, как вставить поле слияния в документ с помощью **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertField.py" >}}

В следующем примере кода показано, как вставить в документ поле слияния с немецкой локалью, используя **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-DocumentBuilderInsertField.py" >}}

Тот же метод используется для вставки полей, вложенных в другие поля.

В следующем примере кода показано, как вставлять поля, вложенные в другое поле, с помощью **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertNestedFields.py" >}}

### Укажите локаль на уровне поля

Идентификатор языка — это стандартное международное числовое сокращение языка в стране или географическом регионе. С помощью Aspose.Words вы можете указать локаль на уровне поля. Свойство [locale_id](https://reference.aspose.com/words/python-net/aspose.words.fields/field/locale_id/) получает или задает идентификатор локали поля.

В следующем примере кода показано, как использовать эту опцию:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-SpecifylocaleAtFieldlevel.py" >}}

### Вставить нетипизированное/пустое поле

Если вы хотите вставить нетипизированные/пустые поля ({}), как это позволяет Microsoft Word, вы можете использовать метод [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) с параметром [FieldType.FIELD_NONE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_none). Чтобы вставить поле в документ Word, можно нажать комбинацию клавиш "Ctrl+F9".

В следующем примере кода показано, как вставить пустое поле в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldNone.py" >}}

## Вставка полей в документ с помощью FieldBuilder

Альтернативным способом вставки полей в Aspose.Words является класс [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/). Он предоставляет гибкий интерфейс для указания переключателей полей и значений аргументов в виде текста, узлов или даже вложенных полей.

В следующем примере кода показано, как вставить поле в документ с помощью **FieldBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldUsingFieldBuilder.py" >}}

## Вставка полей с использованием DOM

Вы также можете вставлять различные типы полей, используя [Aspose.Words Document Object Model (DOM)](/words/ru/python-net/aspose-words-document-object-model/). В этом разделе мы рассмотрим несколько примеров.

### Вставка поля слияния в документ с помощью DOM

Поле `MERGEFIELD` в документе Word может быть представлено классом [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/). Вы можете использовать класс [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) для выполнения следующих операций:

- указать имя поля слияния
- указать форматирование поля слияния
- укажите текст, который находится между разделителем полей и концом поля поля слияния
- укажите текст, который будет вставлен после поля слияния, если поле не пустое
- укажите текст, который будет вставлен перед полем слияния, если поле не пустое

В следующем примере кода показано, как добавить поле `Merge` с использованием DOM в абзац документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMergeFieldUsingDOM.py" >}}

### Вставка поля Mail Merge `ADDRESSBLOCK` в документ с использованием DOM

Поле `ADDRESSBLOCK` используется для вставки блока адреса mail merge в документ Word. Поле `ADDRESSBLOCK` в документе Word может быть представлено классом [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/). Вы можете использовать класс [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) для выполнения следующих операций:

- укажите, включать ли в поле название страны/региона
- укажите, форматировать ли адрес в соответствии со страной/регионом получателя, как определено POST*CODE (Universal Postal Union 2006)
- укажите название исключенной страны/региона
- указать имя и формат адреса
- указать идентификатор языка, используемый для форматирования адреса

В следующем примере кода показано, как добавить поле Mail Merge `ADDRESSBLOCK` с использованием DOM в абзац документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMailMergeAddressBlockFieldUsingDOM.py" >}}

### Вставка поля `ADVANCE` в документ без использования DocumentBuilder

Поле `ADVANCE` используется для смещения последующего текста внутри строки влево, вправо, вверх или вниз. Поле `ADVANCE` в документе Word может быть представлено классом [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/). Вы можете использовать класс [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) для выполнения следующих операций:

- укажите количество пунктов, на которое текст, следующий за полем, должен быть сдвинут по вертикали от верхнего края страницы
- укажите количество пунктов, на которое текст, следующий за полем, должен перемещаться по горизонтали от левого края столбца, фрейма или текстового поля
- укажите количество пунктов, на которое текст, следующий за полем, должен перемещаться влево, вправо, вверх или вниз

В следующем примере кода показано, как добавить поле `ADVANCE` с использованием DOM в абзац документа.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAdvanceFieldWithOutDocumentBuilder.py" >}}

### Вставка поля `ASK` в документ без использования DocumentBuilder

Поле `ASK` используется для запроса у пользователя текста, который можно назначить закладке в документе Word. Поле `ASK` в документе Word может быть представлено классом [FieldAsk](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldask/). Вы можете использовать класс **FieldAsk** для выполнения следующих операций:

- указать название закладки
- указать ответ пользователя по умолчанию (начальное значение, содержащееся в окне подсказки)
- указать, следует ли получать ответ пользователя один раз за операцию mail merge
- указать текст подсказки (заголовок окна подсказки)

В следующем примере кода показано, как добавить поле `ASK` с использованием DOM в абзац документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertASKFieldWithOutDocumentBuilder.py" >}}

### Вставка поля `AUTHOR` в документ без использования DocumentBuilder

Поле `AUTHOR` используется для указания имени автора документа из свойств `Document`. Поле `AUTHOR` в документе Word может быть представлено классом [FieldAuthor](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/). Вы можете использовать класс **FieldAuthor** для выполнения следующих операций:

- указать имя автора документа

В следующем примере кода показано, как добавить поле `AUTHOR` с использованием DOM в абзац документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAuthorField.py" >}}

### Вставка поля `INCLUDETEXT` в документ без использования DocumentBuilder

Поле `INCLUDETEXT` вставляет текст и графику, содержащиеся в документе, указанном в коде поля. Вы можете вставить весь документ или его часть, на которую указывает закладка. Это поле в документе Word представлено INCLUDETEXT. Вы можете использовать класс [FieldIncludeText](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldincludetext/) для выполнения следующих операций:

- указать имя закладки включаемого документа
- указать местонахождение документа

В следующем примере кода показано, как добавить поле `INCLUDETEXT` с использованием DOM в абзац документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldIncludeTextWithoutDocumentBuilder.py" >}}

### Вставка поля `TOA` в документ без использования DocumentBuilder

Поле `TOA` (*Таблица полномочий*) создает и вставляет таблицу полномочий. Поле `TOA` собирает записи, отмеченные полями `TA` (*Таблица записей органов*). Microsoft Office Word вставляет поле `TOA`, когда вы нажимаете *Вставить таблицу полномочий* в группе **Таблица полномочий** на вкладке **References**. Когда вы просматриваете поле `TOA` в документе, синтаксис выглядит следующим образом:

{ `TOA` [Switches ] }

Вы можете использовать класс [FieldToa](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtoa/) для выполнения операций с полем `TOA`.

В следующем примере кода показано, как добавить поле `TOA` с использованием DOM в абзац документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertTOAFieldWithoutDocumentBuilder.py" >}}

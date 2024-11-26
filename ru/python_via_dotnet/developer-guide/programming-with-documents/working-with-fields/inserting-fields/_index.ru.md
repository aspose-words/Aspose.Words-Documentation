---
title: Вставка полей в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Вставка полей
linktitle: Вставка полей
description: "Вставляйте поля в документ в Python разными способами: используя `DocumentBuilder` или DOM (объектная модель документа)."
type: docs
weight: 20
url: /ru/python-net/inserting-fields/
timestamp: 2024-09-25-11-08-55
---

Существует несколько различных способов вставки полей в документ:

- используя [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)
- используя [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/)
- с помощью [Aspose.Words Объектная модель документа (DOM)](/words/python-net/aspose-words-document-object-model/)

В этой статье мы рассмотрим каждый из способов более подробно и проанализируем, как вставлять определенные поля, используя эти опции.

## Вставка полей в документ с помощью DocumentBuilder

В Aspose.Words метод [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) используется для вставки новых полей в документ. Первый параметр принимает полный код поля, которое необходимо вставить. Второй параметр является необязательным и позволяет вручную задать результат заполнения поля. Если это значение не указано, поле обновляется автоматически. Вы можете задать значение null или empty в этом параметре, чтобы вставить поле с пустым значением. Если вы не уверены в синтаксисе конкретного кода поля, сначала создайте поле в Microsoft Word и переключитесь на просмотр его кода.

{{% alert color="primary" %}}

Если в коде вашего поля есть параметр, содержащий пробел, то он должен быть заключен в речевые знаки. В противном случае поле в обоих вариантах Microsoft Word и Aspose.Words может работать не так, как ожидалось, поскольку оба параметра обрабатываются как усеченные.

{{% /alert %}}

В следующем примере кода показано, как вставить поле слияния в документ с помощью **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertField.py" >}}

В следующем примере кода показано, как вставить поле слияния с немецким языковым стандартом в документ, используя **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-DocumentBuilderInsertField.py" >}}

Тот же метод используется для вставки полей, вложенных в другие поля.

В следующем примере кода показано, как вставить поля, вложенные в другое поле, используя **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertNestedFields.py" >}}

### Укажите языковой стандарт на уровне поля

Идентификатор языка - это стандартное международное цифровое сокращение для обозначения языка в стране или географическом регионе. С помощью Aspose.Words вы можете указать языковой стандарт на уровне поля. Свойство [locale_id](https://reference.aspose.com/words/python-net/aspose.words.fields/field/locale_id/) возвращает или задает языковой стандарт ID поля.

В следующем примере кода показано, как использовать эту опцию:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-SpecifylocaleAtFieldlevel.py" >}}

### Вставить Нетипизированное/пустое поле

Если вы хотите вставить нетипизированные/пустые поля ({}) так, как позволяет Microsoft Word, вы можете использовать метод [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) с параметром [FieldType.FIELD_NONE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_none). Чтобы вставить поле в документ Word, вы можете нажать комбинацию клавиш "Ctrl + F9".

В следующем примере кода показано, как вставить пустое поле в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldNone.py" >}}

## Вставка полей в документ с помощью FieldBuilder

Альтернативным способом вставки полей в Aspose.Words является класс [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/). Он предоставляет удобный интерфейс для указания переключателей полей и значений аргументов в виде текста, узлов или даже вложенных полей.

В следующем примере кода показано, как вставить поле в документ с помощью **FieldBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldUsingFieldBuilder.py" >}}

## Вставка полей с помощью DOM

Вы также можете вставлять поля различных типов, используя [Aspose.Words Объектную модель документа (DOM)](/words/python-net/aspose-words-document-object-model/). В этом разделе мы рассмотрим несколько примеров.

### Вставка поля слияния в документ с помощью DOM

Поле `MERGEFIELD` в документе Word может быть представлено классом [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/). Вы можете использовать класс [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) для выполнения следующих операций:

- укажите название поля для объединения
- укажите форматирование поля слияния
- укажите текст, который находится между разделителем полей и концом поля в поле объединения
- укажите текст, который будет вставлен после поля объединения, если это поле не является пустым
- укажите текст, который будет вставлен перед полем объединения, если это поле не является пустым

В следующем примере кода показано, как добавить поле `Merge` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMergeFieldUsingDOM.py" >}}

### Вставка поля Mail Merge `ADDRESSBLOCK` в документ с помощью DOM

Поле `ADDRESSBLOCK` используется для вставки адресного блока Mail Merge в документ Word. Поле `ADDRESSBLOCK` в документе Word может быть представлено классом [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/). Вы можете использовать класс [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) для выполнения следующих операций:

- укажите, следует ли указывать название страны/региона в этом поле
- укажите, следует ли форматировать адрес в соответствии со страной/регионом получателя, как указано в POST*CODE (Всемирный почтовый союз, 2006)
- укажите название исключенной страны/региона
- укажите формат имени и адреса
- укажите язык ID, используемый для форматирования адреса

В следующем примере кода показано, как добавить поле Mail Merge `ADDRESSBLOCK` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMailMergeAddressBlockFieldUsingDOM.py" >}}

### Вставка поля `ADVANCE` в документ без использования DocumentBuilder

Поле `ADVANCE` используется для смещения последующего текста в строке влево, вправо, вверх или вниз. Поле `ADVANCE` в документе Word может быть представлено классом [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/). Класс [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) можно использовать для выполнения следующих операций:

- укажите количество точек, на которые текст, следующий за полем, должен быть перемещен по вертикали от верхнего края страницы
- укажите количество точек, на которое текст, следующий за полем, должен быть перемещен по горизонтали от левого края столбца, рамки или текстового поля
- укажите количество точек, на которые текст, следующий за полем, должен быть перемещен влево, вправо, вверх или вниз

В следующем примере кода показано, как добавить поле `ADVANCE` с помощью DOM в абзац документа.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAdvanceFieldWithOutDocumentBuilder.py" >}}

### Вставка поля `ASK` в документ без использования DocumentBuilder

Поле `ASK` используется для запроса текста, который пользователь должен присвоить закладке в документе Word. Поле `ASK` в документе Word может быть представлено классом [FieldAsk](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldask/). Класс **FieldAsk** можно использовать для выполнения следующих операций:

- укажите название закладки
- укажите ответ пользователя по умолчанию (начальное значение, содержащееся в окне запроса)
- укажите, должен ли ответ пользователя быть получен один раз за операцию Mail Merge
- укажите текст запроса (заголовок окна запроса)

В следующем примере кода показано, как добавить поле `ASK` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertASKFieldWithOutDocumentBuilder.py" >}}

### Вставка поля `AUTHOR` в документ без использования DocumentBuilder

Поле `AUTHOR` используется для указания имени автора документа в свойствах `Document`. Поле `AUTHOR` в документе Word может быть представлено классом [FieldAuthor](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/). Класс **FieldAuthor** можно использовать для выполнения следующих операций:

- укажите имя автора документа

В следующем примере кода показано, как добавить поле `AUTHOR` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAuthorField.py" >}}

### Вставка поля `INCLUDETEXT` в документ без использования DocumentBuilder

В поле `INCLUDETEXT` вставляется текст и графические изображения, содержащиеся в документе, название которого указано в коде поля. Вы можете вставить весь документ или часть документа, на который ссылается закладка. Это поле в документе Word обозначается символом INCLUDETEXT. Вы можете использовать класс [FieldIncludeText](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldincludetext/) для выполнения следующих операций:

- укажите название закладки для включенного документа
- укажите местоположение документа

В следующем примере кода показано, как добавить поле `INCLUDETEXT` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldIncludeTextWithoutDocumentBuilder.py" >}}

### Вставка поля `TOA` в документ без использования DocumentBuilder

В поле `TOA` (*Table of Authorities*) создается и вставляется таблица полномочий. В поле `TOA` собираются записи, помеченные полями `TA` (*Table of Authorities Entry*). Microsoft Office Word вставляет поле `TOA`, когда вы нажимаете *Insert Table of Authorities* в группе **Table of Authorities** на вкладке **References**. При просмотре поля `TOA` в вашем документе синтаксис будет выглядеть следующим образом:

{ `TOA` [Switches ] }

Вы можете использовать класс [FieldToa](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtoa/) для выполнения операций с полем `TOA`.

В следующем примере кода показано, как добавить поле `TOA` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertTOAFieldWithoutDocumentBuilder.py" >}}

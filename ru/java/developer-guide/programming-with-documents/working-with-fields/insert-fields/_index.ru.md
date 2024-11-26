---
title: Вставить поля в Java
second_title: Aspose.Words для Java
articleTitle: Вставка полей
linktitle: Вставка полей
description: "Различные способы вставки полей в ваш документ с помощью Java."
type: docs
weight: 20
url: /ru/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

Существует несколько различных способов вставки полей в документ:

- используя [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- используя [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- с помощью [Aspose.Words Объектная модель документа (DOM)](/words/java/aspose-words-document-object-model/)

В этой статье мы рассмотрим каждый из способов более подробно и проанализируем, как вставлять определенные поля, используя эти опции.

## Вставка полей в документ с помощью DocumentBuilder

В Aspose.Words метод [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) используется для вставки новых полей в документ. Первый параметр принимает полный код вставляемого поля. Второй параметр является необязательным и позволяет вручную задать результат заполнения поля. Если это значение не указано, поле обновляется автоматически. Вы можете задать значение null или empty в этом параметре, чтобы вставить поле с пустым значением. Если вы не уверены в синтаксисе конкретного кода поля, сначала создайте поле в Microsoft Word и переключитесь на просмотр его кода.

{{% alert color="primary" %}}

Если в вашем коде поля есть параметр, содержащий пробел, то он должен быть заключен в речевые знаки. В противном случае поле в обоих вариантах Microsoft Word и Aspose.Words может работать не так, как ожидалось, поскольку оба параметра обрабатываются как усеченные.

{{% /alert %}}

В следующем примере кода показано, как вставить поле слияния в документ с помощью **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

Тот же метод используется для вставки полей, вложенных в другие поля.

В следующем примере кода показано, как вставлять поля, вложенные в другое поле, используя **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Укажите языковой стандарт на уровне поля

Идентификатор языка - это стандартное международное цифровое сокращение для обозначения языка в стране или географическом регионе. С помощью Aspose.Words вы можете указать языковой стандарт на уровне поля, используя свойство [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId), которое возвращает или задает языковой стандарт поля ID.

В следующем примере кода показано, как использовать эту опцию:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Вставить Нетипизированное/пустое поле

Если вы хотите вставить нетипизированные/пустые поля ({}) так, как позволяет Microsoft Word, вы можете использовать метод [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) с параметром [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/). Чтобы вставить поле в документ Word, вы можете нажать комбинацию клавиш "Ctrl + F9".

В следующем примере кода показано, как вставить пустое поле в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Вставить поле `COMPARE`

Поле `COMPARE` сравнивает два значения и возвращает числовое значение 1, если сравнение истинно, или 0, если сравнение ложно.

В следующем примере кода показано, как добавить поля `COMPARE` с помощью DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Вставить поле `IF`

Поле `IF` может использоваться для условной оценки аргументов.

В следующем примере кода показано, как добавить поля `IF` с помощью DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Вставка полей в документ с помощью FieldBuilder

Альтернативным способом вставки полей в Aspose.Words является класс [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/). Он предоставляет удобный интерфейс для указания переключателей полей и значений аргументов в виде текста, узлов или даже вложенных полей.

В следующем примере кода показано, как вставить поле в документ с помощью **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Вставка полей с помощью DOM

Вы также можете вставлять поля различных типов, используя [Aspose.Words Объектную модель документа (DOM)](/words/java/aspose-words-document-object-model/). В этом разделе мы рассмотрим несколько примеров.

### Вставка поля слияния в документ с помощью DOM

`MERGEFIELD` field in Word document can be represented by the [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) class. You can use **FieldMergeField** class to perform the following operations:

- укажите название поля для объединения
- укажите форматирование поля для объединения
- укажите текст, который находится между разделителем полей и концом поля в поле объединения
- укажите текст, который будет вставлен после поля объединения, если это поле не является пустым
- укажите текст, который будет вставлен перед полем объединения, если это поле не является пустым

{{% alert color="primary" %}}

Для получения более подробной информации смотрите класс [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) API.

{{% /alert %}}

В следующем примере кода показано, как добавить поле `MERGE` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Вставка поля Mail Merge `ADDRESSBLOCK` в документ с помощью DOM

Поле `ADDRESSBLOCK` используется для вставки адресного блока Mail Merge в документ Word. Поле `ADDRESSBLOCK` в документе Word может быть представлено классом [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/). Класс **FieldAddressBlock** можно использовать для выполнения следующих операций:

- укажите, следует ли указывать название страны/региона в этом поле
- укажите, следует ли форматировать адрес в соответствии со страной/регионом получателя, как указано в POST*CODE (Всемирный почтовый союз, 2006)
- укажите название исключенной страны/региона
- укажите формат имени и адреса
- укажите язык ID, используемый для форматирования адреса

{{% alert color="primary" %}}

Для получения более подробной информации смотрите класс [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) API.

{{% /alert %}}

В следующем примере кода показано, как добавить поле Mail Merge `ADDRESSBLOCK` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Вставка поля `ADVANCE` в документ без использования DocumentBuilder

Поле `ADVANCE` используется для смещения последующего текста в строке влево, вправо, вверх или вниз. Поле `ADVANCE` в документе Word может быть представлено классом [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/). Класс **FieldAdvance** можно использовать для выполнения следующих операций:

- укажите количество точек, на которые текст, следующий за полем, должен быть перемещен по вертикали от верхнего края страницы
- укажите количество точек, на которое текст, следующий за полем, должен быть перемещен по горизонтали от левого края столбца, рамки или текстового поля
- укажите количество точек, на которые текст, следующий за полем, должен быть перемещен влево, вправо, вверх или вниз

{{% alert color="primary" %}}

Для получения более подробной информации смотрите класс [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) API.

{{% /alert %}}

В следующем примере кода показано, как добавить поле `ADVANCE` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Вставка поля `ASK` в документ без использования DocumentBuilder

Поле `ASK` используется для запроса текста, который пользователь должен присвоить закладке в документе Word. Поле `ASK` в документе Word может быть представлено классом [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/). Класс **FieldAsk** можно использовать для выполнения следующих операций:

- укажите название закладки
- укажите ответ пользователя по умолчанию (начальное значение, содержащееся в окне запроса)
- укажите, должен ли ответ пользователя быть получен один раз за операцию Mail Merge
- укажите текст запроса (заголовок окна запроса)

{{% alert color="primary" %}}

Для получения более подробной информации смотрите класс [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) API.

{{% /alert %}}

В следующем примере кода показано, как добавить поле `ASK` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Вставка поля `AUTHOR` в документ без использования DocumentBuilder

Поле `AUTHOR` используется для указания имени автора документа в свойствах `Document`. Поле `AUTHOR` в документе Word может быть представлено классом [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/). Вы можете использовать класс **FieldAuthor** для выполнения следующих операций:

- укажите имя автора документа

{{% alert color="primary" %}}

Для получения более подробной информации смотрите класс [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) API.

{{% /alert %}}

В следующем примере кода показано, как добавить поле `AUTHOR` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Вставка поля `INCLUDETEXT` в документ без использования DocumentBuilder

В поле `INCLUDETEXT` вставляется текст и графические изображения, содержащиеся в документе, название которого указано в коде поля. Вы можете вставить весь документ или часть документа, на который ссылается закладка. Это поле в документе Word обозначается символом INCLUDETEXT. Вы можете использовать класс [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) для выполнения следующих операций:

- укажите название закладки для включенного документа
- укажите местоположение документа

{{% alert color="primary" %}}

Для получения более подробной информации смотрите класс [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) API.

{{% /alert %}}

В следующем примере кода показано, как добавить поле `INCLUDETEXT` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Вставка поля `TOA` в документ без использования DocumentBuilder

В поле `TOA` (*Table of Authorities*) создается и вставляется таблица полномочий. В поле `TOA` собираются записи, помеченные полями `TA` (*Table of Authorities Entry*). Microsoft Office Word вставляет поле `TOA`, когда вы нажимаете *Insert Table of Authorities* в группе **Table of Authorities** на вкладке **References**. При просмотре поля `TOA` в вашем документе синтаксис будет выглядеть следующим образом:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Для получения более подробной информации смотрите класс [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) API.

{{% /alert %}}

В следующем примере кода показано, как добавить поле `TOA` с помощью DOM в абзац документа.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}

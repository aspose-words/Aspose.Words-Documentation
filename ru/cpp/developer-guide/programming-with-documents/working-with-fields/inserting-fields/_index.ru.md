---
title: Вставка полей в C++
second_title: Aspose.Words для C++
articleTitle: Вставка полей
linktitle: Вставка полей
description: "Различные способы вставки полей в ваш документ с помощью C++."
type: docs
weight: 20
url: /ru/cpp/inserting-fields/
---

Существует несколько различных способов вставки полей в документ:

- используя [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)
- используя [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)
- с помощью [Aspose.Words Объектная модель документа (DOM)](/words/cpp/aspose-words-document-object-model/)

В этой статье мы рассмотрим каждый из способов более подробно и проанализируем, как вставлять определенные поля, используя эти опции.

## Вставка полей в документ с помощью DocumentBuilder

В случае Aspose.Words метод [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) используется для вставки новых полей в документ. Первый параметр принимает полный код поля, которое необходимо вставить. Второй параметр является необязательным и позволяет вручную задать результат заполнения поля. Если это значение не указано, поле обновляется автоматически. Вы можете задать значение null или empty для этого параметра, чтобы вставить поле с пустым значением. Если вы не уверены в синтаксисе конкретного кода поля, сначала создайте поле в Microsoft Word и переключитесь, чтобы просмотреть его код.

{{% alert color="primary" %}}

Если в коде вашего поля есть параметр, содержащий пробел, то он должен быть заключен в текстовые символы. В противном случае поле как в Microsoft Word, так и в Aspose.Words может работать не так, как ожидалось, поскольку оба параметра обрабатываются как усеченные

{{% /alert %}}

В следующем примере кода показано, как вставить поле слияния в документ с помощью **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

Тот же метод используется для вставки полей, вложенных в другие поля.

В следующем примере кода показано, как вставить поля, вложенные в другое поле, используя **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### Укажите языковой стандарт на уровне поля

Идентификатор языка - это стандартное международное цифровое сокращение для обозначения языка в стране или географическом регионе. С помощью Aspose.Words вы можете указать языковой стандарт на уровне поля, используя свойство [LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/), которое возвращает или задает языковой идентификатор поля.

В следующем примере кода показано, как использовать эту опцию:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### Вставить Нетипизированное/пустое поле

Если вы хотите вставить нетипизированные/пустые поля ({}), как это позволяет Microsoft Word, вы можете использовать метод [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield) с параметром [FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/). Чтобы вставить поле в документ Word, вы можете нажать комбинацию клавиш "Ctrl + F9".

В следующем примере кода показано, как вставить пустое поле в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## Вставка полей в документ с помощью FieldBuilder

Альтернативным способом вставки полей в Aspose.Words является класс [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/). Он предоставляет удобный интерфейс для указания переключателей полей и значений аргументов в виде текста, узлов или даже вложенных полей.

В следующем примере кода показано, как вставить поле в документ с помощью **FieldBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## Вставка полей с помощью DOM

Вы также можете вставлять поля различных типов, используя [Aspose.Words Объектную модель документа (DOM)](/words/cpp/aspose-words-document-object-model/). В этом разделе мы рассмотрим несколько примеров.

### Вставка поля слияния в документ с помощью DOM

Поле `MERGEFIELD` в документе Word может быть представлено классом [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/). Класс **FieldMergeField** можно использовать для выполнения следующих операций:

- укажите название поля для объединения
- укажите форматирование поля для объединения
- укажите текст, который находится между разделителем полей и концом поля в поле объединения
- укажите текст, который будет вставлен после поля объединения, если это поле не является пустым
- укажите текст, который будет вставлен перед полем объединения, если это поле не является пустым

{{% alert color="primary" %}}

Для получения более подробной информации смотрите API класса [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/).

{{% /alert %}}

В следующем примере кода показано, как добавить поле `MERGE` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Вставка поля адресного блока Mail Merge в документ с использованием DOM

Поле `ADDRESSBLOCK` используется для вставки адресного блока mail merge в документ Word. Поле `ADDRESSBLOCK` в документе Word может быть представлено классом [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/). Класс **FieldAddressBlock** можно использовать для выполнения следующих операций:

- укажите, следует ли указывать название страны/региона в этом поле
- укажите, следует ли форматировать адрес в соответствии со страной/регионом получателя, указанным в почтовом индексе* (Всемирный почтовый союз, 2006)
- укажите название исключенной страны/региона
- укажите формат имени и адреса
- укажите идентификатор языка, используемый для форматирования адреса

{{% alert color="primary" %}}

Для получения более подробной информации смотрите API класса [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/).

{{% /alert %}}

В следующем примере кода показано, как добавить поле Mail Merge `ADDRESSBLOCK` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Вставка поля Advance в документ без использования DocumentBuilder

Поле `ADVANCE` используется для смещения последующего текста в строке влево, вправо, вверх или вниз. Поле `ADVANCE` в документе Word может быть представлено классом [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/). Класс FieldAdvance можно использовать для выполнения следующих операций:

- укажите количество точек, на которые текст, следующий за полем, должен быть перемещен по вертикали от верхнего края страницы
- укажите количество точек, на которое текст, следующий за полем, должен быть перемещен по горизонтали от левого края столбца, рамки или текстового поля
- укажите количество точек, на которые текст, следующий за полем, должен быть перемещен влево, вправо, вверх или вниз

{{% alert color="primary" %}}

Для получения более подробной информации смотрите API класса [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/).

{{% /alert %}}

В следующем примере кода показано, как добавить поле `ADVANCE` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Вставка поля `ASK` в документ без использования DocumentBuilder

Поле `ASK` используется для запроса текста, который пользователь должен присвоить закладке в документе Word. Поле `ASK` в документе Word может быть представлено классом [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/). Класс **FieldAsk** можно использовать для выполнения следующих операций:

- укажите название закладки
- укажите ответ пользователя по умолчанию (начальное значение, содержащееся в окне запроса)
- укажите, должен ли ответ пользователя быть получен один раз за операцию mail merge
- укажите текст запроса (заголовок окна запроса)

{{% alert color="primary" %}}

Для получения более подробной информации смотрите API класса [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask).

{{% /alert %}}

В следующем примере кода показано, как добавить поле `ASK` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Вставка поля `AUTHOR` в документ без использования DocumentBuilder

Поле `AUTHOR` используется для указания имени автора документа в свойствах `Document`. Поле `AUTHOR` в документе Word может быть представлено классом [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/). Класс **FieldAuthor** можно использовать для выполнения следующих операций:

- укажите имя автора документа

{{% alert color="primary" %}}

Для получения более подробной информации смотрите API класса [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/).

{{% /alert %}}

В следующем примере кода показано, как добавить поле `AUTHOR` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Вставка поля `INCLUDETEXT` в документ без использования DocumentBuilder

В поле `INCLUDETEXT` вставляется текст и графические изображения, содержащиеся в документе, название которого указано в коде поля. Вы можете вставить весь документ или часть документа, на который ссылается закладка. Это поле в документе Word представлено параметром INCLUDETEXT. Вы можете использовать класс [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) для выполнения следующих операций:

- укажите название закладки для включенного документа
- укажите местоположение документа

{{% alert color="primary" %}}

Для получения более подробной информации смотрите API класса [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/).

{{% /alert %}}

В следующем примере кода показано, как добавить поле `INCLUDETEXT` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### Вставка поля `TOA` в документ без использования DocumentBuilder

В поле `TOA` (*Table of Authorities*) создается и вставляется таблица полномочий. В поле `TOA` собираются записи, помеченные полями `TA` (*Table of Authorities Entry*). Microsoft Office Word вставляет поле `TOA`, когда вы нажимаете *Insert Table of Authorities* в группе **Table of Authorities** на вкладке **References**. При просмотре поля `TOA` в вашем документе синтаксис будет выглядеть следующим образом:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Для получения более подробной информации смотрите API класса [FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/).

{{% /alert %}}

В следующем примере кода показано, как добавить поле `TOA` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/

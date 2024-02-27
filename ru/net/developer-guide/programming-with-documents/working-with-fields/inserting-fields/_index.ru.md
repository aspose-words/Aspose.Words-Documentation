---
title: Вставить поля в C#
second_title: Aspose.Words для .NET
articleTitle: Вставить поля
linktitle: Вставить поля
description: "Как вставить поля в документ с помощью C# — узнайте разные способы на примерах кода."
type: docs
weight: 20
url: /ru/net/inserting-fields/
---

Существует несколько способов вставки полей в документ:

* используя [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)
* используя [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/)
* используя [Aspose.Words Document Object Model (DOM)](/words/ru/net/aspose-words-document-object-model/)

В этой статье мы рассмотрим каждый способ более подробно и разберем, как вставить те или иные поля с помощью этих вариантов.

## Вставка полей в документ с помощью DocumentBuilder

В Aspose.Words метод [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) используется для вставки новых полей в документ. Первый параметр принимает полный код вставляемого поля. Второй параметр является необязательным и позволяет вручную установить результат поля. Если это значение не указано, поле обновляется автоматически. Вы можете передать этому параметру значение null или пустое, чтобы вставить поле с пустым значением поля. Если вы не уверены в синтаксисе кода конкретного поля, сначала создайте поле в Microsoft Word и переключитесь, чтобы увидеть его код поля.

{{% alert color="primary" %}}

Если в коде вашего поля есть параметр, содержащий пробел, его необходимо заключить в речевые знаки. В противном случае поле как в Microsoft Word, так и в Aspose.Words может работать не так, как ожидалось, поскольку оба параметра обрабатываются как усеченные.

{{% /alert %}}

В следующем примере кода показано, как вставить поле слияния в документ с помощью **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

Тот же метод используется для вставки полей, вложенных в другие поля.

В следующем примере кода показано, как вставлять поля, вложенные в другое поле, с помощью **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}

### Укажите локаль на уровне поля

Идентификатор языка — это стандартное международное числовое сокращение языка в стране или географическом регионе. С помощью Aspose.Words вы можете указать языковой стандарт на уровне поля, используя свойство [LocaleId](https://reference.aspose.com/words/net/aspose.words.fields/field/localeid/), которое получает или устанавливает идентификатор языкового стандарта поля.

В следующем примере кода показано, как использовать эту опцию:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}

### Вставить нетипизированное/пустое поле

Если вы хотите вставить нетипизированные/пустые поля ({}), как это позволяет Microsoft Word, вы можете использовать метод [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) с параметром [FieldType.FieldNone](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/). Чтобы вставить поле в документ Word, можно нажать комбинацию клавиш "Ctrl+F9".

В следующем примере кода показано, как вставить пустое поле в документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}

## Вставка полей в документ с помощью FieldBuilder
Альтернативным способом вставки полей в Aspose.Words является класс [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/). Он предоставляет гибкий интерфейс для указания переключателей полей и значений аргументов в виде текста, узлов или даже вложенных полей.

В следующем примере кода показано, как вставить поле в документ, используя номер **FieldBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder.cs" >}}

## Вставка полей с использованием DOM

Вы также можете вставлять различные типы полей, используя [Aspose.Words Document Object Model (DOM)](/words/ru/net/aspose-words-document-object-model/). В этом разделе мы рассмотрим несколько примеров.

### Вставка поля слияния в документ с использованием DOM

Поле `MERGEFIELD` в документе Word может быть представлено классом [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/). Вы можете использовать класс **FieldMergeField** для выполнения следующих операций:

- указать имя поля слияния
- указать форматирование поля слияния
- укажите текст, который находится между разделителем полей и концом поля поля слияния
- укажите текст, который будет вставлен после поля слияния, если поле не пустое
- укажите текст, который будет вставлен перед полем слияния, если поле не пустое

{{% alert color="primary" %}}

Подробнее см. [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) класс API.

{{% /alert %}}

В следующем примере кода показано, как добавить поле `MERGE` с использованием DOM в абзац документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}

### Вставка поля Mail Merge `ADDRESSBLOCK` в документ с использованием DOM

Поле `ADDRESSBLOCK` используется для вставки блока адреса mail merge в документ Word. Поле `ADDRESSBLOCK` в документе Word может быть представлено классом [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/). Вы можете использовать класс **FieldAddressBlock** для выполнения следующих операций:

- укажите, включать ли в поле название страны/региона
- укажите, форматировать ли адрес в соответствии со страной/регионом получателя, как определено POST*CODE (Universal Postal Union 2006)
- укажите название исключенной страны/региона
- указать имя и формат адреса
- указать идентификатор языка, используемый для форматирования адреса

{{% alert color="primary" %}}

Более подробную информацию см. в классе [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) API.

{{% /alert %}}

В следующем примере кода показано, как добавить поле Mail Merge `ADDRESSBLOCK` с использованием DOM в абзац документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}

### Вставка поля `ADVANCE` в документ без использования DocumentBuilder

Поле `ADVANCE` используется для смещения последующего текста внутри строки влево, вправо, вверх или вниз. Поле `ADVANCE` в документе Word может быть представлено классом [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/). Вы можете использовать класс **FieldAdvance** для выполнения следующих операций:

- укажите количество пунктов, на которое текст, следующий за полем, должен быть сдвинут по вертикали от верхнего края страницы
- укажите количество пунктов, на которое текст, следующий за полем, должен перемещаться по горизонтали от левого края столбца, фрейма или текстового поля
- укажите количество пунктов, на которое текст, следующий за полем, должен перемещаться влево, вправо, вверх или вниз

{{% alert color="primary" %}}

Более подробную информацию см. в классе [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) API.

{{% /alert %}}

В следующем примере кода показано, как добавить поле `ADVANCE` с использованием DOM в абзац документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}

### Вставка поля `ASK` в документ без использования DocumentBuilder

Поле `ASK` используется для запроса у пользователя текста, который можно назначить закладке в документе Word. Поле `ASK` в документе Word может быть представлено классом [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/). Вы можете использовать класс **FieldAsk** для выполнения следующих операций:

- указать название закладки
- указать ответ пользователя по умолчанию (начальное значение, содержащееся в окне подсказки)
- указать, следует ли получать ответ пользователя один раз за операцию mail merge
- указать текст подсказки (заголовок окна подсказки)

{{% alert color="primary" %}}

Более подробную информацию см. в классе [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/) API.

{{% /alert %}}

В следующем примере кода показано, как добавить поле `ASK` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}

### Вставка поля `AUTHOR` в документ без использования DocumentBuilder

Поле `AUTHOR` используется для указания имени автора документа из свойств `Document`. Поле `AUTHOR` в документе Word может быть представлено классом [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/). Вы можете использовать класс **FieldAuthor** для выполнения следующих операций:

- указать имя автора документа

{{% alert color="primary" %}}

Более подробную информацию см. в классе [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) API.

{{% /alert %}}

В следующем примере кода показано, как добавить поле `AUTHOR` с помощью DOM в абзац документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}

### Вставка поля `INCLUDETEXT` в документ без использования DocumentBuilder

Поле `INCLUDETEXT` вставляет текст и графику, содержащиеся в документе, указанном в коде поля. Вы можете вставить весь документ или его часть, на которую указывает закладка. Это поле в документе Word представлено INCLUDETEXT. Вы можете использовать класс [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) для выполнения следующих операций:

- указать имя закладки включаемого документа
- указать местонахождение документа

{{% alert color="primary" %}}

Подробнее см. [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) класс API.

{{% /alert %}}

В следующем примере кода показано, как добавить поле `INCLUDETEXT`, используя DOM, в абзац документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}

### Вставка поля `TOA` в документ без использования DocumentBuilder

Поле `TOA` (*Таблица полномочий*) создает и вставляет таблицу полномочий. Поле `TOA` собирает записи, отмеченные полями `TA` (*Таблица записей органов*). Microsoft Office Word вставляет поле `TOA`, когда вы нажимаете *Вставить таблицу полномочий* в группе **Таблица полномочий** на вкладке **References**. Когда вы просматриваете поле `TOA` в документе, синтаксис выглядит следующим образом:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Подробнее см. [FieldToa](https://reference.aspose.com/words/net/aspose.words.fields/fieldtoa/) класс API.

{{% /alert %}}

В следующем примере кода показано, как добавить поле `TOA` с использованием DOM в абзац документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}

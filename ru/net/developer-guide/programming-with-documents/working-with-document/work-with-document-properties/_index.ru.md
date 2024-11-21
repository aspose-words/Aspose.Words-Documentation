---
title: Работа со свойствами документов в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с документами собственности
linktitle: Работа с документами собственности
description: "Aspose.Words для .NET позволяет хранить полезную информацию о вашем документе, например, API номер версии или авторизованный Date, Встроенные или пользовательские свойства документов с использованием C#."
type: docs
weight: 10
url: /ru/net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Свойства документов позволяют хранить полезную информацию о вашем документе. Эти свойства можно разделить на две группы:

* Система или встроенная система, которая содержит такие значения, как название документа, имя автора, статистика документов и другие.
* Пользователь-определяемый или пользовательский, предоставляемый в виде пар имён-значений, где пользователь может определить как имя, так и значение.

Полезно знать, что информация о API Номер версии пишется непосредственно для вывода документов. Например, при конвертации документа в PDF, Aspose.Words заполняет поле "Приложение" на "Aspose.Words", а поле "PDF Producer" с "Aspose.Words для .NET YY.M.N", где *YY.M.N* является версия Aspose.Words Используется для конверсии. Более подробно см. [Имя генератора или производителя, включенное в исходные документы](/words/ru/net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Заметьте, что вы **не может быть прямым** Aspose.Words изменить или удалить эту информацию из выходных документов.

{{% /alert %}}

## Свойства документов Access

Доступ к свойствам документов в Aspose.Words использовать:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/builtindocumentproperties/) для получения встроенных свойств.

* [CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/customdocumentproperties/) Чтобы получить пользовательские свойства.

**BuiltInDocumentProperties** и **CustomDocumentProperties** являются коллекциями [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) объекты. Эти объекты могут быть получены через свойство индексатора по имени или по индексу.

**BuiltInDocumentProperties** дополнительно обеспечивает доступ к свойствам документа через набор введенных свойств, возвращающих значения соответствующего типа. **CustomDocumentProperties** Возможность добавлять или удалять свойства документа из документа.

The [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) Класс позволяет получить имя, стоимость и тип документа собственности. [Value](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/value/) возвращает объект, но существует набор методов, позволяющих получить значение свойства, преобразованное в определенный тип. После того, как вы узнаете, какой тип собственности, вы можете использовать один из **DocumentProperty.ToXXX** методов, таких как **DocumentProperty.**[ToString](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/tostring/) и **DocumentProperty.**[ToInt](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/toint/), Чтобы получить значение соответствующего типа.

Следующий пример кода показывает, как перечислить все встроенные и пользовательские свойства в документе:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

В Microsoft Word, Вы можете получить доступ к свойствам документов, используя меню "Файл → Свойства".

<img src="/words/net/work-with-document-properties/work-with-document-properties-1.png" alt="/words/net/work-with-document-properties/work-with-document-properties-1.png" style="width:400px"/>

## Добавить или удалить свойства документа

Вы не можете добавлять или удалять встроенные свойства документа Aspose.Words. Вы можете изменить или обновить их ценности.

Добавление свойств пользовательского документа с Aspose.Words, использовать [Add](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/add/#add/) метод, проходящий новое наименование имущества и значение соответствующего типа. Метод возвращает вновь созданный **DocumentProperty** объект.

Чтобы удалить пользовательские свойства, используйте [Remove](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/) способ, передавая ему название собственности для удаления, или [RemoveAt](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/at) Способ удаления имущества по индексу. Вы также можете удалить все свойства, используя [Clear](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/clear/) метод.

Следующий пример кода проверяет, существует ли в документе пользовательское свойство с заданным именем, и добавляет еще несколько свойств пользовательского документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Следующий пример кода показывает, как удалить свойство пользовательского документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## Обновление встроенных свойств документов

Aspose.Words не обновляет автоматически свойства документов, поскольку Microsoft Word Он делает это с некоторыми свойствами, но предоставляет метод обновления некоторых свойств статистического встроенного документа. Звони. [UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/updatewordcount/#updatewordcount/) Способ пересчета и обновления следующих свойств:

* [Characters](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lines/)

## Создайте новую пользовательскую собственность, связанную с контентом

Aspose.Words обеспечивает [AddLinkToContent](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) Способ создания нового пользовательского свойства документа, связанного с контентом. Это свойство возвращает вновь созданный объект недвижимости или аннулирует, если [LinkSource](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/linksource/) Это недействительно.

Следующий пример кода показывает, как настроить ссылку на пользовательское свойство:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## Получить переменные документы

Вы можете получить набор переменных документов, используя [Variables](https://reference.aspose.com/words/net/aspose.words/document/variables/) собственность. Переменные имена и значения - это строки.

Следующий пример кода показывает, как перечислить переменные документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Удалить личную информацию из документа

Если вы хотите поделиться документом Word с другими людьми, вы можете удалить личную информацию, такую как имя автора и компания. Для этого используют [RemovePersonalInformation](https://reference.aspose.com/words/net/aspose.words/document/removepersonalinformation/) право устанавливать флаг, указывающий, что Microsoft Word Удалит всю информацию о пользователе из комментариев, изменений и свойств документа при сохранении документа.

Следующий пример кода показывает, как удалить личную информацию:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

Установка этой опции фактически не удаляет личную информацию при обработке документа. Aspose.Words и затрагивает только Microsoft Word поведение.

{{% /alert %}}

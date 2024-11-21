---
title: Работа с документами собственности
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с документами собственности
linktitle: Работа с документами собственности
description: "Aspose.Words для Python позволяет хранить полезную информацию о вашем документе, например, API номер версии или авторизованный Date, Встроенные или пользовательские свойства документов."
type: docs
weight: 10
url: /ru/python-net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Свойства документов позволяют хранить полезную информацию о вашем документе. Эти свойства можно разделить на две группы:

* Система или встроенная система, которая содержит такие значения, как название документа, имя автора, статистика документов и другие.
* Пользователь-определяемый или пользовательский, предоставляемый в виде пар имён-значений, где пользователь может определить как имя, так и значение.

Полезно знать, что информация о API Номер версии пишется непосредственно для вывода документов. Например, при конвертации документа в PDF, Aspose.Words заполняет поле "Приложение" на "Aspose.Words", а поле "PDF Producer" с "Aspose.Words для .NET YY.M.N", где *YY.M.N* является версия Aspose.Words Используется для конверсии. Более подробно см. [Имя генератора или производителя, включенное в исходные документы](/words/ru/python-net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Заметьте, что вы **не может быть прямым** Aspose.Words изменить или удалить эту информацию из выходных документов.

{{% /alert %}}

## Свойства документов Access

Доступ к свойствам документов в Aspose.Words использовать:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) для получения встроенных свойств.

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) Чтобы получить пользовательские свойства.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) и [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) являются коллекциями [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) объекты. Эти объекты могут быть получены через свойство индексатора по имени или по индексу.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) дополнительно обеспечивает доступ к свойствам документа через набор введенных свойств, возвращающих значения соответствующего типа. [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) Возможность добавлять или удалять свойства документа из документа.

The [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) Класс позволяет получить имя, стоимость и тип документа собственности. [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) возвращает объект, но существует набор методов, позволяющих получить значение свойства, преобразованное в определенный тип. После того, как вы узнаете, какой тип собственности, вы можете использовать один из **DocumentProperty.to_XXX** методов, таких как **Собственность. ________** и [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/), Чтобы получить значение соответствующего типа.

Следующий пример кода показывает, как перечислить все встроенные и пользовательские свойства в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

В Microsoft Word, Вы можете получить доступ к свойствам документов, используя меню "Файл → Свойства".

<img src="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" alt="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" style="width:400px"/>

## Добавить или удалить свойства документа

Вы не можете добавлять или удалять встроенные свойства документа Aspose.Words. Вы можете изменить или обновить их ценности.

Добавление свойств пользовательского документа с Aspose.Words, использовать [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/) метод, проходящий новое наименование имущества и значение соответствующего типа. Метод возвращает вновь созданный [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) объект.

Чтобы удалить пользовательские свойства, используйте [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/) способ, передавая ему название собственности для удаления, или [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/) Способ удаления имущества по индексу. Вы также можете удалить все свойства, используя [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/) метод.

Следующий пример кода проверяет, существует ли в документе пользовательское свойство с заданным именем, и добавляет еще несколько свойств пользовательского документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Следующий пример кода показывает, как удалить свойство пользовательского документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## Обновление встроенных свойств документов

Aspose.Words не обновляет автоматически свойства документов, поскольку Microsoft Word Он делает это с некоторыми свойствами, но предоставляет метод обновления некоторых свойств статистического встроенного документа. Звони. [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/) Способ пересчета и обновления следующих свойств:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## Создайте новую пользовательскую собственность, связанную с контентом

Aspose.Words обеспечивает [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) Способ создания нового пользовательского свойства документа, связанного с контентом. Это свойство возвращает вновь созданный объект недвижимости или аннулирует, если **link_source** Это недействительно.

Следующий пример кода показывает, как настроить ссылку на пользовательское свойство:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## Получить переменные документы

Вы можете получить набор переменных документов, используя [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/) собственность. Переменные имена и значения - это строки.

Следующий пример кода показывает, как добавить и получить доступ к переменным документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Удалить личную информацию из документа

Если вы хотите поделиться документом Word с другими людьми, вы можете удалить личную информацию, такую как имя автора и компания. Для этого используют [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/) право устанавливать флаг, указывающий, что Microsoft Word Удалит всю информацию о пользователе из комментариев, изменений и свойств документа при сохранении документа.

Следующий пример кода показывает, как удалить личную информацию:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

Установка этой опции фактически не удаляет личную информацию при обработке документа. Aspose.Words и затрагивает только Microsoft Word поведение.

{{% /alert %}}

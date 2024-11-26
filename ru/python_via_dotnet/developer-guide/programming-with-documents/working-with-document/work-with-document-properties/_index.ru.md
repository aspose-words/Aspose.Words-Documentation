---
title: Работа со свойствами документа
second_title: Aspose.Words для Python via .NET
articleTitle: Работа со свойствами документа
linktitle: Работа со свойствами документа
description: "Aspose.Words для Python позволяет сохранять некоторую полезную информацию о вашем документе, такую как API и номер версии или дата авторизации, во встроенных или пользовательских свойствах документа."
type: docs
weight: 10
url: /ru/python-net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Свойства документа позволяют сохранить некоторую полезную информацию о вашем документе. Эти свойства можно разделить на две группы:

* Системные или встроенные, содержащие такие значения, как название документа, имя автора, статистика документа и другие.
* Определяемые пользователем или пользовательские, предоставляемые в виде пар имя-значение, где пользователь может определить как имя, так и значение.

Полезно знать, что информация о API и номере версии записывается непосредственно в выходные документы. Например, при преобразовании документа в PDF, Aspose.Words заполняет поле "Приложение" значением "Aspose.Words", а поле "Производитель PDF" - значением "Aspose.Words для .NET YY.M.N", где *YY.M.N* это версия Aspose.Words, используемая для преобразования. Дополнительные сведения см. в разделе [Название генератора или производителя, указанное в выходных документах](/words/python-net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Обратите внимание, что вы можете **cannot direct** Aspose.Words изменить или удалить эту информацию из выходных документов.

{{% /alert %}}

## Доступ к свойствам документа

Чтобы получить доступ к свойствам документа в Aspose.Words, используйте:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) для получения встроенных свойств.

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) для получения пользовательских свойств.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) и [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) представляют собой коллекции объектов [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/). Эти объекты могут быть получены с помощью свойства indexer по имени или по индексу.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) дополнительно предоставляет доступ к свойствам документа с помощью набора введенных свойств, которые возвращают значения соответствующего типа. [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) позволяет добавлять или удалять свойства документа из документа.

Класс [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) позволяет получить имя, значение и тип свойства документа. [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) возвращает объект, но существует набор методов, позволяющих преобразовать значение свойства в определенный тип. После того, как вы узнаете, к какому типу относится свойство, вы можете использовать один из методов **DocumentProperty.to_XXX**, таких как **DocumentProperty.\_\_str\_\_** и [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/), чтобы получить значение соответствующего типа.

В следующем примере кода показано, как перечислить все встроенные и пользовательские свойства в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

В Microsoft Word вы можете получить доступ к свойствам документа, используя меню "Файл → Свойства".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-1.png" style="width:400px"/>

## Добавление или удаление свойств документа

Вы не можете добавлять или удалять встроенные свойства документа, используя Aspose.Words. Вы можете только изменять или обновлять их значения.

Чтобы добавить пользовательские свойства документа с помощью Aspose.Words, используйте метод [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/), передав имя нового свойства и значение соответствующего типа. Метод возвращает только что созданный объект [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/).

Чтобы удалить пользовательские свойства, используйте метод [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/), передав ему имя свойства для удаления, или метод [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/), чтобы удалить свойство по индексу. Вы также можете удалить все свойства, используя метод [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/).

Следующий пример кода проверяет, существует ли в документе пользовательское свойство с заданным именем, и добавляет еще несколько пользовательских свойств документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

В следующем примере кода показано, как удалить пользовательское свойство документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## Обновление встроенных свойств документа

Aspose.Words не обновляет свойства документа автоматически, как это происходит с некоторыми свойствами Microsoft Word, но предоставляет метод для обновления некоторых статистических встроенных свойств документа. Вызовите метод [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/) для пересчета и обновления следующих свойств:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## Создайте новое пользовательское свойство, связанное с контентом

Aspose.Words предоставляет метод [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) для создания нового пользовательского свойства документа, связанного с содержимым. Это свойство возвращает только что созданный объект свойств или значение null, если значение **link_source** недопустимо.

В следующем примере кода показано, как настроить ссылку на пользовательское свойство:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## Получение переменных документа

Вы можете получить набор переменных документа, используя свойство [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/). Имена и значения переменных являются строками.

В следующем примере кода показано, как добавлять переменные документа и получать к ним доступ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Удалить личную информацию из документа

Если вы хотите поделиться документом Word с другими пользователями, вы можете удалить личную информацию, такую как имя автора и компания. Для этого используйте свойство [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/), чтобы установить флаг, указывающий на то, что Microsoft Word удалит всю пользовательскую информацию из комментариев, правок и свойств документа при сохранении документа.

В следующем примере кода показано, как удалить личную информацию:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

Установка этого параметра фактически не приводит к удалению личной информации при обработке документа в Aspose.Words и влияет только на поведение Microsoft Word.

{{% /alert %}}

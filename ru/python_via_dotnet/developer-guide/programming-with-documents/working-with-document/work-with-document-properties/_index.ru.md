---
title: Работа со свойствами документа
second_title: Aspose.Words для Python via .NET
articleTitle: Работа со свойствами документа
linktitle: Работа со свойствами документа
description: "Aspose.Words для Python позволяет хранить некоторую полезную информацию о вашем документе, например API и номер версии или авторизованный Date, во встроенных или настраиваемых свойствах документа."
type: docs
weight: 10
url: /ru/python-net/work-with-document-properties/
---

Свойства документа позволяют хранить некоторую полезную информацию о вашем документе. Эти свойства можно разделить на две группы:

* Системные или встроенные функции, содержащие такие значения, как название документа, имя автора, статистика документа и другие.
* Определяемые пользователем или пользовательские, предоставляются в виде пар имя-значение, где пользователь может определить как имя, так и значение.

Полезно знать, что информация о API и номере версии записывается непосредственно в выходные документы. Например, при преобразовании документа в PDF Aspose.Words заполняет поле "Приложение" значением "Aspose.Words", а поле "Производитель PDF" значением "Aspose.Words для .NET YY.MN", где *YY.M.N* — это версия Aspose.Words, использованная для преобразования.. Подробнее см. [Имя генератора или производителя, включенное в выходные документы](/words/ru/python-net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Обратите внимание, что вам нужно **не могу направить** Aspose.Words изменить или удалить эту информацию из выходных документов.

{{% /alert %}}

## Доступ к свойствам документа

Для доступа к свойствам документа в Aspose.Words используйте:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) для получения встроенных свойств.

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) для получения пользовательских свойств.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) и [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) — коллекции из [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) объектов. Эти объекты можно получить через свойство indexer по имени или по индексу.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) дополнительно обеспечивает доступ к свойствам документа через набор введенных свойств, которые возвращают значения соответствующего типа. [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) позволяют добавлять или удалять свойства документа из документа.

Класс [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) позволяет получить имя, значение и тип свойства документа. [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) возвращает объект, но существует набор методов, позволяющих преобразовать значение свойства в определенный тип. После того, как вы узнаете, к какому типу относится свойство, вы можете использовать один из методов **DocumentProperty.to_XXX**, например **DocumentProperty.\_\_str\_\_** и [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/), для получения значения соответствующего типа.

В следующем примере кода показано, как перечислить все встроенные и настраиваемые свойства в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

В Microsoft Word доступ к свойствам документа можно получить с помощью меню "Файл → Свойства".

<img src="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" alt="работа по получению документа-1.png" style="width:400px"/>

## Добавить или удалить свойства документа

Вы не можете добавлять или удалять встроенные свойства документа с помощью Aspose.Words. Вы можете только изменять или обновлять их значения.

Чтобы добавить пользовательские свойства документа с номером Aspose.Words, используйте метод [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/), передав новое имя свойства и значение соответствующего типа. Метод возвращает вновь созданный объект [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/).

Чтобы удалить пользовательские свойства, используйте метод [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/), передав ему имя удаляемого свойства, или метод [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/), чтобы удалить свойство по индексу. Вы также можете удалить все свойства, используя метод [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/).

В следующем примере кода проверяется, существует ли в документе настраиваемое свойство с заданным именем, и добавляются еще несколько настраиваемых свойств документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

В следующем примере кода показано, как удалить пользовательское свойство документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## Обновить встроенные свойства документа

Aspose.Words не обновляет свойства документа автоматически, как Microsoft Word, но предоставляет метод обновления некоторых статистических встроенных свойств документа. Вызовите метод [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/), чтобы пересчитать и обновить следующие свойства:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## Создайте новое пользовательское свойство, связанное с контентом

Aspose.Words предоставляет метод [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) для создания нового настраиваемого свойства документа, связанного с содержимым. Это свойство возвращает вновь созданный объект свойства или значение NULL, если **ссылка_источник** недействителен.

В следующем примере кода показано, как настроить ссылку на настраиваемое свойство:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## Получить переменные документа

Вы можете получить коллекцию переменных документа, используя свойство [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/). Имена и значения переменных являются строками.

В следующем примере кода показано, как добавлять переменные документа и получать к ним доступ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Удалить личную информацию из документа

Если вы хотите поделиться документом Word с другими людьми, вы можете удалить личную информацию, такую как имя автора и компания. Для этого используйте свойство [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/), чтобы установить флаг, указывающий, что Microsoft Word удалит всю информацию о пользователе из комментариев, редакций и свойств документа при сохранении документа.

В следующем примере кода показано, как удалить личную информацию:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

Установка этого параметра фактически не удаляет личную информацию при обработке документа в Aspose.Words и влияет только на поведение Microsoft Word.

{{% /alert %}}
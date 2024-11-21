---
title: Работа со свойствами документов в Java
second_title: Aspose.Words для Java
articleTitle: Работа с документами собственности
linktitle: Работа с документами собственности
description: "Aspose.Words для Java позволяет хранить полезную информацию о вашем документе, например, API номер версии или авторизованный Date, Встроенные или пользовательские свойства документов."
type: docs
weight: 10
url: /ru/java/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Свойства документов позволяют хранить полезную информацию о вашем документе. Эти свойства можно разделить на две группы:

* Система или встроенная система, которая содержит такие значения, как название документа, имя автора, статистика документов и другие.
* Пользователь-определяемый или пользовательский, предоставляемый в виде пар имён-значений, где пользователь может определить как имя, так и значение.

Полезно знать, что информация о API Номер версии пишется непосредственно для вывода документов. Например, при конвертации документа в PDF, Aspose.Words заполняет поле "Приложение" на "Aspose.Words", а поле "PDF Producer" с "Aspose.Words для Java YY.M.N", где *YY.M.N* является версия Aspose.Words Используется для конверсии. Более подробно см. [Имя генератора или производителя, включенное в исходные документы](/words/ru/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Заметьте, что вы **не может быть прямым** Aspose.Words изменить или удалить эту информацию из выходных документов.

{{% /alert %}}

## Свойства документов Access

Доступ к свойствам документов в Aspose.Words использовать:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) Для получения встроенных свойств.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) Для получения пользовательских свойств.

**BuiltInDocumentProperties** и **CustomDocumentProperties** являются коллекциями [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) объекты. Эти объекты могут быть получены через свойство индексатора по имени или по индексу.

**BuiltInDocumentProperties** дополнительно обеспечивает доступ к свойствам документа через набор введенных свойств, возвращающих значения соответствующего типа. **CustomDocumentProperties** Возможность добавлять или удалять свойства документа из документа.

The [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) Класс позволяет получить имя, стоимость и тип документа собственности. [Значение]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value) возвращает объект, но существует набор методов, позволяющих получить значение свойства, преобразованное в конкретный тип. После того, как вы узнаете, какой тип собственности, вы можете использовать один из {0} методов, таких как {1}[Стринг]](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) и **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), Чтобы получить значение соответствующего типа.

Следующий пример кода показывает, как перечислить все встроенные и пользовательские свойства в документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

В Microsoft Word, Вы можете получить доступ к свойствам документов, используя меню "Файл → Свойства".

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Добавить или удалить свойства документа

Вы не можете добавлять или удалять встроенные свойства документа Aspose.Words. Вы можете изменить или обновить их ценности.

Добавление свойств пользовательского документа с Aspose.Words, использовать [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) метод, проходящий новое наименование имущества и значение соответствующего типа. Метод возвращает вновь созданный **DocumentProperty** объект.

Чтобы удалить пользовательские свойства, используйте [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) способ, передавая ему название собственности для удаления, или [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) Способ удаления имущества по индексу. Вы также можете удалить все свойства, используя [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) метод.

Следующий пример кода проверяет, существует ли в документе пользовательское свойство с заданным именем, и добавляет еще несколько свойств пользовательского документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Следующий пример кода показывает, как удалить свойство пользовательского документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Обновление встроенных свойств документов

Aspose.Words не обновляет автоматически свойства документов, поскольку Microsoft Word Он делает это с некоторыми свойствами, но предоставляет метод обновления некоторых свойств статистического встроенного документа. Звони. [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) Способ пересчета и обновления следующих свойств:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Создайте новую пользовательскую собственность, связанную с контентом

Aspose.Words обеспечивает [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) Способ создания нового пользовательского свойства документа, связанного с контентом. Это свойство возвращает вновь созданный объект недвижимости или аннулирует, если [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) Это недействительно.

Следующий пример кода показывает, как настроить ссылку на пользовательское свойство:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Получить переменные документы

Вы можете получить набор переменных документов, используя [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) собственность. Переменные имена и значения - это строки.

Следующий пример кода показывает, как перечислить переменные документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Удалить личную информацию из документа

Если вы хотите поделиться документом Word с другими людьми, вы можете удалить личную информацию, такую как имя автора и компания. Для этого используют [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) право устанавливать флаг, указывающий, что Microsoft Word Удалит всю информацию о пользователе из комментариев, изменений и свойств документа при сохранении документа.

{{% alert color="primary" %}}

Установка этой опции фактически не удаляет личную информацию при обработке документа. Aspose.Words и затрагивает только Microsoft Word поведение.

{{% /alert %}}

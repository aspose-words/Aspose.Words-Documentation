---
title: Работа со свойствами документа в Java
second_title: Aspose.Words для Java
articleTitle: Работа со свойствами документа
linktitle: Работа со свойствами документа
description: "Aspose.Words для Java позволяет сохранять некоторую полезную информацию о вашем документе, такую как API и номер версии или дата авторизации, во встроенных или пользовательских свойствах документа."
type: docs
weight: 10
url: /ru/java/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Свойства документа позволяют сохранить некоторую полезную информацию о вашем документе. Эти свойства можно разделить на две группы:

* Системные или встроенные, содержащие такие значения, как название документа, имя автора, статистика документа и другие.
* Определяемые пользователем или пользовательские, предоставляемые в виде пар имя-значение, где пользователь может определить как имя, так и значение.

Полезно знать, что информация о API и номере версии записывается непосредственно в выходные документы. Например, при преобразовании документа в PDF, Aspose.Words заполняет поле "Приложение" значением "Aspose.Words", а поле "Производитель PDF" - значением "Aspose.Words для Java YY.M.N", где *YY.M.N* это версия Aspose.Words, используемая для преобразования. Дополнительные сведения см. в разделе [Название генератора или производителя, указанное в выходных документах](/words/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Обратите внимание, что вы можете **cannot direct** Aspose.Words изменить или удалить эту информацию из выходных документов.

{{% /alert %}}

## Доступ к свойствам документа

Чтобы получить доступ к свойствам документа в Aspose.Words, используйте:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) для получения встроенных свойств.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) для получения пользовательских свойств.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

Класс [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) позволяет получить имя, значение и тип свойства документа. [Значение]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value) возвращает объект, но существует набор методов, позволяющих преобразовать значение свойства в определенный тип. После того, как вы узнаете, к какому типу относится свойство, вы можете использовать один из методов **DocumentProperty.ToXXX**, например **DocumentProperty.**[ToString](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) и **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), чтобы получить значение соответствующего типа.

В следующем примере кода показано, как перечислить все встроенные и пользовательские свойства в документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

В Microsoft Word вы можете получить доступ к свойствам документа, используя меню "Файл → Свойства".

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Добавление или удаление свойств документа

Вы не можете добавлять или удалять встроенные свойства документа, используя Aspose.Words. Вы можете только изменять или обновлять их значения.

Чтобы добавить пользовательские свойства документа с помощью Aspose.Words, используйте метод [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean), передав имя нового свойства и значение соответствующего типа. Метод возвращает только что созданный объект **DocumentProperty**.

Чтобы удалить пользовательские свойства, используйте метод [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String), передав ему имя свойства для удаления, или метод [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int), чтобы удалить свойство по индексу. Вы также можете удалить все свойства, используя метод [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear).

Следующий пример кода проверяет, существует ли в документе пользовательское свойство с заданным именем, и добавляет еще несколько пользовательских свойств документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

В следующем примере кода показано, как удалить пользовательское свойство документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Обновление встроенных свойств документа

Aspose.Words не обновляет свойства документа автоматически, как это происходит с некоторыми свойствами Microsoft Word, но предоставляет метод для обновления некоторых статистических встроенных свойств документа. Вызовите метод [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) для пересчета и обновления следующих свойств:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Создайте новое пользовательское свойство, связанное с контентом

Aspose.Words предоставляет метод [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) для создания нового пользовательского свойства документа, связанного с содержимым. Это свойство возвращает вновь созданный объект свойств или значение null, если значение [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) недопустимо.

В следующем примере кода показано, как настроить ссылку на пользовательское свойство:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Получение переменных документа

Вы можете получить набор переменных документа, используя свойство [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables). Имена и значения переменных являются строками.

В следующем примере кода показано, как перечислять переменные документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Удалить личную информацию из документа

Если вы хотите поделиться документом Word с другими пользователями, вы можете удалить личную информацию, такую как имя автора и компания. Для этого используйте свойство [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation), чтобы установить флаг, указывающий на то, что Microsoft Word удалит всю пользовательскую информацию из комментариев, правок и свойств документа при сохранении документа.

{{% alert color="primary" %}}

Установка этого параметра фактически не приводит к удалению личной информации при обработке документа в Aspose.Words и влияет только на поведение Microsoft Word.

{{% /alert %}}

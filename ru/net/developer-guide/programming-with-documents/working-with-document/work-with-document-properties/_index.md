---
title: Работа со свойствами документа в C#
second_title: Aspose.Words для .NET
articleTitle: Работа со свойствами документа
linktitle: Работа со свойствами документа
description: "Aspose.Words для .NET позволяет хранить некоторую полезную информацию о вашем документе, например API и номер версии или авторизованный Date, во встроенных или настраиваемых свойствах документа с использованием C#."
type: docs
weight: 10
url: /ru/net/work-with-document-properties/
---

Свойства документа позволяют хранить некоторую полезную информацию о вашем документе. Эти свойства можно разделить на две группы:

* Системные или встроенные функции, содержащие такие значения, как название документа, имя автора, статистика документа и другие.
* Определяемые пользователем или пользовательские, предоставляются в виде пар имя-значение, где пользователь может определить как имя, так и значение.

Полезно знать, что информация о API и номере версии записывается непосредственно в выходные документы. Например, при преобразовании документа в PDF Aspose.Words заполняет поле "Приложение" значением "Aspose.Words", а поле "Производитель PDF" значением "Aspose.Words для .NET YY.MN", где *YY.M.N* — это версия Aspose.Words, использованная для преобразования.. Подробнее см. [Имя генератора или производителя, включенное в выходные документы](/words/ru/net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Обратите внимание, что вам нужно **не могу направить** Aspose.Words изменить или удалить эту информацию из выходных документов.

{{% /alert %}}

## Доступ к свойствам документа

Для доступа к свойствам документа в Aspose.Words используйте:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/builtindocumentproperties/) для получения встроенных свойств.

* [CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/customdocumentproperties/) для получения пользовательских свойств.

**BuiltInDocumentProperties** и **CustomDocumentProperties** — это коллекции из [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) объектов. Эти объекты можно получить через свойство indexer по имени или по индексу.

**BuiltInDocumentProperties** дополнительно обеспечивает доступ к свойствам документа через набор введенных свойств, которые возвращают значения соответствующего типа. **CustomDocumentProperties** позволяют добавлять или удалять свойства документа из документа.

Класс [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) позволяет получить имя, значение и тип свойства документа. [Value](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/value/) возвращает объект, но существует набор методов, позволяющих преобразовать значение свойства в определенный тип. После того, как вы узнаете, к какому типу относится свойство, вы можете использовать один из методов **DocumentProperty.ToXXX**, например **DocumentProperty.**[ToString](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/tostring/) и **DocumentProperty.**[ToInt](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/toint/), для получения значения соответствующего типа.

В следующем примере кода показано, как перечислить все встроенные и настраиваемые свойства в документе:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

В Microsoft Word доступ к свойствам документа можно получить с помощью меню "Файл → Свойства".

<img src="/words/net/work-with-document-properties/work-with-document-properties-1.png" alt="работа по документу-1.png" style="width:400px"/>

## Добавить или удалить свойства документа

Вы не можете добавлять или удалять встроенные свойства документа с помощью Aspose.Words. Вы можете только изменять или обновлять их значения.

Чтобы добавить пользовательские свойства документа с номером Aspose.Words, используйте метод [Add](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/add/#add/), передав имя нового свойства и значение соответствующего типа. Метод возвращает вновь созданный объект **DocumentProperty**.

Чтобы удалить пользовательские свойства, используйте метод [Remove](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/), передав ему имя удаляемого свойства, или метод [RemoveAt](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/at), чтобы удалить свойство по индексу. Вы также можете удалить все свойства, используя метод [Clear](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/clear/).

В следующем примере кода проверяется, существует ли в документе настраиваемое свойство с заданным именем, и добавляются еще несколько настраиваемых свойств документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

В следующем примере кода показано, как удалить пользовательское свойство документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## Обновить встроенные свойства документа

Aspose.Words не обновляет свойства документа автоматически, как это делает Microsoft Word с некоторыми свойствами, но предоставляет метод обновления некоторых статистических встроенных свойств документа. Вызовите метод [UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/updatewordcount/#updatewordcount/), чтобы пересчитать и обновить следующие свойства:

* [Characters](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lines/)

## Создайте новое пользовательское свойство, связанное с контентом

Aspose.Words предоставляет метод [AddLinkToContent](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) для создания нового настраиваемого свойства документа, связанного с содержимым. Это свойство возвращает вновь созданный объект свойства или значение NULL, если [LinkSource](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/linksource/) недействителен.

В следующем примере кода показано, как настроить ссылку на настраиваемое свойство:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## Получить переменные документа

Вы можете получить коллекцию переменных документа, используя свойство [Variables](https://reference.aspose.com/words/net/aspose.words/document/variables/). Имена и значения переменных являются строками.

В следующем примере кода показано, как перечислять переменные документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Удалить личную информацию из документа

Если вы хотите поделиться документом Word с другими людьми, вы можете удалить личную информацию, такую как имя автора и компания. Для этого используйте свойство [RemovePersonalInformation](https://reference.aspose.com/words/net/aspose.words/document/removepersonalinformation/), чтобы установить флаг, указывающий, что Microsoft Word удалит всю информацию о пользователе из комментариев, редакций и свойств документа при сохранении документа.

В следующем примере кода показано, как удалить личную информацию:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

Установка этого параметра фактически не удаляет личную информацию при обработке документа в Aspose.Words и влияет только на поведение Microsoft Word.

{{% /alert %}}

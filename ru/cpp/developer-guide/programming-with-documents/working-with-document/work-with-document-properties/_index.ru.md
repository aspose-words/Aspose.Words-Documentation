---
title: Работа со свойствами документа на C++
second_title: Aspose.Words для C++
articleTitle: Работа со свойствами документа
linktitle: Работа со свойствами документа
description: "Aspose.Words для C++ позволяет сохранять некоторую полезную информацию о вашем документе, такую как API, номер версии или дата авторизации, во встроенных или пользовательских свойствах документа."
type: docs
weight: 10
url: /ru/cpp/work-with-document-properties/
---

Свойства документа позволяют сохранить некоторую полезную информацию о вашем документе. Эти свойства можно разделить на две группы:

* Системные или встроенные, содержащие такие значения, как название документа, имя автора, статистика документа и другие.
* Определяемые пользователем или пользовательские, предоставляемые в виде пар имя-значение, где пользователь может определить как имя, так и значение.

Полезно знать, что информация об API и номере версии напрямую записывается в выходные документы. Например, при преобразовании документа в PDF, Aspose.Words заполняет поле "Приложение" значением "Aspose.Words", а поле "Производитель PDF" - значением "Aspose.Words для C++ YY.M.N", где *YY.M.N* - это версия Aspose.Words, используемая для преобразования. Более подробную информацию смотрите в разделе [Название генератора или производителя, указанное в выходных документах](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Обратите внимание, что вы можете **cannot direct** Aspose.Words изменить или удалить эту информацию из выходных документов.

{{% /alert %}}

## Доступ к свойствам документа

Чтобы получить доступ к свойствам документа в Aspose.Words, используйте:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/) для получения встроенных свойств.

* [CustomDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/) для получения пользовательских свойств.

**Встроенные свойства документа**

**Встроенные свойства документа**

Класс [DocumentProperty](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/) позволяет получить имя, значение и тип свойства документа. [Value](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_value/) возвращает объект, но существует набор методов, позволяющих преобразовать значение свойства в определенный тип. После того, как вы узнаете, к какому типу относится свойство, вы можете использовать один из методов **DocumentProperty.ToXXX**, таких как **DocumentProperty.**[ToString](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/tostring/) и **DocumentProperty.**[ToInt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/toint/), чтобы получить значение соответствующего типа.

В следующем примере кода показано, как перечислить все встроенные и пользовательские свойства в документе:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

В Microsoft Word вы можете получить доступ к свойствам документа, используя меню "Файл → Свойства".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-cpp_1.png" style="width:400px"/>

## Добавление или удаление свойств документа

Вы не можете добавлять или удалять встроенные свойства документа, используя Aspose.Words. Вы можете только изменять или обновлять их значения.

Чтобы добавить пользовательские свойства документа с помощью Aspose.Words, используйте метод [Add](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/add/), передав имя нового свойства и значение соответствующего типа. Метод возвращает только что созданный объект **DocumentProperty**.

Чтобы удалить пользовательские свойства, используйте метод [Remove](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/remove/), передав ему имя свойства для удаления, или метод [RemoveAt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/removeat/), чтобы удалить свойство по индексу. Вы также можете удалить все свойства, используя метод [Clear](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/clear/).

Следующий пример кода проверяет, существует ли в документе пользовательское свойство с заданным именем, и добавляет еще несколько пользовательских свойств документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

В следующем примере кода показано, как удалить пользовательское свойство документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## Обновление встроенных свойств документа

Aspose.Words не обновляет свойства документа автоматически, как это делает Microsoft Word с некоторыми свойствами, но предоставляет метод для обновления некоторых статистических встроенных свойств документа. Вызовите метод [UpdateWordCount](https://reference.aspose.com/words/cpp/aspose.words/document/updatewordcount/) для пересчета и обновления следующих свойств:

* [Characters](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characterswithspaces/)
* [Words](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_words/)
* [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_paragraphs/)
* [Lines](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lines/)

## Создайте новое пользовательское свойство, связанное с контентом

Aspose.Words предоставляет метод [AddLinkToContent](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/addlinktocontent/) для создания нового пользовательского свойства документа, связанного с содержимым. Это свойство возвращает только что созданный объект свойств или значение null, если значение [LinkSource](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_linksource/) недопустимо.

В следующем примере кода показано, как настроить ссылку на пользовательское свойство:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## Получение переменных документа

Вы можете получить набор переменных документа, используя свойство [Variables](https://reference.aspose.com/words/cpp/aspose.words/document/get_variables/). Имена и значения переменных являются строками.

В следующем примере кода показано, как перечислять переменные документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Удалить личную информацию из документа

Если вы хотите поделиться документом Word с другими пользователями, вы можете удалить личную информацию, такую как имя автора и компания. Для этого используйте свойство [RemovePersonalInformation](https://reference.aspose.com/words/cpp/aspose.words/document/get_removepersonalinformation/), чтобы установить флажок, указывающий на то, что Microsoft Word удалит всю пользовательскую информацию из комментариев, изменений и свойств документа при сохранении документа.

В следующем примере кода показано, как удалить личную информацию:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

Установка этого параметра фактически не приводит к удалению личной информации при обработке документа в Aspose.Words и влияет только на поведение Microsoft Word.

{{% /alert %}}

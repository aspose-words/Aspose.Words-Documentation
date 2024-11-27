---
title: Робота з властивостями документа в C++
second_title: Aspose.Words для C++
articleTitle: Робота з властивостями документа
linktitle: Робота з властивостями документа
description: "Aspose.Words для C++ дозволяє зберігати корисну інформацію про ваш документ, наприклад API та номер версії або дату авторизації, у вбудованих або користувацьких властивостях документа."
type: docs
weight: 10
url: /uk/cpp/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Властивості документа дозволяють зберегти деяку корисну інформацію про ваш документ. Ці властивості можна розділити на дві групи:

* Системні або вбудовані, що містять такі значення, як назва документа, ім'я автора, статистика документа та інші.
* Визначені користувачем або призначені для користувача, що надаються у вигляді пар ім'я-значення, де користувач може визначити як ім'я, так і значення.

Корисно знати, що інформація про API та номер версії записується безпосередньо у вихідні документи. Наприклад, при перетворенні документа в PDF, Aspose.Words заповнює поле "додаток" значенням "Aspose.Words", а поле "виробник PDF" - значенням "Aspose.Words для C++ YY.M. N", де *YY.M.N* - це версія Aspose.Words, яка використовується для перетворення. Додаткові відомості див. в розділі [Назва генератора або виробника, зазначена у вихідних документах](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Зверніть увагу, що ви можете **cannot direct** Aspose.Words змінити або видалити цю інформацію з вихідних документів.

{{% /alert %}}

## Доступ до властивостей документа

Щоб отримати доступ до властивостей документа в Aspose.Words, використовуйте:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/) для отримання вбудованих властивостей.

* [CustomDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/) для отримання користувацьких властивостей.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

Клас [DocumentProperty](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/) дозволяє отримати ім'я, значення і тип властивості документа. [Value](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_value/) повертає об'єкт, але існує набір методів, які дозволяють перетворити значення властивості на певний тип. Після того, як ви дізнаєтесь, до якого типу належить властивість, ви можете скористатися одним із методів **DocumentProperty.ToXXX**, таких як **DocumentProperty.**[ToString](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/tostring/) та **DocumentProperty.**[ToInt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/toint/), щоб отримати значення відповідного типу.

Наступний приклад коду показує, як перерахувати всі вбудовані та користувацькі властивості в документі:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону для цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

У Microsoft Word ви можете отримати доступ до властивостей документа за допомогою меню "Файл → Властивості".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-cpp_1.png" style="width:400px"/>

## Додавання або видалення властивостей документа

Ви не можете додавати або видаляти вбудовані властивості документа за допомогою Aspose.Words. Ви можете лише змінювати або оновлювати їх значення.

Щоб додати власні властивості документа за допомогою Aspose.Words, використовуйте метод [Add](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/add/), передавши назву нової властивості та значення відповідного типу. Метод повертає щойно створений об'єкт **DocumentProperty**.

Щоб видалити власні властивості, використовуйте метод [Remove](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/remove/), передавши йому ім'я властивості для видалення, або метод [RemoveAt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/removeat/), щоб видалити властивість за індексом. Ви також можете видалити всі властивості, використовуючи метод [Clear](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/clear/).

Наступний приклад коду перевіряє, чи існує в документі властивість користувача із заданим іменем, і додає ще кілька властивостей користувача документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону для цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Наступний приклад коду показує, як видалити властивість користувача документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## Оновлення вбудованих властивостей документа

Aspose.Words не оновлює властивості документа автоматично, як це відбувається з деякими властивостями Microsoft Word, але надає метод оновлення деяких статистичних вбудованих властивостей документа. Викличте метод [UpdateWordCount](https://reference.aspose.com/words/cpp/aspose.words/document/updatewordcount/) для перерахунку та оновлення наступних властивостей:

* [Characters](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characterswithspaces/)
* [Words](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_words/)
* [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_paragraphs/)
* [Lines](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lines/)

## Створіть нову властивість користувача, пов'язану з вмістом

Aspose.Words надає метод [AddLinkToContent](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/addlinktocontent/) для створення нового користувацького властивості документа, пов'язаного з вмістом. Ця властивість повертає щойно створений об'єкт властивостей або значення null, якщо значення [LinkSource](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_linksource/) недійсне.

Наступний приклад коду показує, як налаштувати посилання на властивість користувача:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## Отримання змінних документа

Ви можете отримати набір змінних документа, використовуючи властивість [Variables](https://reference.aspose.com/words/cpp/aspose.words/document/get_variables/). Імена та значення змінних є рядками.

Наступний приклад коду показує, як перераховувати змінні документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону для цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Видалити особисту інформацію з документа

Якщо ви хочете поділитися документом Word з іншими користувачами, Ви можете видалити особисту інформацію, таку як ім'я автора та компанія. Для цього використовуйте властивість [RemovePersonalInformation](https://reference.aspose.com/words/cpp/aspose.words/document/get_removepersonalinformation/), щоб встановити прапор, який вказує на те, що Microsoft Word видалить всю інформацію Користувача з коментарів, редагувань та властивостей документа під час збереження документа.

Наступний приклад коду показує, як видалити особисту інформацію:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

Встановлення цього параметра фактично не видаляє особисту інформацію під час обробки документа в Aspose.Words і впливає лише на поведінку Microsoft Word.

{{% /alert %}}

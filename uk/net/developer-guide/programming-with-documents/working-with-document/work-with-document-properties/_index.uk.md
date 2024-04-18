---
title: Робота з документами Властивості в C#
second_title: Aspose.Words для .NET
articleTitle: Робота з документами
linktitle: Робота з документами
description: "Aspose.Words для .NET дозволяє зберігати інформацію про ваш документ, такі як API та реєстраційний номер або авторизація Date, в вбудованих або користувальницьких документах C#й"
type: docs
weight: 10
url: /uk/net/work-with-document-properties/
---

Властивості документів дозволяють зберігати інформацію про ваш документ. Ці властивості можна розділити на дві групи:

* Система або вбудований, що містить значення, такі як назва документа, назву автора, статистика документів та інші.
* Ім'я * Визначені або користувацькі, надані як пари з іменем, де користувач може визначити як ім'я та значення.

Корисна інформація API і реєстраційний номер безпосередньо письмовий на вихідні документи. Наприклад, при конвертації документа в PDF, Aspose.Words заповнює поле "Аплікація" з "Aspose.Words", і поле "PDF Producer" з "Aspose.Words для .NET YY.M.N, де *YY.M.N* - версія Aspose.Words використовується для перетворення. Докладніше [Генератор або виробник ім'я включені в вихідні документи](/words/uk/net/generator-or-producer-name-included-in-output-documents/)й

{{% alert color="primary" %}}

Зверніть увагу, що ви **не існує** Aspose.Words змінити або видалити цю інформацію з вихідних документів.

{{% /alert %}}

## Доступ до документів

Доступ до властивостей документа в Aspose.Words використання:

* Ім'я * [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/builtindocumentproperties/) для отримання вбудованих властивостей.

* Ім'я * [CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/customdocumentproperties/) для отримання індивідуальних властивостей.

**BuiltInDocumentProperties** і **CustomDocumentProperties** колекції [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) об'єкти. Ці об'єкти можна отримати за допомогою індексатора за назвою або за індексом.

**BuiltInDocumentProperties** додатково надає доступ до властивостей документів за допомогою набору введених властивостей, що повертає значення відповідного типу. **CustomDocumentProperties** увімкніть додавання або видалення властивостей документів з документа.

Про нас [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) клас дозволяє отримати ім'я, значення та тип майна документа. [Value](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/value/) повертає об'єкт, але є набором методів, що дозволяють вам отримати вартість майна, що перетворюється на конкретний тип. Після того, як ви знаєте, який тип нерухомості є, ви можете використовувати один з **DocumentProperty.ToXXX** методи, такі як **DocumentProperty.**[ToString](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/tostring/) і **DocumentProperty.**[ToInt](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/toint/), отримувати значення відповідного типу.

Приклад коду показує, як об'єднати всі вбудовані та спеціальні властивості в документі:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx)й

{{% /alert %}}

У Microsoft Word, Ви можете отримати доступ до властивостей документів за допомогою меню "Файл → Властивості".

<img src="/words/net/work-with-document-properties/work-with-document-properties-1.png" alt="/words/net/work-with-document-properties/work-with-document-properties-1.png" style="width:400px"/>

## Додавання або видалення властивостей документів

Ви не можете додати або видалити вбудовані властивості документів Aspose.Wordsй Ви можете змінити або оновити свої значення.

Для додавання користувацьких властивостей документів Aspose.Words, використовувати [Add](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/add/#add/) метод, проходячи ім'я нового майна і значення відповідного типу. Спосіб повертає новостворений **DocumentProperty** об'єкт.

Щоб видалити спеціальні властивості, використовуйте [Remove](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/) спосіб, проходячи його назву власності для видалення, або [RemoveAt](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/at) спосіб видалити майно за індексом. Ви також можете видалити всі властивості за допомогою [Clear](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/clear/) метод.

Наприклад, наступний код перевіряє, чи є на замовлення майно з вказаною назвою в документі і додає кілька додаткових властивостей документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx)й

{{% /alert %}}

Приклад коду показує, як видалити користувацький документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## Оновлення вбудованих документів

Aspose.Words не автоматично оновлює властивості документів, як Microsoft Word має деякі властивості, але надає метод оновлення деяких статистичних вбудованих властивостей документа. Дзвоните до [UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/updatewordcount/#updatewordcount/) спосіб перерахувати і оновити наступні властивості:

* [Characters](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lines/)

## Створити новий користувацький контент

Aspose.Words забезпечує [AddLinkToContent](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) метод створення нового користувацького документа, пов'язаного з змістом. Ця властивість повертає новостворений об'єкт нерухомості або null, якщо [LinkSource](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/linksource/) недійсний.

Приклад коду показує, як налаштувати посилання на спеціальне майно:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## Отримати документ, що змінюється

Ви можете отримати збір змінних документів за допомогою [Variables](https://reference.aspose.com/words/net/aspose.words/document/variables/) майно. Змінні імена і значення є рядками.

Приклад коду показує, як об'єднати змінні документу:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx)й

{{% /alert %}}

## Видалити персональну інформацію з документа

Якщо ви хочете поділитися документом Word з іншими людьми, ви можете видалити персональні дані, такі як ім'я автора та компанія. Для цього використовуйте [RemovePersonalInformation](https://reference.aspose.com/words/net/aspose.words/document/removepersonalinformation/) майно для встановлення прапора, що вказує на те, що Microsoft Word Видаліть всю інформацію користувача з коментарів, ревізій та властивостей документів при збереженні документа.

Приклад коду показує, як видалити персональну інформацію:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

Налаштування цього параметра не фактично видаляє персональні дані при обробці документа в Aspose.Words і впливає тільки Microsoft Word поведінка.

{{% /alert %}}

---
title: Робота з документами Властивості в Java
second_title: Aspose.Words для Java
articleTitle: Робота з документами
linktitle: Робота з документами
description: "Aspose.Words для Java дозволяє зберігати інформацію про ваш документ, такі як API і реєстраційний номер або авторизація Date, у вбудованих або користувацьких документооообігах."
type: docs
weight: 10
url: /uk/java/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Властивості документів дозволяють зберігати інформацію про ваш документ. Ці властивості можна розділити на дві групи:

* Система або вбудована, яка містить значення, такі як назва документа, назву автора, статистика документів та інші.
* Ім'я * Визначені або користувацькі, надані як парі з іменем, де користувач може визначити як ім'я та значення.

Корисна інформація API та реєстраційний номер, безпосередньо написаний на вихідні документи. Наприклад, при конвертації документа в PDF, Aspose.Words заповнює поле "Застосування" з "Aspose.Words", і поле "PDF Producer" з "Aspose.Words для Java YY.M.N, де *YY.M.N* - версія Aspose.Words використовується для перетворення. Більш детальна інформація [Генератор або виробник ім'я включені в вихідні документи](/words/uk/java/generator-or-producer-name-included-in-output-documents/)й

{{% alert color="primary" %}}

Зверніть увагу, що ви **не існує** Aspose.Words змінити або видалити цю інформацію з вихідних документів.

{{% /alert %}}

## Доступ до документів

Доступ до властивостей документа в Aspose.Words використання:

* Ім'я * [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) для отримання вбудованих властивостей.

* Ім'я * [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) для отримання індивідуальних властивостей.

**BuiltInDocumentProperties** і **CustomDocumentProperties** колекції [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) об'єкти. Ці об'єкти можна отримати за допомогою індексатора за назвою або за індексом.

**BuiltInDocumentProperties** Додатково надає доступ до властивостей документів за допомогою набору введених властивостей, що повертає значення відповідного типу. **CustomDocumentProperties** увімкніть додавання або видалення властивостей документів з документа.

Про нас [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) клас дозволяє отримати ім'я, значення та тип майна документа. [JavaРеєстрація API Веб-сайт Go1.13.8 Так, як ви, так і ви можете, ви можете зробити це з Java й API[Налаштування]](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) і **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), отримувати значення відповідного типу.

Приклад коду показує, як об'єднати всі вбудовані та спеціальні властивості в документі:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)й

{{% /alert %}}

У Microsoft Word, Ви можете отримати доступ до властивостей документів за допомогою меню "Файл → Властивості".

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Додавання або видалення властивостей документів

Ви не можете додати або видалити вбудовані властивості документів Aspose.Wordsй Ви можете змінити або оновити свої значення.

Для додавання користувацьких властивостей документів Aspose.Words, використовувати [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) метод, проходячи ім'я нового майна і значення відповідного типу. Метод повертає новостворений **DocumentProperty** об'єкт.

Щоб видалити спеціальні властивості, використовуйте [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) спосіб, проходячи його назву власності для видалення, або [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) спосіб видалити майно за індексом. Ви також можете видалити всі властивості за допомогою [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) метод.

Приклад коду перевіряє, чи існує замовна власність з вказаною назвою в документі та додає декілька додаткових властивостей документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)й

{{% /alert %}}

Приклад коду показує, як видалити користувацький документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Оновлення вбудованих документів

Aspose.Words не автоматично оновлює властивості документів, як Microsoft Word має деякі властивості, але надає метод оновлення деяких статистичних вбудованих властивостей документа. Дзвоните до [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) спосіб перерахувати і оновити наступні властивості:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Створити новий користувацький контент

Aspose.Words забезпечує [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) метод створення нового користувацького документа, пов'язаного з змістом. Ця властивість повертає новостворений об'єкт нерухомості або null, якщо [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) недійсний.

Приклад коду показує, як налаштувати посилання на спеціальне майно:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Отримувати варіанти документів

Ви можете отримати збір змінних документів за допомогою [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) майно. Змінні імена і значення є рядками.

Приклад наступного коду показує, як об'єднати зміни документів:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)й

{{% /alert %}}

## Видалити особисту інформацію з документа

Якщо ви хочете поділитися документом Word з іншими людьми, ви можете видалити персональні дані, такі як ім'я автора та компанія. Для цього використовуйте [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) майно для встановлення прапора, що вказує на те, що Microsoft Word Видаліть всю інформацію користувача з коментарів, ревізій та властивостей документів при збереженні документа.

{{% alert color="primary" %}}

Налаштування цього параметра не фактично видаляє персональні дані при обробці документа в Aspose.Words і впливає тільки Microsoft Word поведінка.

{{% /alert %}}

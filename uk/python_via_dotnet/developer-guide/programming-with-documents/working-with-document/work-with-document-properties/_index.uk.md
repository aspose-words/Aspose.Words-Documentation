---
title: Робота з документами
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з документами
linktitle: Робота з документами
description: "Aspose.Words для Python дозволяє зберігати інформацію про ваш документ, такі як API та реєстраційний номер або авторизація Date, у вбудованих або користувацьких документооообігах."
type: docs
weight: 10
url: /uk/python-net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Властивості документів дозволяють зберігати інформацію про ваш документ. Ці властивості можна розділити на дві групи:

* Система або вбудований, що містить значення, такі як назва документа, назву автора, статистика документів та інші.
* Ім'я * Визначені або користувацькі, надані як пари з іменем, де користувач може визначити як ім'я та значення.

Корисна інформація API і реєстраційний номер безпосередньо письмовий на вихідні документи. Наприклад, при конвертації документа в PDF, Aspose.Words заповнює поле "Аплікація" з "Aspose.Words", і поле "PDF Producer" з "Aspose.Words для .NET YY.M.N, де *YY.M.N* - версія Aspose.Words використовується для перетворення. Докладніше [Генератор або виробник ім'я включені в вихідні документи](/words/uk/python-net/generator-or-producer-name-included-in-output-documents/)й

{{% alert color="primary" %}}

Зверніть увагу, що ви **не існує** Aspose.Words змінити або видалити цю інформацію з вихідних документів.

{{% /alert %}}

## Доступ до документів

Доступ до властивостей документа в Aspose.Words використання:

* Ім'я * [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) для отримання вбудованих властивостей.

* Ім'я * [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) для отримання індивідуальних властивостей.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) і [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) колекції [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) об'єкти. Ці об'єкти можна отримати за допомогою індексатора за назвою або за індексом.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) додатково надає доступ до властивостей документів за допомогою набору введених властивостей, що повертає значення відповідного типу. [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) увімкніть додавання або видалення властивостей документів з документа.

Про нас [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) клас дозволяє отримати ім'я, значення та тип майна документа. [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) повертає об'єкт, але є набором методів, що дозволяють вам отримати вартість майна, що перетворюється на конкретний тип. Після того, як ви знаєте, який тип нерухомості є, ви можете використовувати один з **JavaScript licenses API Веб-сайт Go1.13.8** методи, такі як **JavaScript licenses API Веб-сайт Go1.13.8** і [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/), отримувати значення відповідного типу.

Приклад коду показує, як об'єднати всі вбудовані та спеціальні властивості в документі:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx)й

{{% /alert %}}

У Microsoft Word, Ви можете отримати доступ до властивостей документів за допомогою меню "Файл → Властивості".

<img src="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" alt="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" style="width:400px"/>

## Додавання або видалення властивостей документів

Ви не можете додати або видалити вбудовані властивості документів Aspose.Wordsй Ви можете змінити або оновити свої значення.

Для додавання користувацьких властивостей документів Aspose.Words, використовувати [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/) метод, проходячи ім'я нового майна і значення відповідного типу. Спосіб повертає новостворений [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) об'єкт.

Щоб видалити спеціальні властивості, використовуйте [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/) спосіб, проходячи його назву власності для видалення, або [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/) спосіб видалити майно за індексом. Ви також можете видалити всі властивості за допомогою [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/) метод.

Наприклад, наступний код перевіряє, чи є на замовлення майно з вказаною назвою в документі і додає кілька додаткових властивостей документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx)й

{{% /alert %}}

Приклад коду показує, як видалити користувацький документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## Оновлення вбудованих документів

Aspose.Words не автоматично оновлює властивості документів, як Microsoft Word має деякі властивості, але надає метод оновлення деяких статистичних вбудованих властивостей документа. Дзвоните до [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/) спосіб перерахувати і оновити наступні властивості:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## Створити новий користувацький контент

Aspose.Words забезпечує [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) метод створення нового користувацького документа, пов'язаного з змістом. Ця властивість повертає новостворений об'єкт нерухомості або null, якщо **Посилання** недійсний.

Приклад коду показує, як налаштувати посилання на спеціальне майно:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## Отримати документ, що змінюється

Ви можете отримати збір змінних документів за допомогою [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/) майно. Змінні імена і значення є рядками.

Приклад наступного коду показує, як додати і отримати змінну документу:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx)й

{{% /alert %}}

## Видалити персональну інформацію з документа

Якщо ви хочете поділитися документом Word з іншими людьми, ви можете видалити персональні дані, такі як ім'я автора та компанія. Для цього використовуйте [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/) майно для встановлення прапора, що вказує на те, що Microsoft Word Видаліть всю інформацію користувача з коментарів, ревізій та властивостей документів при збереженні документа.

Приклад коду показує, як видалити персональну інформацію:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

Налаштування цього параметра не фактично видаляє персональні дані при обробці документа в Aspose.Words і впливає тільки Microsoft Word поведінка.

{{% /alert %}}

---
title: Робота з полями форми в C++
second_title: Aspose.Words для C++
articleTitle: Робота з полями форми
linktitle: Робота з полями форми
description: "Розуміння особливостей полів форми, робота з полями форми за допомогою C++."
type: docs
weight: 380
url: /uk/cpp/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Документ, що містить поля, що заповнюються, називається формою. Наприклад, у Microsoft Word можна створити реєстраційну форму, яка використовує випадаючі списки, з яких користувачі можуть вибирати записи. Поле форми-це місце, де зберігаються дані певного типу, такі як ім'я чи адреса. Поля форми в Microsoft Word включають введення тексту, Combobox та checkbox.

Ви можете використовувати поля форми у своєму проекті для "спілкування" з користувачами. Наприклад, ви створюєте документ, вміст якого захищений, але для редагування доступні лише поля форми. Користувачі можуть вводити дані в поля форми і відправляти документ. Ваша програма, яка використовує Aspose.Words, може витягувати дані з полів форми та обробляти їх.

Помістити поля форми в документ за допомогою коду нескладно. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) для їх вставки існують спеціальні методи, по одному для кожного типу поля форми. Кожен із методів приймає рядковий параметр, що представляє назву поля форми. Ім'я може бути порожнім рядком. Однак, якщо ви вкажете ім'я для поля форми, то автоматично буде створена закладка з таким же ім'ям.

## Вставка полів форми

Поля форми є окремим випадком полів Word, які дозволяють "взаємодіяти" з користувачем. Поля форми в Microsoft Word включають текстове поле, поле зі списком та checkbox.

**DocumentBuilder**

Наступний приклад коду показує, як вставити поле форми combobox у документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## Отримання полів форми

Набір полів форми представлений класом [FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/), який можна отримати за допомогою властивості [FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/). Це означає, що ви можете отримати поля форми, що містяться в будь-якому вузлі документа, включаючи сам документ.

Наступний приклад коду показує, як отримати набір полів форми:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

Ви можете знайти конкретне поле форми за його індексом або назвою.

Наступний приклад коду показує, як отримати доступ до полів форми:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

Властивості **FormField** дозволяють працювати з назвою, типом та результатом поля форми.

Наступний приклад коду показує, як працювати з іменем, типом та результатом поля форми:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}

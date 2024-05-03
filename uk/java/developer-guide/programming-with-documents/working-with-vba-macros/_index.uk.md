---
title: Робота з VBA Macros в Java
second_title: Aspose.Words для Java
articleTitle: Робота з VBA Macros
linktitle: Робота з VBA Macros
description: "Робота з документами VBA Javaй"
type: docs
weight: 410
url: /uk/java/working-with-vba-macros/
---

Visual Basic для додатків (VBA) Microsoft Word - проста, але потужна мова програмування, яка може бути використана для розширення функціональності. Aspose.Words API надає три класи для доступу до коду VBA:

- У [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) Клас надає доступ до інформації про проект ВБА
- У [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) Клас повертає колекцію модулів проекту ВБА
- У [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) Клас надає доступ до модуля проекту VBA

## Створення проекту VBA

Aspose.Words API забезпечує [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) майно, щоб отримати або встановити VbaProject у документі.

Приклад коду показує, як створити проект VBA та модуль VBA разом з базовими властивостями, наприклад, Ім'я та тип:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Читати Macros

Aspose.Words також надає користувачам можливість читати макроси VBA.

Приклад коду показує, як читати VBA Macros з документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## Модифікувати Macros

Використання Aspose.Words, користувачі можуть змінювати макроси VBA.

Приклад коду показує, як змінити VBA Macros за допомогою [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode) майно:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Клон ВБА Проекти

З Aspose.Words Також можна клонувати проекти ВБА.

Приклад коду показує, як клонувати проект ВБА за допомогою програми [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) майно, що створює копію існуючого проекту:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Клон ВБА Модуль

Ви також можете налаштувати модулі VBA, якщо це необхідно.

Приклад коду показує, як налаштувати модуль VBA за допомогою модуля VBA [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) майно, яке створює копію існуючого проекту

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}

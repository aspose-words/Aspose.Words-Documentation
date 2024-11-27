---
title: Робота з макросами VBA в C++
second_title: Aspose.Words для C++
articleTitle: Робота з макросами VBA
linktitle: Робота з макросами VBA
description: "Робота з проектами документа VBA з використанням C++."
type: docs
weight: 410
url: /uk/cpp/working-with-vba-macros/
timestamp: 2024-01-30-16-22-34
---

Visual Basic для додатків (VBA) для Microsoft Word - це проста, але потужна мова програмування, яку можна використовувати для розширення функціональності. Aspose.Words API надає три класи для отримання доступу до вихідного коду проекту VBA:

- Клас [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/) надає доступ до інформації про проект VBA
- Клас [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/) повертає колекцію модулів проекту VBA
- Клас [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/) надає доступ до модуля проекту VBA

## Створіть проект VBA

Aspose.Words API надає властивість `Document.VbaProject` для отримання або встановлення VbaProject у документі.

Наступний приклад коду показує, як створити проект VBA та модуль VBA разом із основними властивостями, такими як ім'я та тип:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## Читання макросів

Aspose.Words також надає користувачам можливість читати VBA макроси.

Наступний приклад коду показує, як читати макроси VBA з документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## Запис або зміна макросів

Використовуючи Aspose.Words, користувачі можуть змінювати макроси VBA.

Наступний приклад коду показує, як змінити макроси VBA, використовуючи властивість [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## Клонувати проект VBA

За допомогою Aspose.Words також можна клонувати проекти VBA.

Наступний приклад коду показує, як клонувати проект VBA, використовуючи властивість [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/), яка створює копію існуючого проекту:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## Клонувати модуль VBA

При необхідності ви також можете клонувати модулі VBA.

Наступний приклад коду показує, як клонувати модуль VBA, використовуючи властивість [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/), яка створює копію існуючого проекту:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}

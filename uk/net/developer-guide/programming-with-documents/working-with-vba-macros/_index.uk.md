---
title: Робота з VBA Macros в C#
second_title: Aspose.Words для .NET
articleTitle: Робота з VBA Macros
linktitle: Робота з VBA Macros
description: "Робота з документами VBA C#й"
type: docs
weight: 410
url: /uk/net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic для додатків (VBA) Microsoft Word - проста, але потужна мова програмування, яка може бути використана для розширення функціональності. Aspose.Words API надає три класи для доступу до коду VBA:

- У [VBAProject](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/) Клас надає доступ до інформації про проект ВБА
- У [VBAModuleCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbamodulecollection/) Клас повертає колекцію модулів проекту ВБА
- У [VbaModule](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/) Клас надає доступ до модуля проекту VBA
- У [VbaModuleType](https://reference.aspose.com/words/net/aspose.words.vba/vbamoduletype/) анумація визначає типи моделі в проекті VBA. Модуль може бути процедурний модуль, модуль документа, модуль класу або модуль дизайнера

## Створення проекту VBA

Aspose.Words API забезпечує [VbaProject](https://reference.aspose.com/words/net/aspose.words/document/vbaproject/) майно, щоб отримати або встановити VbaProject в документі.

Приклад коду показує, як створити проект VBA та модуль VBA разом з базовими властивостями, наприклад, Ім'я та тип:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## Читати Macros

Aspose.Words також надає користувачам можливість читати макроси VBA.

Приклад коду показує, як читати VBA Macros з документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## Написати або змінити Macros

Використання Aspose.Words, користувачі можуть змінювати макроси VBA.

Приклад коду показує, як змінити VBA Macros за допомогою [SourceCode](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/sourcecode/) майно:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## Клон ВБА Проекти

З Aspose.Words Також можна клонувати проекти ВБА.

Приклад коду показує, як клонувати проект ВБА за допомогою програми [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/clone/) майно, яке створює копію існуючого проекту:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## Клон ВБА Модуль

Ви також можете налаштувати модулі VBA, якщо це необхідно.

Приклад коду показує, як налаштувати модуль VBA за допомогою [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/clone/) майно, яке створює копію існуючого проекту:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## Робота з сертифікатами проекту VBA

Aspose.Words API забезпечує [VbaReferenceCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbareferencecollection/) Клас роботи з VBA Project Посилання, що представляють колекцію довідок проєкту VBA.

Приклад коду показує, як видалити деякі посилання з колекції посилань з проекту VBA:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}

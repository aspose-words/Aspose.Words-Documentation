---
title: Робота з VBA Macros в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з VBA Macros
linktitle: Робота з VBA Macros
description: "Створити, читати, писати, клонувати та керувати макросами ВБА у документі за допомогою Pythonй"
type: docs
weight: 410
url: /uk/python-net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic для додатків (VBA) Microsoft Word - проста, але потужна мова програмування, яка може бути використана для розширення функціональності. Aspose.Words API надає три класи для доступу до коду VBA:

- У [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) Клас надає доступ до інформації про проект ВБА
- У [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) Клас повертає колекцію модулів проекту ВБА
- У [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) Клас надає доступ до модуля проекту VBA
- У [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) анумація визначає типи моделі в проекті VBA. Модуль може бути процедурний модуль, модуль документа, модуль класу або модуль дизайнера

## Створення проекту VBA

Aspose.Words API забезпечує [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) майно, щоб отримати або встановити [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) у документі.

Приклад коду показує, як створити проект VBA та модуль VBA разом з базовими властивостями, наприклад, [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) і [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Читати Macros

Aspose.Words також надає користувачам можливість читати макроси VBA.

Приклад коду показує, як читати VBA Macros з документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## Написати або змінити Macros

Використання Aspose.Words, користувачі можуть змінювати макроси VBA.

Приклад коду показує, як змінити VBA Macros за допомогою [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/) майно:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## Клон ВБА Проекти

З Aspose.Words Також можна клонувати проекти ВБА.

Приклад коду показує, як клонувати проект ВБА за допомогою програми [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) майно, яке створює копію існуючого проекту:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## Клон ВБА Модуль

Ви також можете налаштувати модулі VBA, якщо це необхідно.

Приклад коду показує, як налаштувати модуль VBA за допомогою [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) майно, яке створює копію існуючого проекту:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## Робота з сертифікатами проекту VBA

Aspose.Words API Послуги [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) Клас роботи з VBA Project Посилання, що представляють колекцію довідок проєкту VBA.

Приклад коду показує, як видалити деякі посилання з колекції посилань з проекту VBA:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}

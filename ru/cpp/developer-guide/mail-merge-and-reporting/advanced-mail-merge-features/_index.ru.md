---
title: Расширенные возможности Mail Merge в C++
second_title: Aspose.Words для C++
articleTitle: Расширенные функции Mail Merge
linktitle: Расширенные функции Mail Merge
type: docs
description: "Aspose.Words для C++ предоставляет некоторые расширенные Mail Merge возможности, которые позволяют выполнять дальнейшую настройку mail merge. Например, получение информации о структуре шаблона, установка правил, очистка после выполнения операции Mail Merge и другие."
keywords: "use advanced Mail Merge features c++"
weight: 50
url: /ru/cpp/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words предоставляет некоторые дополнительные Mail Merge свойства и методы, которые позволяют выполнять дальнейшую настройку процесса Mail Merge либо в виде простого mail merge, либо Mail Merge с регионами.

Расширенные функции Mail Merge включают, но не ограничиваются ими, получение информации о структуре шаблона перед выполнением операции mail merge, настройку правил для операции Mail Merge и очистку во время операции mail merge. В этой статье мы рассмотрим лишь несколько свойств и примеров, которые покажут вам, как использовать расширенные функции.

## Установите правила для операций Mail Merge

Добавление правил в шаблон позволяет сделать рабочий процесс более эффективным и гибким. Используя правила mail merge, вы можете настроить содержимое, которое можно быстро изменять, и избежать необходимости создавать несколько документов.

Aspose.Words позволяет настроить параметр Mail Merge на основе правил, которые запускаются при выполнении операции Mail Merge и управлении информацией о слиянии. Например, при создании электронного сообщения или письма для отправки всем вашим клиентам. Вы можете настроить правило таким образом, чтобы письмо могло содержать различные данные, основанные на различных значениях в определенных полях вашего источника данных.

Взгляните на некоторые правила mail merge, которые вы можете реализовать.

### Реализуйте следующее поле для объединения записей данных в текущем документе

Вы можете использовать поле [Next](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnext/) для объединения следующей записи данных в текущий результирующий объединенный документ, вместо того чтобы создавать новый объединенный документ. Оно используется для отображения нескольких записей в одном документе.

### Реализуйте поля NextIf и SkipIf для сравнения двух выражений

Вы можете использовать поле [NextIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnextif) или поле [SkipIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/), если хотите сравнить два выражения (выражения [right]https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/) and [left](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/get_leftexpression/)) с некоторым значением [operator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/get_comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words приведет к объединению следующей записи данных с текущим документом слияния, и все поля слияния в шаблоне, которые находятся после поля *NextIf*, будут заменены значениями из следующей записи данных, а не из текущей записи данных. | Aspose.Words приведет к объединению следующей записи данных в новый объединяемый документ. |
| `SkipIf` | Aspose.Words отменит текущий объединяемый документ, перейдет к следующей записи данных в источнике данных и запустит новый объединяемый документ. | Aspose.Words продолжит работу с текущим объединяемым документом. |

## Получить Информацию о Структуре Шаблона

Aspose.Words позволяет вам собирать различную информацию в вашем шаблоне различными способами. Например, вам может потребоваться получить названия некоторых полей слияния или иерархию регионов в вашем шаблоне. Теперь мы объясним возможные варианты получения некоторой конкретной информации из вашего шаблона.

### Получение имен полей слияния

Вы можете столкнуться со сценарием, когда вам захочется объединить данные с полями слияния, созданными другими пользователями, и в этом случае вы не будете уверены в точных названиях полей слияния. Итак, для достижения цели mail merge, во-первых, вам нужно будет прочитать и отобразить названия всех полей слияния. Aspose.Words позволяет получить коллекцию имен полей слияния, используя метод [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/).

В следующем примере кода показано, как получить имена всех полей слияния в шаблоне:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### Получите информацию о Регионах Слияния

Возможно, у вас есть сценарий, в котором вы хотите понять, как структурирован ваш шаблон с помощью указанных областей слияния. Вы можете использовать некоторые методы для сбора всей необходимой информации о регионах слияния или для получения иерархии областей слияния в вашем шаблоне, например, метод [GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/). Вы можете использовать свойства и методы класса [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).В следующем примере кода показано, как получить иерархию областей слияния:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Добавление сопоставленных полей

Aspose.Words позволяет автоматически сопоставлять названия полей в вашем источнике данных и названия Mail Merge полей в шаблоне, используя свойство [MappedDataFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_mappeddatafields/). Например, если в вашем шаблоне есть поле с именем "Last Name", а в вашем источнике данных есть поле с именем "Last Name" или другим вариантом, таким как "Last_Name" или "LastName", то поле в источнике данных будет автоматически сопоставлено с соответствующим именем. отображенное поле. Если шаблон слияния должен быть объединен со многими источниками данных, сопоставленные поля не требуют повторного ввода полей в шаблон для согласования с именами полей в базе данных.

В следующем примере кода показано, как добавить сопоставленное поле с помощью метода [Add](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mappeddatafieldcollection/add/), когда объединяемое поле в шаблоне и поле данных в источнике данных имеют разные имена:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}
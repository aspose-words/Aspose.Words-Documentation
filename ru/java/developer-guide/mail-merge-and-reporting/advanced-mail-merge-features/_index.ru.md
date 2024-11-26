---
title: Расширенные функции Mail Merge в Java
second_title: Aspose.Words для Java
articleTitle: Расширенные функции Mail Merge
linktitle: Расширенные функции Mail Merge
type: docs
description: "Aspose.Words для Java предоставляет некоторые расширенные функции Mail Merge, которые позволяют выполнять дальнейшую настройку Mail Merge. Например, получение информации о структуре шаблона, настройка правил, очистка после операции Mail Merge и другие."
keywords: "use advanced Mail Merge features java, Mail Merge java"
weight: 50
url: /ru/java/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words предоставляет некоторые дополнительные Mail Merge свойства и методы, которые позволяют выполнять дальнейшую настройку процесса Mail Merge либо в виде простого Mail Merge, либо Mail Merge с регионами.

Расширенные функции Mail Merge включают, но не ограничиваются ими, получение информации о структуре шаблона перед выполнением операции Mail Merge, настройку правил для операции Mail Merge и очистку во время операции Mail Merge. В этой статье мы рассмотрим лишь несколько свойств и примеров, которые покажут вам, как использовать расширенные функции.

## Установите правила для операций Mail Merge

Добавление правил в шаблон позволяет сделать рабочий процесс более эффективным и гибким. Используя правила Mail Merge, вы можете настроить содержимое, которое можно быстро изменять, и избежать необходимости создавать несколько документов.

Aspose.Words позволяет настроить Mail Merge на основе правил, которые запускаются при выполнении операции Mail Merge и управлении информацией о слиянии. Например, когда вы создаете электронное сообщение или переписку для отправки всем своим клиентам. Вы можете настроить правило таким образом, чтобы письмо могло содержать различные данные, основанные на различных значениях в определенных полях вашего источника данных.

Взгляните на некоторые правила Mail Merge, которые вы можете реализовать.

### Реализуйте следующее поле для объединения записей данных в текущем документе

Вы можете использовать поле [Next](https://reference.aspose.com/words/java/com.aspose.words/fieldnext/) для объединения следующей записи данных в текущий результирующий объединенный документ, вместо того чтобы создавать новый объединенный документ. Оно используется для отображения нескольких записей в одном документе.

### Реализуйте поля NextIf и SkipIf для сравнения двух выражений

Вы можете использовать поле [NextIf](https://reference.aspose.com/words/java/com.aspose.words/fieldnextif/) или поле [SkipIf](https://reference.aspose.com/words/java/com.aspose.words/fieldskipif/), если хотите сравнить два выражения (выражения [right](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#getRightExpression) и [left](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#getLeftExpression)) с некоторым значением [operator](https://reference.aspose.com/words/java/com.aspose.words/fieldskipif/#getComparisonOperator).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words приведет к объединению следующей записи данных с текущим документом слияния, и все поля слияния в шаблоне, которые находятся после поля *NextIf*, будут заменены значениями из следующей записи данных, а не из текущей записи данных. | Aspose.Words приведет к объединению следующей записи данных в новый объединяемый документ. |
| `SkipIf` | Aspose.Words отменит текущий объединяемый документ, перейдет к следующей записи данных в источнике данных и запустит новый объединяемый документ. | Aspose.Words продолжит работу с текущим объединяемым документом. |

В следующем примере кода показано, как сравнить два выражения с **NextIf** или **SkipIf**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-AdvancedMailMergeFeatures-CompareTwoExpressions.java" >}}

## Получить Информацию о Структуре Шаблона

Aspose.Words позволяет вам собирать различную информацию в вашем шаблоне различными способами. Например, вам может потребоваться получить названия некоторых полей слияния или иерархию регионов в вашем шаблоне. Теперь мы объясним возможные варианты получения некоторой конкретной информации из вашего шаблона.

### Получение имен полей слияния

Вы можете столкнуться со сценарием, когда вам захочется объединить данные с полями слияния, созданными другими пользователями, и в этом случае вы не будете уверены в точных названиях полей слияния. Итак, для достижения цели Mail Merge, во-первых, вам нужно будет прочитать и отобразить названия всех полей слияния. Aspose.Words позволяет получить коллекцию имен полей слияния, используя метод [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/).

В следующем примере кода показано, как получить имена всех полей слияния в шаблоне:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}

### Получите информацию о Регионах Слияния

Возможно, у вас есть сценарий, в котором вы хотите понять, как структурирован ваш шаблон с помощью указанных областей слияния. Вы можете использовать некоторые методы для сбора всей необходимой информации о регионах слияния или для получения иерархии областей слияния в вашем шаблоне, например, метод [GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy). Вы можете использовать свойства и методы класса [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/).В следующем примере кода показано, как получить иерархию областей слияния:

**Java**
{{< highlight java >}}

MailMergeRegionInfo regionInfo = doc.getMailMerge().getRegionsHierarchy();

{{< /highlight >}}

В следующем примере кода показано, как получить определенные области слияния внутри вашего шаблона на основе их названий:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ExecuteMailMergeWithRegions-GetRegionsByName.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/MailMerge).

{{% /alert %}}

### Добавление сопоставленных полей

Aspose.Words позволяет автоматически сопоставлять названия полей в вашем источнике данных и названия полей Mail Merge в шаблоне, используя свойство [MappedDataFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getMappedDataFields). Например, если в вашем шаблоне есть имя поля под названием "Фамилия", а в вашем источнике данных есть имя поля "Фамилия" или другой вариант, например "Last_Name" или "LastName", то поле в источнике данных автоматически преобразуется в соответствующее сопоставленное поле. Если шаблон слияния должен быть объединен со многими источниками данных, сопоставленные поля не требуют повторного ввода полей в шаблон для согласования с именами полей в базе данных.

В следующем примере кода показано, как добавить сопоставленное поле с помощью метода [Add](https://reference.aspose.com/words/java/com.aspose.words/mappeddatafieldcollection/#add-java.lang.String-java.lang.String), когда объединяемое поле в шаблоне и поле данных в источнике данных имеют разные имена:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-MappedFieldNames.java" >}}

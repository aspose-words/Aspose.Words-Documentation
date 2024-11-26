---
title: Типы операций Mail Merge в Java
second_title: Aspose.Words для Java
articleTitle: Типы операций Mail Merge
linktitle: Типы операций Mail Merge
type: docs
description: "Выполните два разных типа операций Mail Merge: простые Mail Merge и Mail Merge с регионами. Простой Mail Merge повторяет весь документ для каждой записи источника данных, тогда как Mail Merge с регионами повторяет только определенные области для каждой записи, используя Java."
keywords: "how to execute Mail Merge java, Mail Merge Java, Simple Mail Merge"
weight: 20
url: /ru/java/types-of-mail-merge-operations/
timestamp: 2024-01-27-14-07-04
---

Основная идея Mail Merge заключается в автоматическом создании документа или нескольких документов на основе вашего шаблона и данных, полученных из вашего источника данных. Aspose.Words позволяет выполнять два различных типа операций Mail Merge: простые Mail Merge и Mail Merge с регионами.

Наиболее распространенным примером использования simple Mail Merge является ситуация, когда вы хотите отправить документ для разных клиентов, указав их имена в начале документа. Чтобы сделать это, вам нужно создать поля слияния, такие как *First Name* и *Last Name*, в вашем шаблоне, а затем заполнить их данными из вашего источника данных. Принимая во внимание, что наиболее распространенный пример использования Mail Merge с регионами - это когда вы хотите отправить документ, содержащий конкретные заказы со списком всех позиций в каждом заказе. Для этого вам нужно будет создать регионы слияния внутри вашего шаблона – собственный регион для каждого заказа, чтобы заполнить его всеми необходимыми данными для товаров.

Основное различие между обеими операциями слияния заключается в том, что простой Mail Merge (без областей) повторяет весь документ для каждой записи источника данных, тогда как Mail Merge с областями повторяет только определенные области для каждой записи. Вы можете рассматривать простую операцию Mail Merge как частный случай слияния с областями, где единственной областью является весь документ целиком.

{{% alert color="primary" %}}

Класс [MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/) представляет функциональность Mail Merge. С помощью его свойств вы можете настроить требуемое поведение перед выполнением операции Mail Merge.

{{% /alert %}}

## Простое Mail Merge Управление {#simple-mail-merge-operation}

Простое значение Mail Merge используется для заполнения полей Mail Merge внутри вашего шаблона необходимыми данными из вашего источника данных (представление в виде одной таблицы). Таким образом, оно аналогично классическому значению Mail Merge в Microsoft Word.

Вы можете добавить одно или несколько полей для объединения в свой шаблон, а затем выполнить простую операцию Mail Merge. Рекомендуется использовать ее, если в вашем шаблоне нет областей для объединения.

Основным ограничением использования этого типа является то, что все содержимое документа будет повторяться для каждой записи в источнике данных.

### Как выполнить простую операцию Mail Merge {#how-to-execute-a-simple-mail-merge-operation}

Как только ваш шаблон будет готов, вы можете приступить к выполнению простой операции Mail Merge. Aspose.Words позволяет выполнить простую операцию Mail Merge, используя различные [Выполнять методы](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-com.aspose.words.IMailMergeDataSource), которые принимают различные объекты данных в качестве источника данных.

В следующем примере кода показано, как выполнить простую операцию Mail Merge, используя один из методов [Execute](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-java.lang.String---java.lang.Object):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-ExecuteSimpleMailMerge.java" >}}

Вы можете заметить разницу между документами перед выполнением простого mail merge:

<img src="/words/java/types-of-mail-merge-operations/execute-simple-mail-merge-1.png" alt="simple_mail_merge_template_aspose_words_java" style="width:300px"/>

И после выполнения простого mail merge:

<img src="/words/java/types-of-mail-merge-operations/execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge_aspose_words_java" style="width:300px"/>

### Как создать несколько объединенных документов

В случае Aspose.Words стандартная операция Mail Merge заполняет содержимым из вашего источника данных только один документ. Таким образом, вам нужно будет выполнить операцию Mail Merge несколько раз, чтобы создать несколько объединенных документов в качестве выходных данных.

В следующем примере кода показано, как создать несколько объединенных документов во время операции Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-ProduceMultipleDocumentsDuringMailMerge-ProduceMultipleDocumentsDuringMailMerge.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/MailMerge).

{{% /alert %}}

## Mail Merge с регионами

Вы можете создавать различные области в своем шаблоне, чтобы иметь специальные области, которые вы можете просто заполнить своими данными. Используйте Mail Merge с регионами, если вы хотите вставлять таблицы, строки с повторяющимися данными, чтобы ваши документы динамически расширялись, указав эти области в вашем шаблоне.

Вы можете создавать вложенные (дочерние) области, а также объединять области. Основное преимущество использования этого типа заключается в динамическом увеличении частей внутри документа. Более подробную информацию смотрите в следующей статье "Вложенные Mail Merge области с областями".

{{% alert color="primary" %}}

Информация о регионе Mail Merge может быть получена с помощью класса [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/).

{{% /alert %}}

### Как выполнить Mail Merge с регионами

Область Mail Merge - это определенная часть документа, имеющая начальную и конечную точки. Обе точки представлены в виде Mail Merge полей с определенными именами *"TableStart:XXX"* и *"TableEnd:XXX"*. Все содержимое, включенное в область Mail Merge, будет автоматически повторяться для каждой записи в источнике данных.

Aspose.Words позволяет выполнять Mail Merge с регионами, использующими разные [Выполнять методы](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/), которые принимают различные объекты данных в качестве источника данных.

В качестве первого шага нам нужно создать `DataSet`, чтобы позже передать его в качестве входного параметра методу `ExecuteWithRegions`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-CreateDataSet.java" >}}

В следующем примере кода показано, как выполнить Mail Merge с регионами, используя метод [ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#executeWithRegions-com.aspose.words.net.System.Data.DataSet):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-MailMergeWithRegions.java" >}}

Вы можете заметить разницу между документами перед выполнением Mail Merge с регионами:

<img src="/words/java/types-of-mail-merge-operations/execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template_aspose_words_java" style="width:850px"/>

И после выполнения Mail Merge с регионами:

<img src="/words/java/types-of-mail-merge-operations/execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute_aspose_words_java" style="width:850px"/>

### Ограничения Mail Merge для регионов

Есть несколько важных моментов, которые необходимо учитывать при выполнении Mail Merge с регионами:

* Начальная точка *TableStart:Orders* и конечная точка *TableEnd:Orders* должны находиться в одной строке или ячейке. Например, если область объединения начинается в ячейке таблицы, то область объединения должна заканчиваться в той же строке, что и первая ячейка.
* Имя объединяемого поля должно совпадать с именем столбца в вашем DataTable. Если вы не указали сопоставленные поля, Mail Merge с регионами не будет успешным для любого объединяемого поля, имя которого отличается от имени столбца.

Если одно из этих правил будет нарушено, вы получите неожиданные результаты или может возникнуть исключение.

{{% alert color="primary" %}}

Если вы не используете Mail Merge регионы, то это будет аналогично Microsoft Word mail merge, и все содержимое документа будет повторяться для каждой записи в источнике данных.

{{% /alert %}}


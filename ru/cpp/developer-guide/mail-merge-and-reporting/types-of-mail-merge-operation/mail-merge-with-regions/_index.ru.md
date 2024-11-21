---
title: Mail Merge с регионами в C++
second_title: Aspose.Words для C++
articleTitle: Mail Merge с регионами
linktitle: Mail Merge с регионами
type: docs
description: "Создайте в своем шаблоне различные области, чтобы иметь специальные области, которые вы можете просто заполнить своими данными. Используйте mail merge с областями, если вы хотите вставлять таблицы, строки с повторяющимися данными, чтобы ваши документы динамически увеличивались."
keywords: "how to execute mail merge c++"
weight: 20
url: /ru/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

Вы можете создавать различные области в своем шаблоне, чтобы иметь специальные области, которые вы можете просто заполнить своими данными. Используйте mail merge с регионами, если вы хотите вставлять таблицы, строки с повторяющимися данными, чтобы ваши документы динамически расширялись, указав эти области в вашем шаблоне.

Вы можете создавать вложенные (дочерние) области, а также объединять области. Основное преимущество использования этого типа заключается в динамическом увеличении частей внутри документа. Более подробную информацию смотрите в следующей статье "Вложенные Mail Merge области с областями".

{{% alert color="primary" %}}

Информация о регионе mail merge может быть получена с помощью класса [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).

{{% /alert %}}

## Как выполнить Mail Merge с регионами

Область mail merge - это определенная часть документа, имеющая начальную и конечную точки. Обе точки представлены в виде mail merge полей с определенными именами *"TableStart:XXX"* и *"TableEnd:XXX"*. Все содержимое, включенное в область mail merge, будет автоматически повторяться для каждой записи в источнике данных.

Aspose.Words позволяет выполнять mail merge с регионами, используя один из методов [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/), которые принимают [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) пользовательский источник данных.

В следующем примере кода показано, как выполнить mail merge с регионами из базы данных sqlite с помощью [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

Вы можете заметить разницу между документами перед выполнением mail merge с регионами:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

И после выполнения mail merge с регионами:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## Ограничения Mail Merge для регионов

Есть несколько важных моментов, которые необходимо учитывать при выполнении mail merge с регионами:

* Начальная точка *TableStart:Orders* и конечная точка *TableEnd:Orders* должны находиться в одной строке или ячейке. Например, если область объединения начинается в ячейке таблицы, то область объединения должна заканчиваться в той же строке, что и первая ячейка.
  Имя объединяемого поля должно совпадать с именем столбца в вашем DataTable. Если вы не укажете сопоставленные поля, mail merge с регионами не будет выполнено для любого объединяемого поля, имя которого отличается от имени столбца.
* Aspose.Words для C++ поддерживает только источники данных на основе [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) и [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/). В отличие от .NET и Java, C++ не имеет общепринятой кроссплатформенности API для работы с базами данных (например, ADODB, ODBC или JDBC). Чтобы работать с определенным источником данных, вы должны реализовать интерфейс [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) или [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/).

Если одно из этих правил будет нарушено, вы получите неожиданные результаты или может возникнуть исключение.

{{% alert color="primary" %}}

Если вы не используете mail merge регионы, то это будет аналогично Microsoft Word mail merge, и все содержимое документа будет повторяться для каждой записи в источнике данных.

{{% /alert %}}


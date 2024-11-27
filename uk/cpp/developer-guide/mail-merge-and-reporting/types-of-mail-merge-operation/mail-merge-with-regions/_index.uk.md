---
title: Mail Merge з регіонами в C++
second_title: Aspose.Words для C++
articleTitle: Mail Merge з регіонами
linktitle: Mail Merge з регіонами
type: docs
description: "Створіть у своєму шаблоні різні області, щоб мати спеціальні області, які ви можете просто заповнити своїми даними. Використовуйте Mail Merge з областями, якщо ви хочете вставляти таблиці, рядки з повторюваними даними, щоб ваші документи динамічно збільшувалися."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /uk/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

Ви можете створювати різні області у своєму шаблоні, щоб мати спеціальні області, які ви можете просто заповнити своїми даними. Використовуйте Mail Merge з регіонами, якщо ви хочете вставляти таблиці, рядки з повторюваними даними, щоб ваші документи динамічно розширювалися, вказавши ці області у вашому шаблоні.

Ви можете створювати вкладені (дочірні) області, а також об'єднувати області. Основна перевага використання цього типу полягає в динамічному збільшенні частин всередині документа. Більш детальну інформацію дивіться в наступній статті "вкладені Mail Merge області з областями".

{{% alert color="primary" %}}

Інформація про Регіон Mail Merge може бути отримана за допомогою класу [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).

{{% /alert %}}

## Як виконати Mail Merge з регіонами

Область Mail Merge - це певна частина документа, що має початкову та кінцеву точки. Обидві точки представлені у вигляді Mail Merge полів з певними іменами *"TableStart:XXX"* і *"TableEnd:XXX"*. Весь вміст, включений в область Mail Merge, буде автоматично повторюватися для кожного запису в джерелі даних.

Aspose.Words дозволяє виконувати Mail Merge з регіонами, використовуючи один із методів [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/), який приймає [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) спеціальне джерело даних.

Наступний приклад коду показує, як виконати Mail Merge з регіонами з бази даних sqlite за допомогою [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

Ви можете помітити різницю між документами перед виконанням Mail Merge з регіонами:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

І після виконання Mail Merge з регіонами:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## Обмеження Mail Merge для регіонів

Є кілька важливих моментів, які необхідно враховувати при виконанні Mail Merge з регіонами:

* Початкова точка *TableStart:Orders* і кінцева точка *TableEnd:Orders* повинні знаходитися в одному рядку або комірці. Наприклад, якщо область об'єднання починається в комірці таблиці, то область об'єднання повинна закінчуватися в тому ж рядку, що і перша комірка.
  Ім'я об'єднуваного поля має збігатися з ім'ям стовпця у вашому DataTable. Якщо ви не вказали зіставлені поля, Mail Merge з регіонами не буде успішним для будь-якого об'єднаного поля, ім'я Якого відрізняється від імені стовпця.
* Aspose.Words для C++ підтримує лише джерела даних на основі [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) та [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/). На відміну від .NET та Java, C++ не має загальноприйнятої міжплатформенності API для роботи з базами даних (як ADODB, ODBC або JDBC). Щоб працювати з певним джерелом даних, вам потрібно реалізувати інтерфейс [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) або [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/).

Якщо одне з цих правил буде порушено, Ви отримаєте несподівані результати або може виникнути виняток.

{{% alert color="primary" %}}

Якщо ви не використовуєте Mail Merge регіони, то це буде аналогічно Microsoft Word mail merge, і весь вміст документа буде повторюватися для кожного запису у джерелі даних.

{{% /alert %}}


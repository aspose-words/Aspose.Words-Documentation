---
title: Mail Merge С региони в C++
second_title: Aspose.Words за C++
articleTitle: Mail Merge С региони
linktitle: Mail Merge С региони
type: docs
description: "Създайте различни региони във вашия шаблон, за да имате специални области, които можете просто да попълните с вашите данни. Използвайте Mail Merge С региони, ако искате да вмъкнете таблици, редове с повтарящи се данни, за да накарате документите си да растат динамично."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /bg/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

Можете да създадете различни региони във вашия шаблон, за да има специални области, които можете просто да попълните с вашите данни. Използвайте Mail Merge С региони, ако искате да вмъкнете таблици, редове с повтарящи се данни, за да направите документите си динамично да растат, като зададете тези региони във вашия шаблон.

Можете да създавате вложени (Детски) региони, както и да обединявате региони. Основното предимство на използването на този тип е динамично увеличаване на частите вътре в документа. Вижте повече подробности в следващата статия "вложени Mail Merge С региони".

{{% alert color="primary" %}}

Информация за регион Mail Merge може да бъде получена от класа [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).

{{% /alert %}}

## Как да се изпълни Mail Merge С региони

Mail Merge регион е специфична част в документ, която има начална и крайна точка. И двете точки са представени като Mail Merge полета, които имат конкретни имена *"TableStart:XXX"* и *"TableEnd:XXX"*. Цялото съдържание, включено в регион Mail Merge, ще се повтаря автоматично за всеки запис в източника на данни.

Aspose.Words ви позволява да изпълнявате Mail Merge с региони, като използвате един от методите [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/), които приемат [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) потребителски източник на данни.

Следващият пример за код показва как да се изпълни Mail Merge с региони от базата данни с [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

Можете да забележите разликата между документа, преди да изпълните Mail Merge С региони:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

И след изпълнение Mail Merge С региони:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## Ограничения на Mail Merge С региони

Има някои важни точки, които трябва да имате предвид при извършване на Mail Merge С региони:

* Началната точка *TableStart:Orders* и крайната точка *TableEnd:Orders* трябва да бъдат в един и същ ред или клетка. Например ако стартирате област за обединяване в клетка на таблица, трябва да завършите областта за обединяване в същия ред като първата клетка.
  Името на полето за обединяване трябва да съответства на името на колоната във вашето DataTable. Освен ако не зададете нанесени полета, Mail Merge С региони няма да успее за всяко Обединено поле, което има име, различно от името на колоната.
* Aspose.Words за C++ поддържа само [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) и [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) базирани източници на данни. За разлика от .NET и Java, C++ няма общоприета междуплатформена API за работа с бази данни (като ADODB, ODBC или JDBC). За да работите с конкретен източник на данни, трябва да внедрите интерфейс [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) или [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/).

Ако някое от тези правила е нарушено, ще получите неочаквани резултати или може да се хвърли изключение.

{{% alert color="primary" %}}

Ако не използвате Mail Merge региони, тогава той ще бъде подобен на Microsoft Word mail merge и цялото съдържание на документа ще се повтаря за всеки запис в източника на данни.

{{% /alert %}}


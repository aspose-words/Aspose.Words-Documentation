---
title: Проста Mail Merge операция в C++
second_title: Aspose.Words за C++
articleTitle: Проста Работа Mail Merge
linktitle: Проста Работа Mail Merge
type: docs
description: "Обикновено Mail Merge се използва за попълване на полетата Mail Merge във вашия шаблон с необходимите данни от вашия източник на данни – това е подобно на класическото Mail Merge във Microsoft Word. Добавете едно или повече полета за обединяване във вашия шаблон и след това изпълнете простата операция Mail Merge."
keywords: "how to execute Mail Merge c++"
weight: 10
url: /bg/cpp/simple-mail-merge-operation/
timestamp: 2024-09-24-14-35-44
---

Обикновено Mail Merge се използва за попълване на полетата Mail Merge във вашия шаблон с необходимите данни от вашия източник на данни (представяне на единична таблица). Така че това е подобно на класиката Mail Merge във Microsoft Word.

Можете да добавите едно или повече полета за обединяване във вашия шаблон и след това да изпълните проста операция Mail Merge. Препоръчително е да го използвате, ако вашият шаблон не съдържа никакви сливания региони.

Основното ограничение при използването на този тип е, че цялото съдържание на документа ще се повтаря за всеки запис в източника на данни.

## Как да извършите проста операция Mail Merge

След като шаблонът Ви е готов, можете да започнете да извършвате проста операция Mail Merge. Aspose.Words ви позволява да изпълните проста Mail Merge операция, като използвате различни [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) методи, които приемат различни обекти на данни като източник на данни.

Следващият пример за код показва как да изпълните проста операция Mail Merge, като използвате един от методите [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

Можете да забележите разликата между документа, преди да изпълните проста mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

И след изпълнение на прости mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## Как да създадете няколко Обединени документа

В Aspose.Words стандартната операция Mail Merge попълва само един документ със съдържание от вашия източник на данни. Така че ще трябва да изпълните операцията Mail Merge много пъти, за да създадете няколко обединени документа като изход.

Следващият пример за код показва как да генерирате няколко обединени документа по време на операция Mail Merge с [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}

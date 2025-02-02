﻿---
title: Разширено Mail Merge функции в C++
second_title: Aspose.Words за C++
articleTitle: Разширени Mail Merge Функции
linktitle: Разширени Mail Merge Функции
type: docs
description: "Aspose.Words за C++ предоставя някои разширени Mail Merge функции, които ви позволяват да извършвате по-нататъшно персонализиране Mail Merge. Например, получаване на информация за структурата на шаблона, задаване на правила, почистване след операция Mail Merge и други."
keywords: "use advanced Mail Merge features c++"
weight: 50
url: /bg/cpp/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words осигурява някои допълнителни Mail Merge свойства и методи, които ви позволяват да извършите по-нататъшно персонализиране на Mail Merge процеса или в прост Mail Merge или Mail Merge с региони.

Разширените функции Mail Merge включват, но не се ограничават до получаване на информация за структурата на шаблона преди извършване на операция Mail Merge, задаване на правила за операция Mail Merge и почистване по време на операция Mail Merge. Тази статия ще обхване само няколко свойства и примери, за да ви покаже как да използвате разширени функции.

## Задаване на правила за Mail Merge операции

Добавянето на правила към вашия шаблон ви позволява да направите работния процес по-ефективен и гъвкав. Използвайки Mail Merge правила, можете да настроите съдържание, което може да се променя бързо и да избегнете необходимостта от генериране на множество документи.

Aspose.Words ви позволява да персонализирате Mail Merge въз основа на правилата, които се изпълняват, когато изпълнявате операцията Mail Merge и информацията за обединяване на контрола. Например, когато създавате имейл или писмо, което да изпратите на всички ваши клиенти. Можете да зададете правило, така че писмото да съдържа различни данни въз основа на различните стойности в определени полета на вашия източник на данни.

Обърнете внимание на някои Mail Merge правила, които можете да приложите.

### Прилагане на следващото поле за обединяване на записи на данни в текущия документ

Можете да реализирате полето [Next](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnext/), за да обедините следващия запис на данни в текущия резултат обединен документ, вместо да стартирате нов обединен документ. Използва се за показване на няколко записа в един документ.

### Прилагане на полетата NextIf и SkipIf за сравняване на два израза

Можете да използвате поле [NextIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnextif) или поле [SkipIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/), Ако искате да сравните два израза ([right]https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/) and [left](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/get_leftexpression/) изрази) с [operator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/get_comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words ще обедини следващия запис на данни в текущия обединен документ и всички полета за обединяване в шаблона, които са след полето *NextIf*, ще бъдат заменени със стойности от следващия запис на данни, а не от текущия запис на данни. | Aspose.Words ще обедини следващия запис с данни в нов обединен документ. |
| `SkipIf` | Aspose.Words ще отмени текущия обединен документ, ще премине към следващия запис на данни в източника на данни и ще започне нов обединен документ. | Aspose.Words ще продължи текущия обединяващ документ. |

## Получаване На Информация За Структурата На Шаблона

Aspose.Words Позволява ви да събирате различна информация във вашия шаблон чрез много методи. Например може да се наложи да получите имената на някои полета за обединяване или йерархията на регионите във вашия шаблон. Сега ще обясним възможните варианти, за да получите конкретна информация от вашия шаблон.

### Получаване На Имена На Полета За Обединяване

Можете да попаднете на сценарий, в който ще искате да обедините данни с полета за обединяване, които са създадени от други хора, и в този случай няма да сте сигурни за точните имена на полетата за обединяване. Така че, за да постигнете целта Mail Merge, първо ще трябва да прочетете и покажете имената на всички полета за обединяване. Aspose.Words ви позволява да получите колекция от имена на полета за обединяване, като използвате метода [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/).

Следващият пример за код показва как да получите имената на всички полета за обединяване в шаблона:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### Получете Информация За Сливащите Се Региони

Може да имате сценарий, в който искате да разберете как е структуриран вашият шаблон чрез посочените региони за обединяване. Можете да използвате някои методи, за да съберете цялата необходима информация за обединяването на региони или да получите йерархията на обединяването на региони във вашия шаблон, като например метода [GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/). Можете да използвате свойствата и методите на класа [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).Следващият пример за код показва как да получите йерархия на обединяване на региони:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

Можете да изтеглите примерния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Добавяне На Нанесени Полета

Aspose.Words ви позволява автоматично да съпоставяте имената на полетата във вашия източник на данни и имената на Mail Merge полетата в шаблона, като използвате свойството [MappedDataFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_mappeddatafields/). Например ако имате Име на поле, наречено "фамилно име" във вашия шаблон и във вашия източник на данни имате Име на поле "фамилно име" или друг вариант, като например "Last_Name" или "LastName", тогава полето в източника на данни автоматично ще се съпостави със съответното нанесено поле. Ако шаблон за обединяване трябва да бъде обединен с много източници на данни, нанесените полета правят ненужно повторното въвеждане на полетата в шаблона, за да се съгласуват с имената на полетата в базата данни.

Следващият пример за код показва как да добавите нанесено поле, като използвате метода [Add](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mappeddatafieldcollection/add/), когато поле за обединяване в шаблон и поле за данни в източник на данни имат различни имена:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}

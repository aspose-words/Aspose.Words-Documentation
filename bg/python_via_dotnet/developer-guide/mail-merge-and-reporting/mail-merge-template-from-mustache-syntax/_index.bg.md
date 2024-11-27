---
title: Mail Merge Mustache синтаксис
second_title: Aspose.Words за Python via .NET
articleTitle: Mail Merge шаблон от Mustache синтаксис
linktitle: Mail Merge шаблон от Mustache синтаксис
type: docs
description: "Създаване на шаблони с Mustache синтаксис, използвайки Python. Mustache синтаксисът е единствената опция за използване с шаблони, които не съдържат полета (HTML или TXT). С Word шаблони имате две опции: полета или синтаксис Mustache."
keywords: "mail merge template mustache syntax python"
weight: 40
url: /bg/python-net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words ви позволява да създавате шаблони с mustache синтаксис в допълнение към познатите шаблони. Mustache е алтернативен вариант на синтаксиса на шаблона, който се състои от имена на етикети, оградени от `{{ }}` и е подкрепен от моделен обект, който съдържа данните за шаблона.

Синтаксисът Mustache е единствената опция за използване с шаблони, които не съдържат полета, като например HTML и TXT шаблони. С Word шаблони имате две опции за използване на полета или Mustache синтаксис.

Mustache синтаксисът поддържа *foreach* таг, който е алтернатива за използване на Mail Merge С региони. Така че ползата е, че можете да използвате mustache синтаксис, ако по някаква причина не сте в състояние или просто не искате да използвате полета за обединяване и обединяване региони.

Можете също да комбинирате Mail Merge полета с някои допълнителни полета, като използвате маркера *foreach*, както е показано на снимката по-долу.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## Създайте шаблон Mustache

Първото важно нещо, което трябва да се изясни, е, че Mustache не е моделиращ двигател. Mustache е друг синтактичен вариант, който е достъпен за всеки шаблон в [load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/), поддържан от Aspose.Words. Следователно, можете да създадете такъв шаблон както програмно, така и чрез интерфейс, просто трябва да включите определен синтаксис и да спазвате спецификацията Mustache.

Да предположим, че трябва да изпратите един и същ имейл до 50 получатели, за да персонализирате поздрава със съответните им първи имена. Можете да заместите първото име на получателя с някакъв контейнер, както следва::

> Dear {{FirstName}}
>
> I hereby...

Въпросът тук: как можете да създадете 50 имейла от 1 единствен Mustache шаблон? За да отговорите на това, трябва да изпълните Mail Merge с региони, за да попълните къдравите скоби за контейнери в шаблона с действителни данни и да генерирате изходен документ.

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

Както забелязвате от примера по-горе, в Mustache трябва да използвате къдрави скоби за контейнери, които изглеждат като mustache, когато завъртите къдравите скоби на 90 градуса по посока на часовниковата стрелка.

{{% /alert %}}

## Работа с Mustache синтаксис

Mustache е представен като ред без логика, тъй като липсват конкретни отчети за контролните потоци, като *for* цикли и *if* и *else* условия. Но можете да използвате раздел тагове обработка списъци и ламбди да се постигне условна оценка и примка. За да включите синтаксиса Mustache в операцията Mail Merge, ще трябва да използвате свойството [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) и да зададете стойността му на *True*.

## Използвайте `IF` полета, за да направите Mail Merge интелигентен

Aspose.Words ви позволява да използвате Mail Merge полета и Mustache тагове с `IF` изявление. Полетата `IF` могат да се използват във всеки документ Mail Merge, За да се премахнат нежеланите интервали и запетаи, ако дадено поле е празно.

Формулата `IF` е показана по-долу:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Тук условието може да бъде поле за обединяване или етикет Mustache.

Например можете да използвате `IF` полета, ако трябва да вмъкнете "неговата", "нея", "той" или "тя" в зависимост от пола, както следва::

**{ IF { MERGEFIELD Gender } = "MALE" "верен текст" "фалшив текст"}**

**{ IF "{{ GENDER }}" = "MALE" "верен текст" "фалшив текст"}**

Следващият пример за код показва как да извършите операция Mail Merge с Mustache тагове и `IF` полета:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-UseOfifelseMustacheSyntax.py" >}}

Можете да забележите разликата между документа, преди да приложите [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) свойство:

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

И след прилагане на [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) собственост:

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>

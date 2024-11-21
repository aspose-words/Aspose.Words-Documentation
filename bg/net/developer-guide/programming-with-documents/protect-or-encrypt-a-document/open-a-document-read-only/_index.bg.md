---
title: Отваряне на документ само в C#
second_title: Aspose.Words вместо .NET
articleTitle: Отваряне на документ само за четене
linktitle: Отваряне на документ само за четене
description: "Направете документа само за четене, така че съдържанието да може да се копира или чете, но не се променя с помощта на C#."
type: docs
weight: 10
url: /bg/net/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Понякога може да имате документ, който се нуждае от преглед, но не искате рецензентите да променят произволно съдържанието ви. Aspose.Words позволява да направите разрешението на вашия документ само за четене, така че съдържанието да може да се копира или чете, но не и да се променя. Това ще попречи съдържанието да бъде премахнато или добавено към вашия документ.

{{% alert color="primary" %}}

Прилагането на опцията само за четене във вашия документ не пречи на някой да създаде ново копие от нея и да я запази с друго име.

{{% /alert %}}

Тази статия обяснява как да се направи документ само за четене.

## Само за четене на документ

Aspose.Words има обществена класа [WriteProtection](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/) което определя настройките за защита на запис за документ. Вие не създавате директно случаи от този клас.

Защитата от писане показва дали авторът е препоръчал отваряне на документ само за четене и/или изискване на парола за промяна на документа.

Aspose.Words позволява да направите документ само за четене, за да ограничите редактирането чрез използване на [ReadOnlyRecommended](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/readonlyrecommended/) собственост и [SetPassword](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/setpassword/) метод.

{{% alert color="primary" %}}

В Microsoft Word, можете да създадете документ само за четене по подобен начин, като използвате и двете:

* Винаги отваряйте Read-Only (File → Info → Protect Document)
* " Парола за промяна" (Запази като → Инструменти → Общи опции → Парола)

{{% /alert %}}

{{% alert color="primary" %}}

Потребителите също могат да ограничат редактирането на документи чрез избор [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) като **ReadOnly**, Но това е друга функция, която осигурява по-напреднали възможности за защита. Има такава функция в Microsoft Word, се прилага съответно в Aspose.Words.

**ProtectionType** ще бъдат описани подробно в една от следните статии год.

{{% /alert %}}

На **ReadOnlyRecommended** Имотът е защитен с парола, така че ако не зададете парола преди да приложите **ReadOnlyRecommended** собственост, след това други потребители могат просто да отворят документа сякаш е незащитен. Достъп до настройките за защита на документа и задаване на парола за защита на запис **SetPassword** метод.

{{% alert color="primary" %}}

Имайте предвид, че настройката на паролата е просто свойство в документ, който може да бъде премахнат, ако свойствата на документа са достъпни. Съответно такава парола не е гаранция за сигурността на документа.

{{% /alert %}}

Ако трябва да проверите дали документът има парола за защита на запис, която го ограничава от редактиране, можете да използвате [IsWriteProtected](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/iswriteprotected/) собственост.

Следният пример с код показва как се прави документ само за четене:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## Премахване на ограничение само за четене

Ако не искате потребител да отвори документа си само за четене, можете просто да зададете **ReadOnlyRecommened** собственост на *false* или изберете **ProtectionType** като **NoProtection**.

Следният пример за код показва как да се премахне достъпът само за четене за документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}

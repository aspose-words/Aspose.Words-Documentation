---
title: Отваряне на документ само в Java
second_title: Aspose.Words вместо Java
articleTitle: Отваряне на документ само за четене
linktitle: Отваряне на документ само за четене
description: "Направете вашия документ чете само така, че съдържанието да може да се копира или чете, но не променя използването Java."
type: docs
weight: 10
url: /bg/java/open-a-document-read-only/
---

Понякога може да имате документ, който се нуждае от преглед, но не искате рецензентите да променят произволно съдържанието ви. Aspose.Words ви позволява да направите разрешението на вашия документ само за четене, така че съдържанието да може да се копира или чете, но да не се променя. Това ще попречи съдържанието да бъде премахнато или добавено към вашия документ.

{{% alert color="primary" %}}

Прилагането на опцията само за четене във вашия документ не пречи на някого да създаде ново копие от нея и да я запази с друго име.

{{% /alert %}}

Тази статия обяснява как се прави документ само за четене.

## Само за четене на документ

Aspose.Words има обществена класа [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) определя настройките за защита на запис за документ. Не създавайте директно случаи от този клас.

Защитата от писане показва дали авторът е препоръчал отваряне на документ само за четене и/или изискване на парола за промяна на документа.

Aspose.Words позволява да направите документ само за четене, за да ограничите редактирането чрез използване на [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) собственост и [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) метод.

{{% alert color="primary" %}}

В Microsoft Word, можете да създадете документ само за четене по подобен начин, като използвате и двете:

* Винаги отваряйте Read-Only (File → Info → Protect Document)
* " Парола за промяна" (Запази като → Инструменти → Общи опции → Парола)

{{% /alert %}}

{{% alert color="primary" %}}

Потребителите също могат да ограничат редактирането на документи чрез избор [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) като **ReadOnly**, но това е друга функция, която осигурява по-напреднали възможности за защита. Има такава функция в Microsoft Word, съответно се прилага в Aspose.Words.

**ProtectionType** ще бъдат описани подробно в една от следните статии год.

{{% /alert %}}

На **ReadOnlyRecommended** Имотът е защитен с парола, така че ако не зададете парола преди да приложите **ReadOnlyRecommended** собственост, тогава други потребители могат просто да отворят документа, сякаш е незащитен. Достъп до настройките за защита на документите и задаване на парола за защита на запис **SetPassword** метод.

{{% alert color="primary" %}}

Имайте предвид, че настройката на паролата е просто свойство в документ, който може да бъде премахнат, ако свойствата на документа са достъпни. Съответно такава парола не е гаранция за сигурността на документа.

{{% /alert %}}

Ако трябва да проверите дали документът има парола за защита на запис, която го ограничава от редактиране, можете да използвате [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) собственост.

Следният пример за код показва как се прави документ само за четене:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## Премахване само на ограничение за четене

Ако не искате потребител да отвори документа си само за четене, можете просто да зададете **ReadOnlyRecommened** собственост на *false* или изберете **ProtectionType** като **NoProtection**.

Следният пример за код показва как да премахнете достъпа само за четене за документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}

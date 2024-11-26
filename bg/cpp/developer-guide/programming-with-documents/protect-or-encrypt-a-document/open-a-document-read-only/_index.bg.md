---
title: Отваряне на документ само за четене в C++
second_title: Aspose.Words за C++
articleTitle: Отваряне на документ само за четене
linktitle: Отваряне на документ само за четене
description: "Направете документа само за четене, така че съдържанието да може да се копира или чете, но да не се променя."
type: docs
weight: 10
url: /bg/cpp/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Понякога може да имате документ, който се нуждае от преглед, но не искате проверяващите да променят съдържанието ви на случаен принцип. Aspose.Words Позволява ви да направите разрешение за вашия документ само за четене, така че съдържанието да може да се копира или чете, но не и да се променя. Това ще предотврати премахването или добавянето на съдържание към вашия документ.

{{% alert color="primary" %}}

Прилагането на опцията само за четене към вашия документ не пречи на някого да създаде ново копие и да го запише с друго име.

{{% /alert %}}

Тази статия обяснява как да направите документ само за четене.

## Направете документ само за четене

Aspose.Words има публичен клас [WriteProtection](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/), който задава настройки за защита на запис за документ. Вие не създавате инстанции на този клас директно.

Защита на запис показва дали авторът е препоръчал отваряне на документ само за четене и / или изисква парола, за да промените документа.

Aspose.Words Позволява ви да направите документ само за четене, за да ограничите редактирането, като използвате свойството [ReadOnlyRecommended](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_readonlyrecommended/) и метода [SetPassword](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

В Microsoft Word можете да създадете документ само за четене по подобен начин, като използвате и двете:

* "Винаги Отваряйте Само За Четене "(Файл → Информация → Защитен Документ)
* "Парола за промяна" (Запазване като → Инструменти → Общи Опции → парола)

{{% /alert %}}

{{% alert color="primary" %}}

Потребителите могат също да ограничат редактирането на документи, като изберат [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/) като **ReadOnly**, но това е друга функция, която осигурява по-разширени възможности за защита. Има такава функция в Microsoft Word, съответно, тя се изпълнява в Aspose.Words.

**ProtectionType**

{{% /alert %}}

Собствеността **ReadOnlyRecommended** е защитена с парола, така че ако не зададете парола, преди да приложите свойството **ReadOnlyRecommended**, другите потребители могат просто да отворят документа, сякаш е незащитен. Можете да получите достъп до настройките за защита на документа и да зададете парола за защита на запис чрез метода **SetPassword**.

{{% alert color="primary" %}}

Обърнете внимание, че зададената парола е само свойство в документ, който може да бъде премахнат, ако са достъпни свойствата на документа. Съответно, такава парола не е гаранция за сигурността на документа.

{{% /alert %}}

Ако трябва да проверите дали даден документ има парола за защита от запис, която го ограничава от редактиране, можете да използвате свойството [IsWriteProtected](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_iswriteprotected/).

Следващият пример за код показва как да направите документ само за четене:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.h" >}}

## Премахване На Ограничение Само За Четене

Ако не искате даден потребител да отвори документа ви само за четене, можете просто да зададете свойството **ReadOnlyRecommened** на *false* или да изберете **ProtectionType** като **NoProtection**.

Следният пример за код показва как да премахнете достъпа само за четене за документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.h" >}}

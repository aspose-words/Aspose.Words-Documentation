---
title: Отваряне на документ само в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Отваряне на документ само за четене
linktitle: Отваряне на документ само за четене
description: "Направете документа само за четене, така че съдържанието да може да се копира или чете, но не се променя с помощта на Python."
type: docs
weight: 10
url: /bg/python-net/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Понякога може да имате документ, който се нуждае от преглед, но не искате рецензентите да променят произволно съдържанието ви. Aspose.Words позволява да направите разрешението на вашия документ само за четене, така че съдържанието да може да се копира или чете, но не и да се променя. Това ще попречи съдържанието да бъде премахнато или добавено към вашия документ.

{{% alert color="primary" %}}

Прилагането на опцията само за четене във вашия документ не пречи на някой да създаде ново копие от нея и да я запази с друго име.

{{% /alert %}}

Тази статия обяснява как да се направи документ само за четене.

## Само за четене на документ

Aspose.Words има обществена класа [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/) което определя настройките за защита на запис за документ. Вие не създавате директно случаи от този клас.

Защитата от писане показва дали авторът е препоръчал отваряне на документ само за четене и/или изискване на парола за промяна на документа.

Aspose.Words позволява да направите документ само за четене, за да ограничите редактирането чрез използване на [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) собственост и [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/) метод.

{{% alert color="primary" %}}

В Microsoft Word, можете да създадете документ само за четене по подобен начин, като използвате и двете:

* "Винаги отваряй само за четене" (Архив → Информация → Защита на документ)
* " Парола за промяна" (Запази като → Инструменти → Общи опции → Парола)

{{% /alert %}}

{{% alert color="primary" %}}

Потребителите също могат да ограничат редактирането на документи чрез избор [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) като [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only), Но това е друга функция, която осигурява по-напреднали възможности за защита. Има такава функция в Microsoft Word, се прилага съответно в Aspose.Words.

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) ще бъдат описани подробно в една от следните статии год.

{{% /alert %}}

На [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) Имотът е защитен с парола, така че ако не зададете парола преди да приложите [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) собственост, след това други потребители могат просто да отворят документа сякаш е незащитен. Достъп до настройките за защита на документа и задаване на парола за защита на запис [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/) метод.

{{% alert color="primary" %}}

Имайте предвид, че настройката на паролата е просто свойство в документ, който може да бъде премахнат, ако свойствата на документа са достъпни. Съответно такава парола не е гаранция за сигурността на документа.

{{% /alert %}}

Ако трябва да проверите дали документът има парола за защита на запис, която го ограничава от редактиране, можете да използвате [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/) собственост.

Следният пример с код показва как се прави документ само за четене:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.write("Open document as read-only")

# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Make the document as read-only.
doc.write_protection.read_only_recommended = True

# Apply write protection as read-only.
doc.protect(aw.ProtectionType.READ_ONLY)
doc.save(docs_base.artifacts_dir + "DocumentProtection.ReadOnlyProtection.docx")
{{< /highlight >}}

## Премахване на ограничение само за четене

Ако не искате потребител да отвори документа си само за четене, можете просто да зададете [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) собственост на `False` или изберете [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) като [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection).

Следният пример за код показва как да се премахне достъпът само за четене за документ:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
            
# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Remove the read-only option.
doc.write_protection.read_only_recommended = False

# Apply write protection without any protection.
doc.protect(aw.ProtectionType.NO_PROTECTION)
doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveReadOnlyRestriction.docx")
{{< /highlight >}}

---
title: Ограничителен документ Редактиране C#
second_title: Aspose.Words вместо .NET
articleTitle: Редактиране на ограничен документ
linktitle: Редактиране на ограничен документ
description: "Ограничаване на редактиране на документ чрез задаване на тип ограничение, като се използва C#. Можете също така да премахнете защитата и да направите неограничени региони за редактиране."
type: docs
weight: 30
url: /bg/net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Понякога може да се наложи да ограничите възможността за редактиране на документ и да позволите само определени действия с него. Това може да бъде полезно за предотвратяване на други хора да редактират чувствителна и поверителна информация във вашия документ.

Aspose.Words позволява да ограничите редактирането на документ чрез поставяне на тип ограничение. Освен това, Aspose.Words Също така ви позволява да зададете настройки за защита на запис за документ.

Тази статия обяснява как да използвате Aspose.Words да изберете тип ограничение, как да добавите или премахнете защита, и как да направите неограничени редактирани региони.

## Избор на тип на ограничения за редактиране

Aspose.Words позволява да контролирате начина, по който ограничавате съдържанието чрез [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) параметър за изброяване. Това ще ви позволи да изберете точния тип защита, като например:

* AllowOnlyComments
* Позволявам само FormFields
* AllowOnlyRevisions
* ReadOnly
* Без защита

Всички видове са сигурни с парола и ако тази парола не е въведена правилно, потребителят няма да може законно да промени съдържанието на вашия документ. Така че, ако документът ви бъде върнат без изискване за предоставяне на необходимата парола, това е знак, че нещо не е наред.

Ако не сте задали парола при избора на типа сигурност, други потребители могат просто да игнорират защитата на вашия документ.

{{% alert color="primary" %}}

Имайте предвид, че настройката на паролата е просто свойство в документ, който може да бъде премахнат, ако свойствата на документа са достъпни. Съответно такава парола не е гаранция за сигурността на документа. На [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) методът показва точно това.

{{% /alert %}}

## Добавяне на защита на документа

Добавянето на защита към вашия документ е прост процес, тъй като всичко, което трябва да направите, е да приложите един от методите за защита, описани в този раздел.

Aspose.Words Ви позволява да защитите Вашите документи от промени, използващи [Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/) метод. Този метод не е функция за сигурност и не криптира документ.

{{% alert color="primary" %}}

В Microsoft Word, можете да ограничите редактирането по подобен начин, като използвате и двете:

* Ограничително редактиране (Архив → Информация → Защита на документ)
* Алтернативна функция год

{{% /alert %}}

Следният пример за код показва как да добавите парола защита към вашия документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

Следният пример за код показва как да се ограничи редактирането в документ, така че е възможно само редактиране във форма на полета:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## Премахване на защитата на документа

Aspose.Words ви позволява да премахнете защитата от документ с проста и директна промяна на документа. Можете или да премахнете защитата на документа, без да знаете действителната парола или да предоставите правилната парола за отключване на документа чрез използване на [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) метод. И двата начина за премахване нямат значение.

Следният пример за код показва как да премахнете защитата от вашия документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## Посочват се неограничените редактирани региони

Можете да ограничите редактирането на вашия документ и същевременно да позволите промени в избрани части от него. Така че всеки, който отвори документа ви, ще има достъп до тези неограничени части и ще направи промени в съдържанието.

Aspose.Words позволява да маркирате частите, които могат да бъдат променени във вашия документ с помощта на [StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/) както и [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/) методи.

Следният пример за код показва как да се маркира целият документ като само за четене и да се определят регионите, които могат да бъдат редактирани в него:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

Можете също така да изберете различни ограничения за редактиране на документи за различни раздели.

Следният пример за код показва как да се добави ограничение за целия документ и след това да се премахне ограничението за един от разделите:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}

---
title: Ограничителен документ Редактиране Java
second_title: Aspose.Words вместо Java
articleTitle: Редактиране на ограничен документ
linktitle: Редактиране на ограничен документ
description: "Ограничаване на редактирането на документ чрез поставяне на тип ограничение. Можете също така да премахнете защитата и да направите неограничени редактирани региони, използвайки Java."
type: docs
weight: 30
url: /bg/java/restrict-document-editing/
---

Понякога може да се наложи да ограничите възможността за редактиране на документ и да позволите само определени действия с него. Това може да бъде полезно за предотвратяване на други хора да редактират чувствителна и поверителна информация във вашия документ.

Aspose.Words позволява да ограничите редактирането на документ чрез поставяне на тип ограничение. Освен това, Aspose.Words също така ви позволява да зададете настройки за защита на запис за документ.

Тази статия обяснява как да използвате Aspose.Words да изберете тип ограничение, как да добавите или премахнете защитата и как да направите неограничени редактиращи се региони.

## Избор на тип на ограничения за редактиране

Aspose.Words позволява да контролирате начина, по който ограничавате съдържанието, като използвате [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) параметър за изброяване. Това ще ви позволи да изберете точния тип защита като:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* Без защита

Всички типове са сигурни с парола и ако тази парола не е въведена правилно, потребителят няма да може законно да промени съдържанието на вашия документ. Така че, ако документът ви е върнат без изискване за предоставяне на необходимата парола, това е знак, че нещо не е наред.

Ако не сте задали парола при избора на типа сигурност, други потребители могат просто да игнорират защитата на вашия документ.

{{% alert color="primary" %}}

Имайте предвид, че настройката на паролата е просто свойство в документ, който може да бъде премахнат, ако свойствата на документа са достъпни. Съответно такава парола не е гаранция за сигурността на документа. На [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) методът показва точно това.

{{% /alert %}}

## Добавяне на защита на документа

Добавянето на защита към вашия документ е прост процес, тъй като всичко, което трябва да направите, е да приложите един от методите за защита, описани в този раздел.

Aspose.Words Ви позволява да защитите Вашите документи от промени с помощта на [Protect](https://reference.aspose.com/words/java/com.aspose.words/document/#protect-int) метод. Този метод не е функция за сигурност и не криптира документ.

{{% alert color="primary" %}}

В Microsoft Word, можете да ограничите редактирането по подобен начин, като използвате и двете:

* Ограничено редактиране (Архив → Информация → Защита на документ)
* Алтернативна функция. 

{{% /alert %}}

Следният пример за код показва как да добавите парола защита към вашия документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-PasswordProtection.java" >}}

Следният пример за код показва как да се ограничи редактирането в документ, така че е възможно само редактиране във форма полета:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-AllowOnlyFormFieldsProtect.java" >}}

## Премахване на защитата на документа

Aspose.Words ви позволява да премахнете защитата от документ с проста и директна промяна на документа. Можете или да премахнете защитата на документа, без да знаете действителната парола или да предоставите правилната парола за отключване на документа чрез използване на [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) метод. И двата начина за премахване нямат значение.

Следният пример за код показва как да премахнете защитата от вашия документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveDocumentProtection.java" >}}

## Посочват се неограничените редактиращи се региони

Можете да ограничите редактирането на вашия документ и същевременно да позволите промени в избрани части от него. Така че всеки, който отвори документа ви, ще има достъп до тези неограничени части и ще направи промени в съдържанието.

Aspose.Words ви позволява да маркирате частите, които могат да бъдат променени във вашия документ с помощта на [StartEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startEditableRange) както и [EndEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endEditableRange) методи.

Следният пример за код показва как да се маркира целият документ като само за четене и да се определят регионите, които могат да бъдат редактирани в него:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedEditableRegions.java" >}}

Можете също така да изберете различни ограничения за редактиране на документи за различни раздели.

Следният пример за код показва как да се добави ограничение за целия документ и след това да се премахне ограничението за един от разделите:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedSection.java" >}}

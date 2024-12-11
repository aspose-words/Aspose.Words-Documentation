﻿---
title: Mail Merge шаблон в C#
second_title: Aspose.Words за .NET
articleTitle: Mail Merge шаблон
linktitle: Mail Merge шаблон
type: docs
description: "Създайте шаблон Mail Merge, за да дефинирате фиксирано съдържание в изходните документи и след това генерирайте документите за обединяване, като използвате полетата за обединяване в C#."
keywords: "create Mail Merge template с#"
weight: 10
url: /bg/net/mail-merge-template/
timestamp: 2024-07-11-08-07-06
---

Обичайно е да се използва шаблон за обединяване като основен документ за операция Mail Merge, ако е прост Mail Merge или Mail Merge С региони. Mail merge с региони е по-мощен и популярен от прост mail merge. Обикновено Mail Merge се счита за конкретен случай на Mail Merge С региони, където регионът е целият документ. Всичко е обяснено в следващата статия "Видове операции Mail Merge" по-подробно.

Шаблонът гарантира, че текстът в изходния обединен документ е форматиран правилно, а операцията Mail Merge гарантира, че текстът от източника на данни е правилно въведен в шаблона за обединяване.

Aspose.Words предоставя възможност за създаване на Mail Merge шаблон за дефиниране на фиксирано съдържание и след това генериране на документи за обединяване с помощта на полетата за обединяване. По този начин шаблонът за обединяване ще има необходимия текст, който е един и същ във всички изходни документи, и полетата за обединяване, които да попълват променящото се съдържание. В резултат на това информацията от посочения източник на данни ще бъде добавена към шаблона за обединяване чрез тези полета по време на генерирането на Обединения документ.

## Какво е Mail Merge шаблон

Шаблон Mail Merge е персонализиран документ, който съдържа фиксирани данни и Обединени полета, където искате променливият текст да бъде. Шаблон за обединяване може да бъде във всеки формат, който поддържа полета, например, DOC, DOCX, DOT, DOTX, RTF. Освен това можете да използвате шаблона mustache, който е обяснен в статията "Mustache синтаксис на шаблона" по-подробно.

Можете да създадете шаблон за обединяване, за да бъде модел за нови документи и той трябва да включва основния текст, който трябва да бъде един и същ за всяка версия на Обединения документ. Добавянето на полета за обединяване в шаблона ще представлява данните за персонализиране, като например имена или адреси, които са извлечени от източник на данни. Операция Mail Merge автоматично ще вмъкне данните за персонализиране от вашия източник на данни в документа за циркулярен шаблон.

Освен това можете да добавите регион Mail Merge във вашия шаблон, като вмъкнете две полета Mail Merge, за да маркирате началото и края на региона за поща. Следващата статия "Видове операции Mail Merge" обяснява това по-подробно.

## Създайте шаблон Mail Merge

Можете да създадете шаблон и да добавите конкретни полета за обединяване към него, които ще бъдат заменени със стойностите от източника на данни или ръчно, например, използвайки Microsoft Word, или програмно използвайки Aspose.Words. В тази статия ще разгледаме програмния начин за създаване на шаблон.

Използвайте класа [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), за да създадете необходимия шаблон за обединяване, като използвате Aspose.Words. Можете да включите текст, поле за обединяване и нов ред в такъв шаблон, като използвате методите [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) и [InsertParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertparagraph/).

Следващият пример за код показва как да създадете шаблон Mail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "create-mail-merge-template.cs" >}}

Снимката по-долу показва създадения шаблон:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Персонализиране на свойствата на шаблон Mail Merge

Aspose.Words Позволява ви да персонализирате шаблона си чрез много свойства. Персонализирането на шаблона ще бъде описано по-долу чрез пример за персонализиране на някои свойства на изображения и текст.

### Персонализиране На Свойствата На Изображенията

Можете да зададете свойствата на изображението, като използвате класа [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/). Обърнете внимание, че можете да вмъкнете изображение от база данни, както е описано в [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L214).

Следният пример за код показва как да зададете името на файла на изображението и размера на изображението:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "image-field-merging.cs" >}}

### Персонализиране На Свойствата На Текста

Можете да използвате свойството [Text](https://reference.aspose.com/words/net/aspose.words.mailmerging/fieldmergingargs/text/), за да вмъкнете текст в документа за текущото Обединено поле. Също така можете да промените форматирането на текстове и абзаци във вашия шаблон, като използвате класове [Font](https://reference.aspose.com/words/net/aspose.words/font/) и [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/). Можете да се справите с текста, който трябва да бъде вмъкнат преди или след полето за обединяване, като използвате свойствата [TextBefore](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textbefore/) и [TextAfter](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textafter/), които са включени в класа [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/).

Следващият пример за код показва как да вмъквате квадратчета за отметка или HTML по време на операция Mail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

Можете също така да проверите изпълнението на `HandleMergeField` клас от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/828b58e207e96afa624956867ec9c777fa10af87/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L43).

{{% /alert %}}

## Вижте Също

* За повече подробности относно това как да създавате шаблони в Microsoft Word ръчно, моля, проверете [Създаване на шаблон](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) член в Microsoft документация
---
title: Работа с хипервръзки
second_title: Aspose.Words вместо Python via .NET
articleTitle: Добавяне или промяна на хипервръзки
linktitle: Добавяне или промяна на хипервръзки
description: "Добавяне, заместване или промяна на хипервръзка в документ, използвайки Python."
type: docs
weight: 50
url: /bg/python-net/working-with-hyperlinks/
---

Хипервръзка Microsoft Word документите са `HYPERLINK` поле. В Aspose.Words, хипервръзките се осъществяват чрез [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) Клас.

## Вмъкване на хипервръзка

Използвайте [insert_hyperlink](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_hyperlink/) метод за въвеждане на хипервръзка в документа. Този метод приема три параметъра:

1. Текст на връзката, която ще бъде показана в документа
2. Link дестинация (URL или име на отметки в документа)
3. Булев параметър, който трябва да бъде true ако `URL` е име на отметки в документ

На **InsertHyperlink** метод винаги добавя apostrophes в началото и края на URL.

{{% alert color="primary" %}}

Имайте предвид, че трябва да зададете форматиране на шрифта за текста на хипервръзката, като изрично използвате `Font` собственост.

{{% /alert %}}

Следният пример за код показва как да се вмъкне хипервръзка в документ, като се използва [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHyperlink.py" >}}

## Замяна или промяна на хипервръзки

Хипервръзка Microsoft Word Документите са поле. Поле в документ на Word е сложна структура, състояща се от множество възли, които включват старт на полето, код на полето, разделител на полето, резултат на полето и край на полето. Полетата могат да се гнездят, да съдържат богато съдържание и да обхващат няколко параграфа или раздели в документ

За да се заменят или променят хипервръзките, трябва да се намерят хипервръзките в документа и да се заменят техните текст, URL адреси или и двете.

Следният пример за код показва как да намерите всички хипервръзки в Word документа и да промените техните `URL` и име на екрана:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ReplaceHyperlinks.py" >}}

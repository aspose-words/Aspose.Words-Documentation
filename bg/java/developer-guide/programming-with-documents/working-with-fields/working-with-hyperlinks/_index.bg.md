---
title: Работа с хипервръзки в Java
second_title: Aspose.Words вместо Java
articleTitle: Добавяне или промяна на хипервръзки
linktitle: Добавяне или промяна на хипервръзки
description: "Как да добавите хипервръзка в документа си, използвайки Java."
type: docs
weight: 50
url: /bg/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Хипервръзка Microsoft Word документите са `HYPERLINK` Поле. В Aspose.Words, хипервръзките се осъществяват чрез [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) Клас.

## Вмъкване на хипервръзка

Използвайте [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) метод за въвеждане на хипервръзка в документа. Този метод приема три параметъра:

1. Текст на връзката, която ще бъде показана в документа
2. Адрес на връзка (URL или име на отметки вътре в документа)
3. Булев параметър, който трябва да бъде true ако `URL` е име на отметки в документ

На **InsertHyperlink** метод винаги добавя apostrophes в началото и края на URL

{{% alert color="primary" %}}

Имайте предвид, че трябва да зададете форматиране на шрифта за текста на хиперлинк дисплея изрично с помощта на `Font` собственост.

{{% /alert %}}

Следният пример за код показва как да се въведе хипервръзка в документ, като се използва [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Замяна или промяна на хипервръзки

Хипервръзка Microsoft Word Документите са поле. Поле в Word документ, както казахме по-рано, е сложна структура, състояща се от множество възли, които включват старт на полето, код на полето, разделител на полето, резултат на полето и край на полето. Полетата могат да бъдат гнездени, да съдържат богато съдържание и да обхващат няколко параграфа или раздели в документ.

За да се заменят или променят хипервръзките, е необходимо да се намерят хипервръзките в документа и да се заменят техните текстове, URL адреси или и двете.

Следният пример за код показва как да намерите всички хипервръзки в Word документа и да промените техните `URL` и име на дисплея:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}

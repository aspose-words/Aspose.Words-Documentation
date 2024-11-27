---
title: Работа с хипервръзки в C++
second_title: Aspose.Words за C++
articleTitle: Добавяне или промяна на хипервръзки
linktitle: Добавяне или промяна на хипервръзки
description: "Как да добавите хипервръзка към вашия документ, като използвате Aspose.Words за C++."
type: docs
weight: 180
url: /bg/cpp/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Хипервръзка в документите Microsoft Word е полето `HYPERLINK`. В Aspose.Words хипервръзките се изпълняват чрез класа [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/).

## Вмъкване на хипервръзка

Използвайте метода [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/), за да вмъкнете хипервръзка в документа. Този метод приема три параметъра:

1. Текст на връзката, която се показва в документа
2. Местоназначение на връзката (URL или име на отметка в документа)
3. Булев параметър, който трябва да е верен, ако `URL` е име на отметка в документа

Методът **InsertHyperlink** винаги добавя апострофи в началото и края на URL.

{{% alert color="primary" %}}

Обърнете внимание, че трябва да зададете форматиране на шрифта за текста на хипервръзката, като изрично използвате свойството `Font`.

{{% /alert %}}

Следващият пример за код показва как да вмъкнете хипервръзка в документ, като използвате [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Замяна или промяна на хипервръзки

Хипервръзката в документите Microsoft Word е поле. Поле в документ Word е сложна структура, състояща се от множество възли, които включват начало на поле, Код на поле, разделител на поле, резултат на поле и край на поле. Полетата могат да бъдат вложени, да съдържат богато съдържание и да обхващат няколко абзаца или секции в документ.

Класът `FieldHyperlink` изпълнява полето `HYPERLINK`.

Следващият пример за код показва как да намерите всички хипервръзки в документа Word и да промените тяхното `URL` и показваното име:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}

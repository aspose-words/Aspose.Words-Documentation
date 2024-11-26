---
title: Изтриване на документ в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Изтриване на документ
linktitle: Изтриване на документ
description: "Премахване на неизползвана или дублирана информация за намаляване размера на изхода и времето за обработка с помощта на Python. Премахване на неизползвани стилове, неизползвани вградени стилове, дублирани стилове или неизползвани списъци."
type: docs
weight: 30
url: /bg/python-net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Понякога може да се наложи да премахнете неизползвана или дублирана информация, за да намалите размера на изходния документ и времето за обработка.

Докато можете да намерите и премахнете неизползваните данни, като стилове или списъци, или да дублирате информацията ръчно, ще бъде много по-удобно да направите това чрез функции и възможности, предоставени от Aspose.Words.

На [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) клас ви позволява да посочите опции за почистване на документи. За да премахнете дублираните стилове или просто неизползваните стилове или списъци от документа, можете да използвате [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/) метод.

## Премахване на неизползвана информация от документ

Можеш да използваш [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) както и [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) свойства за откриване и премахване на стилове, които са маркирани като "неизползваеми."

Можеш да използваш [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) свойство за откриване и премахване на списъци и списъци с определения, които са маркирани като "неизползваеми."

Следният пример за код показва как да премахнете само неизползвани стилове от документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## Премахване на Дублиране на информация от документ

Можете също така да използвате [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) Имотът да замени всички дублирани стилове с оригиналния и да премахне дубликати от документ.

Следният пример за код показва как да премахнете дублираните стилове от документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}

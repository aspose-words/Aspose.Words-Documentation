---
title: Изтриване на документ в C#
second_title: Aspose.Words вместо .NET
articleTitle: Изтриване на документ
linktitle: Изтриване на документ
description: "Премахване на неизползвана или дублирана информация за намаляване размера на изхода и времето за обработка с помощта на C#. Премахване на неизползвани стилове, неизползвани вградени стилове, дублирани стилове или неизползвани списъци."
type: docs
weight: 30
url: /bg/net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Понякога може да се наложи да премахнете неизползвана или дублирана информация, за да намалите размера на изходния документ и времето за обработка.

Докато можете да намерите и премахнете неизползваните данни, като стилове или списъци, или да дублирате информацията ръчно, ще бъде много по-удобно да направите това чрез функции и възможности, предоставени от Aspose.Words.

На [CleanupOptions](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/) клас ви позволява да посочите опции за почистване на документи. За да премахнете дублираните стилове или просто неизползваните стилове или списъци от документа, можете да използвате [Cleanup](https://reference.aspose.com/words/net/aspose.words/document/cleanup/) метод.

## Премахване на неизползвана информация от документ

Можеш да използваш [UnusedStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedstyles/) както и [UnusedBuiltinStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) свойства за откриване и премахване на стилове, които са маркирани като "неизползваеми."

Можеш да използваш [UnusedLists](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedlists/) свойство за откриване и премахване на списъци и списъци с определения, които са маркирани като "неизползваеми."

Следният пример за код показва как да премахнете само неизползвани стилове от документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## Премахване на Дублиране на информация от документ

Можете също така да използвате [DuplicateStyle](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/duplicatestyle/) Имотът да замени всички дублирани стилове с оригиналния и да премахне дубликати от документ.

Следният пример за код показва как да премахнете дублираните стилове от документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}

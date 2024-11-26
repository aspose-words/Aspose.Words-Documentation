---
title: Изчистване на документ в C++
second_title: Aspose.Words за C++
articleTitle: Почистване на документ
linktitle: Почистване на документ
description: "Премахнете неизползваната или дублираща се информация, за да намалите размера на изхода и времето за обработка, като използвате C++. Премахване на неизползвани стилове, неизползвани вградени стилове, дублирани стилове или неизползвани списъци."
type: docs
weight: 30
url: /bg/cpp/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Понякога може да се наложи да премахнете неизползвана или дублирана информация, за да намалите размера на изходния документ и времето за обработка.

Въпреки че можете да намирате и премахвате неизползвани данни, като например стилове или списъци, или ръчно да дублирате информация, ще бъде много по-удобно да направите това, като използвате функции и възможности, предоставени от Aspose.Words.

Клас [CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options) ви позволява да зададете опции за почистване на документи. За да премахнете дублиращи се стилове или само неизползвани стилове или списъци от документа, можете да използвате метода [Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/).

## Премахване на неизползвана информация от документ

Можете да използвате свойствата [UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/) и [UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/) за откриване и премахване на стилове, които са маркирани като "неизползвани".

Можете да използвате свойството [UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/) за откриване и премахване на списъци и дефиниции на списъци, които са маркирани като "неизползвани".

Следващият пример за код показва как да премахнете само неизползваните стилове от документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## Премахване на дублираща се информация от документ

Можете също да използвате свойството [DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/), за да заместите всички дублирани стилове с оригиналния и да премахнете дубликати от документ.

Следващият пример за код показва как да премахнете дублиращи се стилове от документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}

---
title: Изтриване на документ в Java
second_title: Aspose.Words вместо Java
articleTitle: Изтриване на документ
linktitle: Изтриване на документ
description: "Премахване на неизползвана или дублирана информация за намаляване на размера на изхода и времето за обработка. Премахване на неизползвани стилове, неизползвани вградени стилове, дублирани стилове или неизползвани списъци, като се използва Java."
type: docs
weight: 30
url: /bg/java/clean-up-a-document/
---

Понякога може да се наложи да премахнете неизползвана или дублирана информация, за да намалите размера на изходния документ и времето за обработка.

Докато можете да намерите и премахнете неизползваните данни, като стилове или списъци, или да дублирате ръчно информацията, ще бъде много по-удобно да направите това чрез функции и възможности, предоставени от Aspose.Words.

На [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) клас ви позволява да посочите опции за почистване на документи. За да премахнете дублираните стилове или просто неизползваните стилове или списъци от документа, можете да използвате [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) метод.

## Премахване на неизползвана информация от документ

Можеш да използваш [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) както и [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) свойства за откриване и премахване на стилове, които са маркирани като "неизползваеми."

Можеш да използваш [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) свойство за откриване и премахване на списъци и списъци с определения, които са отбелязани като "неизползваеми."

Следният пример за код показва как да премахнете само неизползвани стилове от документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Премахване на Дублиране на информация от документ

Можете също така да използвате [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) свойство за заместване на всички дублирани стилове с оригиналния и премахване на дубликати от документ.

Следният пример за код показва как да премахнете дублираните стилове от документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}

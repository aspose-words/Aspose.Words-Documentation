---
title: Работа с контролни знаци
second_title: Aspose.Words вместо Java
articleTitle: Работа с контролни знаци
linktitle: Работа с контролни знаци
description: "Въведение в работата с контролни знаци в Aspose.Words вместо Java."
type: docs
weight: 400
url: /bg/java/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word документите могат да съдържат различни знаци, които имат специално значение. Обикновено те се използват за форматиране на цели и не са съставени в нормалния режим. Можете да ги направите видими, ако кликнете върху бутона Show/Hide Formating Marks, разположен на лентата със стандартни инструменти.

Понякога може да се наложи да добавите или премахнете символи към/от текста. Например, когато получавате текстова програма от документа, Aspose.Words запазва по-голямата част от контролните знаци, така че ако имате нужда да работите с този текст, вероятно трябва да премахнете или замените символите.

На [ControlChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) клас е хранилище за константите, които представляват контролни знаци, често срещани в документи. Тя осигурява както char, така и string версии на едни и същи константи. Например, низ [LineBreak](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK) и Шар. [LineBreakChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK_CHAR) има същата стойност.

{{% alert color="primary" %}}

Използвайте този клас, когато искате да се справите с контролните знаци.

{{% /alert %}}

Следният пример с код показва как се използват контролните знаци:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-UseControlCharacters.java" >}}

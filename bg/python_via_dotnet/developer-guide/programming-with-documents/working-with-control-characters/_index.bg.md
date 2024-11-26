---
title: Работа с контролни знаци
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с контролни знаци
linktitle: Работа с контролни знаци
description: "Въведение в работата с контролни знаци в Aspose.Words вместо Python."
type: docs
weight: 400
url: /bg/python-net/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word документите могат да съдържат различни знаци, които имат специално значение. Обикновено те се използват за форматиране на цели и не се изготвят в нормалния режим. Можете да ги направите видими, ако кликнете върху бутона Show/Hide Formating Marks, разположен на лентата със стандартни инструменти.

Понякога може да се наложи да добавите или премахнете символите към/от текста. Например, когато получава текстова програма от документа, Aspose.Words запазва по-голямата част от контролните знаци, така че ако имате нужда да работите с този текст, вероятно трябва да премахнете или замените символите.

На [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) класът е хранилище за константите, които представляват контролни знаци, често срещани в документи. Тя осигурява както char, така и string версии на едни и същи константи. Например, низ [ControlChar.LINE_BREAK](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break) и Шар. [ControlChar.LINE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break_char) има същата стойност.

Следният пример с код показва как се използват контролните знаци:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-UseControlCharacters.py" >}}

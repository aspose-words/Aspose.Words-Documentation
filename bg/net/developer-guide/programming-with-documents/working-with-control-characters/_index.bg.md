---
title: Работа с контролни знаци
second_title: Aspose.Words вместо .NET
articleTitle: Работа с контролни знаци
linktitle: Работа с контролни знаци
description: "Въведение в работата с контролни знаци в Aspose.Words вместо .NET."
type: docs
weight: 400
url: /bg/net/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word документите могат да съдържат различни знаци, които имат специално значение. Обикновено те се използват за форматиране на цели и не се изготвят в нормалния режим. Можете да ги направите видими, ако кликнете върху бутона Show/Hide Formating Marks, разположен на лентата със стандартни инструменти.

Понякога може да се наложи да добавите или премахнете символите към/от текста. Например, когато получава текстова програма от документа, Aspose.Words запазва по-голямата част от контролните знаци, така че ако имате нужда да работите с този текст, вероятно трябва да премахнете или замените символите.

На [ControlChar](https://reference.aspose.com/words/net/aspose.words/controlchar/) класът е хранилище за константите, които представляват контролни знаци, често срещани в документи. Тя осигурява както char, така и string версии на едни и същи константи. Например, низ [LineBreak](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreak/) и Шар. [LineBreakChar](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreakchar) има същата стойност.

Следният пример с код показва как се използват контролните знаци:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cs" >}}/words/net/working-with-content-control-sdt/)

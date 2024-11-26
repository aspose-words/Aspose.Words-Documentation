---
title: Конвертиране между измервателните единици
second_title: Aspose.Words вместо Python via .NET
articleTitle: Конвертиране между измервателните единици
linktitle: Конвертиране между измервателните единици
description: "Aspose.Words вместо Python via .NET може да ви помогне как да конвертирате между измервателните единици, например, инча към точки и точки към инча, пиксели към точки, точки към пиксели."
type: docs
weight: 20
url: /bg/python-net/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

Повечето от обектите свойства, предвидени в Aspose.Words API които представляват някои измервания, като ширина или височина, граници и различни разстояния, приемат стойности в точки, където 1 инч е равно на 72 точки. Понякога това не е удобно и точки трябва да бъдат превърнати в други единици.

Aspose.Words осигурява [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) клас, който осигурява помощни функции за преобразуване между различни измервателни единици. Тя позволява преобразуване на инча, пиксели и милиметри към точки, точки към инча и пиксели, и конвертиране на пиксели от една резолюция в друга. Конвертиране на пикселите в точки и обратно може да се извърши при 96 dpi (дот на инч) резолюции или определена dpi резолюция.

На [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) класът е особено полезен при задаване на различни свойства на страниците, защото, например, инча са по-чести измервателни единици, отколкото точки.

Следният пример за код показва как да се определят свойствата на страницата в инча:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConvertBetweenMeasurementUnits.py" >}}

---
title: Как да добавите Group Shape в документ Word
second_title: Aspose.Words за C++
articleTitle: Работа с Group Shapes в Word Документи
linktitle: Работа с Group Shapes в Word Документи
description: "Групиране и Разгрупиране на фигури с C++."
type: docs
weight: 290
url: /bg/cpp/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Понякога трябва да добавите group shape в документ Word. Такова group shape се състои от множество форми.

В Microsoft Word можете бързо да добавите group shape, като използвате груповата команда/бутон. Индивидуална форма в група може да бъде преместена отделно.

В Aspose.Words е много лесно да добавите group shape, като използвате [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) класа. Фигурата се създава отделно, като се използва клас [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) и след това се добавя към обекта **GroupShape**, като се използва методът [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/).

Следващият пример за код показва как да добавите group shape в документ Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

По-долу са някои от видовете `Shape`, поддържани в Aspose.Words. За пълния списък, моля посетете [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

- Правоъгълник
- RoundRectangle
- RoundRectangle
- Елипса
- Диамант
- Триъгълник
- RightTriangle
- Паралелограм
- Трапец
- Шестоъгълник
- Осмоъгълник

{{% /alert %}}

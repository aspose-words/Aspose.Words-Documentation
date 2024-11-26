---
title: Как да добавите Group Форма в Word файл
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с Group Форма в текстови документи
linktitle: Работа с Group Форма в текстови документи
description: "Добавяне group shape в документ, използващ Python."
type: docs
weight: 290
url: /bg/python-net/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Понякога трябва да добавите group shape в документ на Word. - group shape се състои от множество форми.

В Microsoft Word, Можете бързо да добавите group shape с помощта на Group команда/бутон. Индивидуална форма в група може да бъде преместена отделно.

В Aspose.Words е много лесно да се добави group shape приложение [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) Клас. Форма се създава отделно с помощта на [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) клас и след това добавен в [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) Използване на обект [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) метод.

Следният пример с код показва как да добавите a group shape в документ на Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

По- долу са някои от `Shape` типове поддържани в Aspose.Words. За пълния списък, моля вижте [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/) изброяване

- [Rectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#rectangle)
- [RoundRectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#round_rectangle)
- [Ellipse](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#ellipse)
- [Diamond](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diamond)
- [Triangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#triangle)
- [RightTriangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#right_triangle)
- [Parallelogram](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#parallelogram)
- [Trapezoid](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#trapezoid)
- [Hexagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#hexagon)
- [Octagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#octagon)

{{% /alert %}}

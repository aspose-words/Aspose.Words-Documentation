---
title: Как да добавите Group Форма в документ с думи
second_title: Aspose.Words вместо .NET
articleTitle: Как да добавите Group Форма в документ с думи
linktitle: Работа с Group Форма в Word Documents
description: "GroupИнг и разгрупиране на форми, използвайки C#."
type: docs
weight: 290
url: /bg/net/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Понякога трябва да добавите group shape в документ на Word. - group shape се състои от множество форми.

В Microsoft Word, Можете бързо да добавите group shape с помощта на Group команда/бутон. Индивидуална форма в група може да бъде преместена отделно.

В Aspose.Words е много лесно да се добави group shape с помощта на [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) Клас. **Shape** е създаден отделно с помощта на [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) клас и след това добавен към [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) обект с използване на [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) метод.

Следният пример с код показва как да добавите a group shape в документ на Word:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

По- долу са някои от `Shape` типове поддържани в Aspose.Words:

- Правоъгълник
- RoundRectangle
- RoundRectangle
- Елипса
- Диамант
- Триъгълник
- RightTrigle
- Паралелнаграма
- Трапезоид
- Хексагон
- Октагон

За пълен списък, моля проверете [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype) Клас.

{{% /alert %}}

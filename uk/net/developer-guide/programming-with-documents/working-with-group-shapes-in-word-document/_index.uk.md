---
title: Як додати Group Форма в документ Word
second_title: Aspose.Words для .NET
articleTitle: Як додати Group Форма в документ Word
linktitle: Робота з Group Види у документах Word
description: "Groupінг і негрупування форм за допомогою C#й"
type: docs
weight: 290
url: /uk/net/how-to-add-group-shape-into-a-word-document/
---

Іноді потрібно додати group shape у документ Word. Такий group shape складається з декількох форм.

У Microsoft Word, Ви можете швидко додати group shape використання Group команда/буттон. Окрему форму в групі можна переміщати окремо.

У Aspose.Words дуже легко додати group shape використання [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) клас. **Shape** створюється окремо за допомогою [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) клас і потім додано в [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) об'єкт за допомогою [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) метод.

Приклад наступного коду показує, як додати group shape у документ Word:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

Нижче наведено деякі з `Shape` типи, що підтримуються Aspose.Words:

- прямокутник
- Круглий прямокутник
- Круглий прямокутник
- Елліпс
- Алмаз
- Трикутник
- ПравоТрикутник
- Паралелограма
- Трапеція
- Хексагон
- Октагон

Для повного списку, будь ласка, перевірте [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype) клас.

{{% /alert %}}
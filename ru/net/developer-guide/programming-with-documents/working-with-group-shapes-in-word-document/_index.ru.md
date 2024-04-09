---
title: Как добавить Group Форма в документ Word
second_title: Aspose.Words для .NET
articleTitle: Как добавить Group Форма в документ Word
linktitle: Работать с Group Формы в документах Word
description: "GroupИнг и негруппирующие формы с использованием C#."
type: docs
weight: 290
url: /ru/net/how-to-add-group-shape-into-a-word-document/
---

Иногда вам нужно добавить group shape В виде документа Word. Такой group shape состоит из нескольких форм.

В Microsoft Word, Вы можете быстро добавить group shape используя Group Команда/кнопка. Индивидуальная форма в группе может перемещаться отдельно.

В Aspose.Words Очень легко добавить group shape используя [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) класс. **Shape** создается отдельно с использованием [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) Затем класс добавляли к [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) Объект, использующий [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) метод.

Следующий пример кода показывает, как добавить group shape В документе Word:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

Ниже приведены некоторые из `Shape` Поддерживаемые типы Aspose.Words:

- Прямоугольник
- Круглый прямоугольник
- Круглый прямоугольник
- Эллипс
- Бриллиант
- Треугольник
- Правый Треугольник
- Параллелограмма
- Трапезоид
- Гексагон
- Октагон

Для полного списка, пожалуйста, проверьте [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype) класс.

{{% /alert %}}
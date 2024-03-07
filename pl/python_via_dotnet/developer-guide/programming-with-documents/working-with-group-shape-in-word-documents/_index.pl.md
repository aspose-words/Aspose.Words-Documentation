---
title: Jak dodać kształt Group do pliku Word
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z kształtem Group w dokumentach Word
linktitle: Praca z kształtem Group w dokumentach Word
description: "Dodaj group shape do dokumentu za pomocą Python."
type: docs
weight: 290
url: /pl/python-net/how-to-add-group-shape-into-a-word-document/
---

Czasami trzeba dodać plik group shape do dokumentu programu Word. Taki group shape składa się z wielu kształtów.

W Microsoft Word możesz szybko dodać group shape za pomocą polecenia/przycisku Group. Pojedynczy kształt w grupie można przenosić oddzielnie.

W Aspose.Words bardzo łatwo jest dodać group shape przy użyciu klasy [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). Kształt tworzony jest oddzielnie przy użyciu klasy [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), a następnie dodawany do obiektu [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) metodą [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

Poniższy przykład kodu pokazuje, jak dodać group shape do dokumentu programu Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

Poniżej znajdują się niektóre typy `Shape` obsługiwane w formacie Aspose.Words. Pełną listę można znaleźć w wyliczeniu [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/)

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

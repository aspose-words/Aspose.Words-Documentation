---
title: Jak dodać Group Shape do dokumentu Word
second_title: Aspose.Words dla C++
articleTitle: Praca z Group Shapes W dokumentach Word
linktitle: Praca z Group Shapes W dokumentach Word
description: "Grupowanie i rozgrupowywanie kształtów za pomocą C++."
type: docs
weight: 290
url: /pl/cpp/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Czasami musisz dodać group shape do dokumentu Word. Taki group shape składa się z wielu kształtów.

W Microsoft Word możesz szybko dodać group shape za pomocą polecenia/przycisku grupy. Indywidualny kształt w grupie można przenosić osobno.

W Aspose.Words bardzo łatwo jest dodać group shape za pomocą klasy [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/). Kształt jest tworzony osobno przy użyciu klasy [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/), a następnie dodawany do obiektu **GroupShape** przy użyciu metody [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/).

Poniższy przykład kodu pokazuje, jak dodać group shape do dokumentu Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

Poniżej znajdują się niektóre typy `Shape` obsługiwane w Aspose.Words. Aby uzyskać pełną listę, odwiedź [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

- Prostokąt
- RoundRectangle
- RoundRectangle
- Elipsa
- Diament
- Trójkąt
- RightTriangle
- Równoległobok
- Trapez
- Hexagon
- Octagon

{{% /alert %}}

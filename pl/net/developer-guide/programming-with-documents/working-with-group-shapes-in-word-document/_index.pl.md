---
title: Jak dodać kształt Group do dokumentu programu Word
second_title: Aspose.Words dla .NET
articleTitle: Jak dodać kształt Group do dokumentu programu Word
linktitle: Praca z kształtami Group w dokumentach Word
description: "Grouping i rozgrupowywanie kształtów przy użyciu C#."
type: docs
weight: 290
url: /pl/net/how-to-add-group-shape-into-a-word-document/
---

Czasami trzeba dodać plik group shape do dokumentu programu Word. Taki group shape składa się z wielu kształtów.

W Microsoft Word możesz szybko dodać group shape za pomocą polecenia/przycisku Group. Pojedynczy kształt w grupie można przenosić oddzielnie.

W Aspose.Words bardzo łatwo jest dodać group shape przy użyciu klasy [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/). **Shape** jest tworzony osobno przy użyciu klasy [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/), a następnie dodawany do obiektu [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) metodą [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/).

Poniższy przykład kodu pokazuje, jak dodać group shape do dokumentu programu Word:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

Poniżej znajdują się niektóre typy `Shape` obsługiwane w formacie Aspose.Words:

- Prostokąt
- OkrągłyProstokąt
- OkrągłyProstokąt
- Elipsa
- Diament
- Trójkąt
- Trójkąt prostokątny
- Równoległobok
- Trapez
- Sześciokąt
-Ośmiokąt

Aby uzyskać pełną listę, sprawdź klasę [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype).

{{% /alert %}}
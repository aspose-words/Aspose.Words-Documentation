---
title: Bir Word Belgesine Group Shape Nasıl Eklenir
second_title: Aspose.Words için C++
articleTitle: Word Belgelerinde Group Shapes ile Çalışma
linktitle: Word Belgelerinde Group Shapes ile Çalışma
description: "C++ kullanarak şekilleri gruplama ve gruplama."
type: docs
weight: 290
url: /tr/cpp/how-to-add-group-shape-into-a-word-document/
---

Bazen bir Word belgesine group shape eklemeniz gerekir. Böyle bir group shape birden çok şekilden oluşur.

Microsoft Word 'da, Grup komutunu / düğmesini kullanarak hızlı bir şekilde group shape ekleyebilirsiniz. Gruptaki tek bir şekil ayrı ayrı hareket ettirilebilir.

Aspose.Words 'te [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) sınıfını kullanarak bir group shape eklemek çok kolaydır. Şekil, [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) sınıfı kullanılarak ayrı ayrı oluşturulur ve ardından [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) yöntemi kullanılarak **GroupShape** nesnesine eklenir.

Aşağıdaki kod örneği, bir Word belgesine group shape nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

Aşağıda Aspose.Words 'de desteklenen `Shape` türlerinden bazıları verilmiştir. Tam liste için lütfen [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/) adresini ziyaret edin:

- Dikdörtgen
- RoundRectangle
- RoundRectangle
- Elips
- Elmas
- Üçgen
- RightTriangle
- Paralelkenar
- Yamuk
- Altıgen
- Sekizgen

{{% /alert %}}
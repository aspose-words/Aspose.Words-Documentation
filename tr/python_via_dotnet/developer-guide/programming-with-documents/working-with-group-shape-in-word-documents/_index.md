---
title: Word Dosyasına Group Şekli Nasıl Eklenir?
second_title: Python via .NET için Aspose.Words
articleTitle: Word Belgelerinde Group Shape ile Çalışmak
linktitle: Word Belgelerinde Group Shape ile Çalışmak
description: "Python kullanarak bir belgeye group shape ekleyin."
type: docs
weight: 290
url: /tr/python-net/how-to-add-group-shape-into-a-word-document/
---

Bazen bir Word belgesine group shape eklemeniz gerekir. Böyle bir group shape birden fazla şekilden oluşur.

Microsoft Word'te, Group komutunu/düğmesini kullanarak hızlı bir şekilde group shape ekleyebilirsiniz. Gruptaki tek bir şekil ayrı ayrı hareket ettirilebilir.

Aspose.Words'te [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) sınıfını kullanarak group shape eklemek çok kolaydır. Şekil, [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) sınıfı kullanılarak ayrı ayrı oluşturulur ve daha sonra [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) yöntemi kullanılarak [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) nesnesine eklenir.

Aşağıdaki kod örneği, group shape'in Word belgesine nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

Aşağıda Aspose.Words'de desteklenen `Shape` türlerinden bazıları verilmiştir. Tam liste için lütfen [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/) numaralandırmasına bakın

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

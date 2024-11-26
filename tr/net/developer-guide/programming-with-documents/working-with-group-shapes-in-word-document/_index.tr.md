---
title: Word Belgesine Group Şekli Nasıl Eklenir?
second_title: .NET için Aspose.Words
articleTitle: Word Belgesine Group Şekli Nasıl Eklenir
linktitle: Word Belgelerinde Group Şekilleriyle Çalışmak
description: "C# kullanarak Group oluşturma ve şekillerin gruplarını çözme."
type: docs
weight: 290
url: /tr/net/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Bazen bir Word belgesine group shape eklemeniz gerekir. Böyle bir group shape birden fazla şekilden oluşur.

Microsoft Word'te, Group komutunu/düğmesini kullanarak hızlı bir şekilde group shape ekleyebilirsiniz. Gruptaki tek bir şekil ayrı ayrı hareket ettirilebilir.

Aspose.Words'te [GroupShape](https://reference.aspose.com/words/tr/net/aspose.words.drawing/groupshape/) sınıfını kullanarak group shape eklemek çok kolaydır. **Shape**, [Shape](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shape/) sınıfı kullanılarak ayrı olarak oluşturulur ve ardından [AppendChild](https://reference.aspose.com/words/tr/net/aspose.words/compositenode/appendchild/) yöntemi kullanılarak [GroupShape](https://reference.aspose.com/words/tr/net/aspose.words.drawing/groupshape/) nesnesine eklenir.

Aşağıdaki kod örneği, group shape'in Word belgesine nasıl ekleneceğini gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

Aşağıda Aspose.Words'de desteklenen `Shape` türlerinden bazıları verilmiştir:

- Dikdörtgen
- YuvarlakDikdörtgen
- YuvarlakDikdörtgen
- Elips
- Elmas
- Üçgen
- SağÜçgen
- Paralelkenar
- Yamuk
- Altıgen
- Sekizgen

Tam liste için lütfen [ShapeType](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shapetype) sınıfını kontrol edin.

{{% /alert %}}

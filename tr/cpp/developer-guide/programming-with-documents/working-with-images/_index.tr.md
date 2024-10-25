---
title: C++ içindeki Resimlerle Çalışma
second_title: Aspose.Words için C++
articleTitle: Resimlerle Çalışma
linktitle: Resimlerle Çalışma
type: docs
description: "Görüntü özelliğine giriş, C++ kullanarak görüntünün nasıl oluşturulacağı ve değiştirileceği."
weight: 300
url: /tr/cpp/working-with-images/
---

Aspose.Words kullanıcıların görüntülerle çok esnek bir şekilde çalışmasına olanak tanır. Bu makalede, görüntülerle çalışmanın yalnızca bazı olanaklarını keşfedebilirsiniz.

## Bir Belgeden Görüntüler Nasıl Çıkarılır

Tüm görüntüler [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) içindeki **Shape** düğümlerin içinde saklanır. Belgeden belirli bir türe sahip tüm resimleri veya resimleri çıkarmak için şu adımları izleyin:

- Tüm **Shape** düğümleri seçmek için [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) yöntemini kullanın.
- Ortaya çıkan düğüm koleksiyonları arasında yineleme yapın.
- [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/) boolean özelliğini kontrol edin.
- [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/) özelliğini kullanarak görüntü verilerini ayıklayın.
- Görüntü verilerini bir dosyaya kaydedin.

Aşağıdaki kod örneği, bir belgeden görüntülerin nasıl çıkarılacağını ve dosya olarak kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## Görüntüleri WMF olarak Kaydetme

Aspose.Words bir belgedeki mevcut tüm görüntüleri kaydetmek için işlevsellik sağlar [WMF ](https://docs.fileformat.com/image/wmf/)DOCX 'yi RTF'e dönüştürürken biçimlendirin.

Aşağıdaki kod örneği, RTF kaydetme seçenekleriyle görüntülerin WMF olarak nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}

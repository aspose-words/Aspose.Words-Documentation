---
title: Bar kod oluşturun Java içinde
second_title: Aspose.Words için Java
articleTitle: Özel Barcode Görselini Oluştur
linktitle: Özel Barcode Görselini Oluştur
description: "Java kullanılarak barkod şekli üretimi örneği."
type: docs
weight: 350
url: /tr/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

{{% alert color="primary" %}}

Aspose.Words'in özel barkod üretmek için bir arayüzü vardır bu da [Aspose.Words](https://products.aspose.com/words/java/) ve [Aspose.BarCode](https://products.aspose.com/barcode/java/) 'yi birlikte kullanmayı kolaylaştırarak çıktıda görüntüleri etiketlere dönüştürür. Örneğin, DOC, OOXML veya RTF belgelerinden bazılarının `DISPLAYBARCODE` alanını Aspose.Words'e yükleyebilir, özel bir barkod oluşturucu uygulamanızı sağlayabilir ve PDF, XPS vb. gibi sabit sayfa biçimlerine kaydedebilirsiniz. Tipik bir `DISPLAYBARCODE` alanı aşağıdaki sözdizimine sahiptir:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

{{% /alert %}}

Aşağıda bir örnek kod oluşturucu, `Aspose.BarCode` ve API'ü kullanır. Bu örnek, Word belgesindeki `DISPLAYBARCODE` Alanının konumunda barkod görüntüleri eklemek için Aspose.Words ve `Aspose.BarCode` 'i API'e nasıl kullanılacağını göstermektedir.

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

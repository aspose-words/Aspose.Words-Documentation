---
title: Barkod Nasıl Oluşturulur
second_title: .NET için Aspose.Words
articleTitle: Özel Barkod Görüntüsü Oluşturun
linktitle: Özel Barkod Görüntüsü Oluşturun
description: "C# kullanarak barkod şekli oluşturma örneği."
type: docs
weight: 350
url: /tr/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words, çıktı belgelerinde barkod görüntüleri oluşturmak için Aspose.Words ve [Aspose.BarCode](https://products.aspose.com/barcode/net/)'nin birlikte kullanılmasını çok kolaylaştıran, özel barkodlar oluşturmaya yönelik bir arayüze sahiptir. Örneğin, `DISPLAYBARCODE` Alanı içeren bir DOC, OOXML veya RTF belgesini Aspose.Words'e yükleyebilir, özel barkod oluşturucu uygulamanızı sağlayabilir ve PDF, XPS vb. sabit sayfa formatlarında kaydedebilirsiniz.

Tipik bir `DISPLAYBARCODE` alanı aşağıdaki sözdizimine sahiptir:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

Aşağıda `Aspose.BarCode` API'den yararlanan örnek bir kod oluşturucu bulunmaktadır. Bu örnek, Aspose.Words ve `Aspose.BarCode` API'leri kullanarak Word belgesindeki `DISPLAYBARCODE` Alanının konumuna barkod görüntülerinin nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

---
title: Nasıl barkod oluşturun
second_title: Aspose.Words için .NET
articleTitle: Özel Barcode Görselini Oluştur
linktitle: Özel Barcode Görselini Oluştur
description: "example of barcode shape generation using C#."
type: docs
weight: 350
url: /tr/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Bir barkod, paralel çizgiler veya desenler biçiminde verilerin görsel bir temsilidir. Barkodlar perakende, lojistik, sağlık, bankacılık ve birçok diğer sektör dahil olmak üzere çeşitli endüstrilerde yaygın olarak kullanılmaktadır.

Microsoft Word kullanıcıların alanları kullanarak belgelere doğrudan barkodları gömlemesine izin verir. Kullanıcılar, bir QR kodu veya doğrusal bir barkod gibi belirli bir barkod türünü eklemek için [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) alanını kullanabilir.

Bu makalede, BARCODE alanının Aspose.Words ve Aspose.Words'in bir barkodun zaten eklendiği kelime belgelerine kullanıcıların nasıl çalıştığına nasıl uygulandığına bakacağız.

## Aspose.Words tarafından desteklenen Barkod Türleri

Aspose.Words çeşitli türlerde barkodları destekler. Barkod türü [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/) özelliğinde bir dize değeri olarak geçirilir.

{{% alert color="primary" %}}

Çalışma bar kodları işlevselliği Aspose.Words içinde sınırlı olduğundan kullanıcı herhangi bir kütüphane, Aspose.Barcode dahil olmak üzere kullanabilir veya kendi işleme yazılımı bar kodlarla çalışmak için. Bar kodlarının çeşitleri hakkında daha fazla bilgi edinmek için [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/)

{{% /alert %}}

Bir belgeyi, barkodları destekleyen Word biçimlerinde kaydetirken, herhangi bir türde bir barkodu kullanabilirsiniz [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Yanlış bir barkod türü geçirilirse, Word bir hata görüntüleyecektir.

Diğer formatlara kaydetme yaparken, PDF gibi Aspose.Words bar kodunuzu kullanıcı koduna devreder, bu nedenle kullanıcı kendi uygulamasından veya kullandıkları kütüphaneden kaynaklanan bar kod türlerine sınırlıdır.

## Bir Dokümantaya Bir Barkod Ekle veya Bir Dokümantayı Bir Eklenmiş Barkod ile Yükle

Aspose.Words şu yeteneği sağlar:

1. Programatik olarak bir barkodu bir belgeye [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) ve [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) alan kodlarını kullanarak ekleyin
2. Ya da işleme için daha fazla çalışmak için zaten yerleştirdiği barkodlarla bir Word belgesi yükleyin

Aspose.Words özel barkodlar oluşturmak için bir arayüz sunar ve bu kullanımı kolaylaştırır [Aspose.Words](https://products.aspose.com/words/net/) ve [Aspose.BarCode](https://products.aspose.com/barcode/net/) birlikte bar kod görüntülerini çıktı belgelerine yerleştirmek için. Örneğin, bir DOC, OOXML veya RTF belgesi oluşturabilir ve buna Aspose.Words ile DisplayBarcode alanını ekleyebilirsiniz. Veya zaten var olan bir DisplayBarcode alanına sahip bir DOC, OOXML veya RTF belgesini yükleyebilir ve özel barkod jeneratörünüz için uygulamanızı sağlayabilirsiniz.

Tipik bir DISPLAYBARCODE alanı aşağıdaki sözdizimini kullanır:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Aşağıda, Aspose.Words ve Aspose.BarCode API'leri kullanan örnek bir kod oluşturucu örneği verilmiştir. Bu örnek, bir Word belgesindeki DISPLAYBARCODE alanının konumunda barkod resimlerinin nasıl eklenabileceğini göstermektedir:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

Yüklenen veya yeni eklenen barkodlu belgeyi PDF, XPS vb. sabit sayfa biçimlerinde de kaydedebilirsiniz. Aşağıdaki kod örneği bir Word belgesini PDF biçimine kaydetmenin nasıl yapılacağını göstermektedir:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

Bir formattan diğerine belge dönüştürme hakkında daha fazla bilgi için [Convert a Document](/words/net/convert-a-document/) belgelendirme bölümüne bakın.

{{% /alert %}}

{{% alert color="primary" %}}

Siz ayrıca Word belgeleri içinde gömülü olan barkodları resimlere dönüştürmek için [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) arayüzünü de kullanabilirsiniz. Sonuç olarak elde edilen resimler belgeden çıkarılabilir – Resimlerle Çalışma makalesine bakınız, ayrıntılar için.

{{% /alert %}}

## Barcod Seçeneklerini Belirtin

Barcodes ile çalışırken bazı ek özellikler ayarlayabilirsiniz. Aspose.Words size [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/) sınıfı – barcode parametreleri BarcodeGenerator'a geçmek için sınıf sunar.

Aspose.Words destekliyor gömülü 96 ppi çözünürlük için [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) ile oluşturulan resimler, bir barkod görüntüsünün minimum boyutunu sınırlar. Buna çözüm bulmak için geliştiriciler, hedef çözünürlükte barkod görüntülerini el ile bir Word belgesine ekleyebilir ve bunları gerekli biçimde kaydedebilirler. Daha fazla ayrıntı ve barkodlarla çalışma örneği için makale [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/) a bakın.
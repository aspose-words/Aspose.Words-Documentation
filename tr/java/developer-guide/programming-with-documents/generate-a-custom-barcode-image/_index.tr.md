---
title: Java içinde Barcode oluşturun
second_title: Aspose.Words için Java
articleTitle: Özel bir Barkod Görseli Oluşturun
linktitle: Özel bir Barkod Görseli Oluşturun
description: "Java'i kullanarak bir barkod şekli üretme örneği."
type: docs
weight: 350
url: /tr/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Bir barkod verilerin paralel çizgiler veya desenler biçiminde görsel bir temsiliğidir. Barkodlar perakende, lojistik, sağlık, bankacılık ve daha fazlası gibi çeşitli endüstrilerde yaygın olarak kullanılmaktadır.

Microsoft Word kullanıcıların belgelere alanlara yerleştirerek barkodlar doğrudan gömmesini sağlar. Kullanıcılar bir QR kodu veya doğrusal bir barkod gibi belirli bir tür barkodu bir [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) alanı kullanarak ekleyebilir.

Bu makale, "BARKOD" alanının Aspose.Words içinde nasıl uygulandığını ve kullanıcıların bir barkodun zaten eklendiği kelime belgeleriyle çalışmasına izin veren Aspose.Words'a nasıl izin verdiğini inceleyecektir.

## Aspose.Words tarafından desteklenen Barkod Türleri

Aspose.Words çeşitli türlerde barkodları destekler. Barkod türü, [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType) özelliğinde bir dize değeri olarak geçirilir.

{{% alert color="primary" %}}

Çalıştırma işlevselliği içinde Aspose.Words ile çalışmak sınırlı olduğundan, kullanıcı herhangi bir kitaplığı kullanabilir, Aspose.Barcode dahil olmak üzere veya kendi işleme komutlarını yazıp barkodlarla çalışabilirler. Barkodların türleri hakkında daha fazla bilgi edinmek için [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/)'ı inceleyebilirsiniz.

{{% /alert %}}

Bar kode destekleyen kelime biçimlerinde kaydetme yaparken herhangi bir tür bar kodu kullanabilirsiniz [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Yanlış bir bar kod türü geçirilirse, Word hata gösterecektir.

Diğer formatlara kaydetme yaparken, pdf gibi, Aspose.Words barkod gösterimi kullanıcının koduna bırakır ve kullanıcı kendi uygulamasına veya kullandığı kütüphaneye bağlı olarak barkod tiplerine sınırlandırılır.

## Bir Doküman İçine Bir Barcode Ekleyin veya Bir Dokümana Eklenen Bir Barcode ile Bir Dokümanı Yükleyin

Aspose.Words sağlar, yeteneğiniz:

1. Bir belgedeki bir barkodu programatik olarak [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) ve [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) alan kodlarını kullanarak ekleyin
2. Daha fazla çalışma için bir Word belgesine zaten eklenmiş çubuk kodları içeren yükleyin

Aspose.Words özel barkod üretmek için bir arayüz sunar ve bu da [Aspose.Words](https://products.aspose.com/words/java/)'i ve [Aspose.BarCode](https://products.aspose.com/barcode/java/)'i birlikte kullanmayı kolaylaştırır, böylece çıktı belgelerinde barkod görüntüleri oluşturulabilir. Örneğin, bir DOC, OOXML veya RTF belgesini oluşturabilir ve "Aspose.Words" kullanarak bu belgelere DISPLAYBARCODE alanını ekleyebilirsiniz. Ya da zaten mevcut bir DisplayBarcode alanına sahip bir DOC, OOXML veya RTF belgesini yükleyebilir ve özel bir barkod üretici uygulaması sağlayabilirsiniz.

Tipik bir DISPLAYBARCODE alanı aşağıdaki sözdizimine sahiptir:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Aşağıda, Aspose.Words ve Aspose.BarCode APIs'yi kullanan bir örnek kod oluşturucu gösterilmektedir. Bu örnek, bir Word belgesindeki DISPLAYBARCODE alan konumuna barkod görüntüleri eklemeyi gösterir:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

Yüklenen veya yeni eklenen barkod içeren belgeyi sabit sayfa biçimlerinde PDF, XPS vb. kullanarak de kaydedebilirsiniz. Aşağıdaki kod örneği, bir Word belgesini PDF biçiminde kaydetmenin nasıl yapılacağını göstermektedir:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Daha fazla bilgi için bir formattan diğerine belgeleri dönüştürme hakkında bk. [Convert a Document](/words/java/convert-a-document/) belgelendirme bölümüne.

{{% /alert %}}

{{% alert color="primary" %}}

Word belgelerinde gömülü barkodları görüntüye dönüştürmek için ayrıca [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) arayüzünü de kullanabilirsiniz. Sonuçta elde edilen görüntüler belgeden çıkarılabilir - Görüntülerle Çalışma makalesini ayrıntılı olarak inceleyin.

{{% /alert %}}

## Bar Kod Seçeneklerini Belirtin

Barcodes ile çalışırken ek özellikler ayarlayabilirsiniz. Aspose.Words size [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) sınıfı – BarcodeGenerator'e geçecek parametreler için barcode parametreleri sınıfını verir.

Aspose.Words [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/)'ile oluşturulan görüntülerde gömülü 96 ppi çözünürlük destekler, bu da bir barkod görüntüsünün minimum boyutunu sınırlar. Bu sorunu çözmek için geliştiriciler, hedef çözünürlüğe sahip barkod görüntülerini el ile Word belgesine ekleyebilir ve gerekli biçimde kaydedebilirler. Daha fazla bilgi ve barkodlarla çalışma örneği için [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/)'e bakın.

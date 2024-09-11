---
title: Başlıklar ve Altbilgiler ile Çalışmak Java içinde
second_title: Aspose.Words için Java
articleTitle: Başlık ve Altbilgiler ile Çalışmak
linktitle: Başlık ve Altbilgiler ile Çalışmak
description: "Başlık ve altbilgileri Java kullanarak nasıl manipüle edeceğiniz."
type: docs
weight: 150
url: /tr/java/working-with-headers-and-footers/
---

Aspose.Words bir belgedeki başlıklar ve altbilgiler ile çalışmak için kullanıcılara izin verir. Bir başlık, sayfanın üstündeki metindir ve bir altbilgi, sayfanın altındaki metindir. Tipik olarak, bu alanlar sayfa numaraları, düzenleme tarihi, şirket bilgileri vb. gibi belgenin tüm veya bazı sayfalarında tekrarlanması gereken bilgilere eklemek için kullanılır.

## DocumentBuilder kullanarak başlıklar veya altbilgiler oluşturun

Bir belge üstbilgisi veya altbilgisi programlı olarak eklemek istiyorsanız bunu yapmak için en kolay yol [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) sınıfını kullanmaktır.

Aşağıdaki kod örneği, belge sayfalarına bir başlık ve altbilgi eklemeyi gösterir:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## Başlık veya Altbilgi Seçeneklerini Belirtin

Bir belgeye başlık veya altbilgi eklediğinizde, bazı gelişmiş özellikleri ayarlayabilirsiniz. Aspose.Words kullanıcılara [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) ve [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/) sınıflarını ve size başlık ve altbilgi özelleştirme sürecinde daha fazla kontrol sağlayan [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) sayma sağlar.

### Header veya Footer Türünü Belirtin

Bir belge için üç farklı başlık türü ve üç farklı altbilgi türü belirtebilirsiniz:

1. Birinci sayfaya ait başlık ve altbilgi
2. Çift sayfalar için başlık ve/veya altbilgi
3. Tekil sayfalar için başlık ve altbilgi

Aşağıdaki kod örneği bir belge sayfaları için başlık eklemek için nasıl yapılacağını göstermektedir:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### İlk Sayfa için Farklı Başlık veya Altbilgiler Görüntülenip Görülemeyeceğini Belirtin

Yukarıda belirtildiği gibi, ilk sayfaya farklı bir başlık veya altbilgi de ayarlayabilirsiniz. Bunu yapmak için, [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) bayrağını `true`'e ve sonra **HeaderFirst** veya **FooterFirst** değerini belirterek ayarlamanız gerekir.

Aşağıdaki kod örneği ilk sayfa için başlığı nasıl ayarlayacağınızı gösterir:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### Farklı Sayfalar için Farklı Başlıklar veya Altbilgiler Görüntüleme Göster/Gizle

 Sonraki, bir belgedeki tek ve çift sayfalar için farklı başlıklar veya altbilgiler belirlemek isteyeceksiniz. Bunu yapmak için, [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) bayrağını `true`'e ayarlamanız gerekir ve sonra değerleri **HeaderPrimary** ve **HeaderEven**, ya da **FooterPrimary** ve **FooterEven** belirtmeniz gerekir.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### Başlığa Mutlak Konumlandırılmış Görüntü Ekle

Bir imajı bir başlık veya altbilgiye yerleştirmek için **HeaderPrimary** başlık türünü veya **FooterPrimary** altbilgi türünü ve [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) yöntemini kullanın.

Aşağıdaki kod örneğinde bir başlığa bir resim eklemek nasıl yapılır gösterilmiştir:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### Başlık veya Altbilgi Metni İçin Yazı Tipi ve Paragraf Özelliklerini Ayarla

İle Aspose.Words yazı tipi ve paragraf özelliklerini ayarlayabilir, **HeaderPrimary** başlık türü veya **FooterPrimary** alt bilgi türü kullanabilir ve belgenizin gövdesinde kullandığınız yazı tipleri ve paragraflar ile çalışmak için yöntemler ve özellikler.

Aşağıdaki kod örneği, başlık metnini Arial, kalın, 14 boyut ve ortadaki hizalamaya ayarlamayı gösterir:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### Başlık veya Altbilgiye Sayfa Numaraları Ekle

Eğer gerekiyorsa sayfa numaralarını başlık veya altbilgiye ekleyebilirsiniz. Bunu yapmak için **HeaderPrimary** başlık tipini veya **FooterPrimary** altbilgi tipini ve [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) yöntemini kullanarak gerekli alanı ekleyin.

Aşağıdaki kod örneği sağ tarafta alt bilgiye sayfa numaralarını ekleme şeklini göstermektedir:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### Önceki bölümde tanımlanan Başlıklar veya Altbilgiler Kullanın

Önceki bölümde başlık veya altbilgiyi kopyalamanız gerekiyorsa bunu da yapabilirsiniz.

Aşağıdaki kod örneği, önceki bölümden başlık veya altbilginin nasıl kopyalanacağını göstermektedir:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### Farklı Sayfa Yönlendirmeleri ve Sayfa Boyutları Kullanırken Başlık veya Altbilgi Görünümünü Garantiye Alın

Aspose.Words farklı yönlendirmeler ve sayfa boyutları kullanırken bir başlık veya altbilgi sağlamak için size izin verir.

Aşağıdaki örnek bunu nasıl yapacağınızı göstermektedir:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## Yalnızca Başlıklar Nasıl Kaldırılır ya da Yalnızca Altbilgiler

Bir belge içinde her bölüm en fazla üç başlık ve en fazla üç altbilgi (ilki, çift ve tek sayfalar için) içerebilir. Bir belgedeki tüm başlıkları veya altbilgileri kaldırmak istiyorsanız, belgenin tüm bölümlerini dolaşarak her karşılık gelen başlık düğümü veya altbilgi düğümünü kaldırmanız gerekir.

Aşağıdaki kod örneği, yalnızca başlıkları bırakarak tüm bölümlerden tüm altbilgileri nasıl kaldıracağınızı gösterir. Benzer bir şekilde sadece başlıkları kaldırabilirsiniz:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

Örnek dosyayı bu örnekten [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx)'den indirebilirsiniz.

{{% /alert %}}
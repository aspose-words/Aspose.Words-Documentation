---
title: C++ içinde Üstbilgi ve Altbilgilerle Çalışma
second_title: Aspose.Words için C++
articleTitle: Üstbilgi ve Altbilgilerle Çalışma
linktitle: Üstbilgi ve Altbilgilerle Çalışma
description: "C++ kullanarak üstbilgiler ve altbilgiler nasıl işlenir."
type: docs
weight: 150
url: /tr/cpp/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words kullanıcıların bir belgedeki üstbilgi ve altbilgilerle çalışmasına izin verir. Üstbilgi, sayfanın en üstüne yerleştirilen metindir ve altbilgi, sayfanın altındaki metindir. Genellikle bu alanlar, sayfa numaraları, oluşturulma tarihi, şirket bilgileri vb. Gibi belgenin tamamında veya bazı sayfalarında tekrarlanması gereken bilgileri eklemek için kullanılır.

## DocumentBuilder kullanarak Üstbilgi veya Altbilgi oluşturma

Programlı olarak bir belge üstbilgisi veya altbilgisi eklemek istiyorsanız, bunu yapmanın en kolay yolu [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) sınıfını kullanmaktır.

Aşağıdaki kod örneği, belge sayfaları için üstbilgi ve altbilginin nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "create-header-footer.h" >}}

## Üstbilgi veya Altbilgi Seçeneklerini Belirtin

Bir belgeye üstbilgi veya altbilgi eklediğinizde, bazı gelişmiş özellikler ayarlayabilirsiniz. Aspose.Words, kullanıcılara [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) ve [HeaderFooterCollection](https://reference.aspose.com/words/cpp/aspose.words/headerfootercollection/) sınıflarının yanı sıra üstbilgi ve altbilgi özelleştirme işlemi üzerinde size daha fazla kontrol sağlayan [HeaderFooterType](https://reference.aspose.com/words/cpp/aspose.words/headerfootertype/) numaralandırma sağlar.

### Üstbilgi veya Altbilgi Türünü Belirtin

Bir belge için üç farklı üstbilgi türü ve üç farklı altbilgi türü belirtebilirsiniz:

1. İlk sayfanın üstbilgisi ve / veya altbilgisi
2. Çift sayfalar için üstbilgi ve / veya altbilgi
3. Tek sayfalar için üstbilgi ve / veya altbilgi

Aşağıdaki kod örneği, tek belge sayfaları için bir üstbilginin nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "header-footer-type.h" >}}

### İlk Sayfa için Farklı Üstbilgi veya Altbilgilerin Görüntülenip Görüntülenmeyeceğini belirtin

Yukarıda belirtildiği gibi, ilk sayfa için farklı bir üstbilgi veya altbilgi de ayarlayabilirsiniz. Bunu yapmak için [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_differentfirstpageheaderfooter/) bayrağını `true` olarak ayarlamanız ve ardından **HeaderFirst** veya **FooterFirst** değerini belirtmeniz gerekir.

Aşağıdaki kod örneği, yalnızca ilk sayfa için üstbilginin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "different-first-page.h" >}}

### Tek veya Çift Sayfalar için Farklı Üstbilgi veya Altbilgilerin Görüntülenip Görüntülenmeyeceğini belirtin

 Ardından, bir belgedeki tek ve çift sayfalar için farklı üstbilgiler veya altbilgiler ayarlamak isteyeceksiniz. Bunu yapmak için [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_oddandevenpagesheaderfooter/) bayrağını `true` olarak ayarlamanız ve ardından **HeaderPrimary** ve **HeaderEven** veya **FooterPrimary** ve **FooterEven** değerlerini belirtmeniz gerekir.

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "odd-even-pages.h" >}}

### Başlığa Kesinlikle Konumlandırılmış Bir Görüntü Ekleyin

Görüntüyü üstbilgi veya altbilgiye yerleştirmek için **HeaderPrimary** üstbilgi türünü veya **FooterPrimary** altbilgi türünü ve `InsertImage` yöntemini kullanın.

Aşağıdaki kod örneği, bir üstbilgiye nasıl resim ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "insert-image.h" >}}

### Üstbilgi veya Altbilgi Metni için Yazı Tipi ve Paragraf Özelliklerini Ayarlama

Aspose.Words ile yazı tipi ve paragraf özelliklerini ayarlayabilir, **HeaderPrimary** üstbilgi türünü veya **FooterPrimary** altbilgi türünü ve belge gövdesi için kullandığınız yazı tipleri ve paragraflarla çalışma yöntemlerini ve özelliklerini kullanabilirsiniz.

Aşağıdaki kod örneği, üstbilgideki metnin Arial, bold, size 14 ve center alignment olarak nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "font-props.h" >}}

### Sayfa Numaralarını Üstbilgiye veya Altbilgiye Ekleme

Gerekirse, üstbilgiye veya altbilgiye sayfa numaraları ekleyebilirsiniz. Bunu yapmak için, gerekli alanı eklemek üzere **HeaderPrimary** üstbilgi türünü veya **FooterPrimary** altbilgi türünü ve [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) yöntemini kullanın.

Aşağıdaki kod örneği, sağdaki altbilgiye sayfa numaralarının nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "page-numbers.h" >}}

### Önceki Bölümde Tanımlanan Üstbilgileri veya Altbilgileri Kullanma

Üstbilgiyi veya altbilgiyi önceki bölümden kopyalamanız gerekiyorsa, bunu da yapabilirsiniz.

Aşağıdaki kod örneği, üstbilgi veya altbilginin önceki bölümden nasıl kopyalanacağını gösterir:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "copy-headers-footers-from-previous-section.h" >}}

### Farklı Sayfa Yönelimleri ve Sayfa Boyutu Kullanırken Üstbilgi veya Altbilgi görünümünü sağlayın

Aspose.Words farklı yönelimler ve sayfa boyutları kullanırken bir üstbilgi veya altbilgi görünümü sağlamanıza olanak tanır.

Aşağıdaki örnek, bunun nasıl yapılacağını gösterir:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

## Yalnızca Üstbilgileri veya Altbilgileri Kaldırma

Belgedeki her bölüm en fazla üç üstbilgiye ve en fazla üç altbilgiye sahip olabilir (ilk, çift ve tek sayfalar için). Bir belgedeki tüm üstbilgileri veya altbilgileri kaldırmak istiyorsanız, tüm bölümler arasında dolaşmanız ve karşılık gelen her üstbilgi düğümünü veya altbilgi düğümünü kaldırmanız gerekir.

Aşağıdaki kod örneği, tüm altbilgilerin tüm bölümlerden nasıl kaldırılacağını, ancak üstbilgilerin bozulmadan nasıl bırakılacağını gösterir. Yalnızca başlıkları benzer şekilde kaldırabilirsiniz:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "remove-footers.h" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

---
title: Üstbilgiler ve Altbilgilerle Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: Üstbilgiler ve Altbilgilerle Çalışmak
linktitle: Üstbilgiler ve Altbilgilerle Çalışmak
description: "Python'i kullanarak bir belgede üstbilgi ve altbilgileri oluşturun, yönetin ve kaldırın."
type: docs
weight: 150
url: /tr/python-net/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words, kullanıcıların bir belgedeki üstbilgiler ve altbilgilerle çalışmasına olanak tanır. Üstbilgi, sayfanın üst kısmına yerleştirilen metindir ve altbilgi, sayfanın alt kısmına yerleştirilen metindir. Genellikle bu alanlar, sayfa numaraları, oluşturulma tarihi, şirket bilgileri vb. gibi belgenin tüm sayfalarında veya bazı sayfalarında tekrarlanması gereken bilgileri eklemek için kullanılır.

## DocumentBuilder'ı kullanarak Üstbilgi veya Altbilgi oluşturma

Programlı olarak bir belge üstbilgisi veya altbilgisi eklemek istiyorsanız, bunu yapmanın en kolay yolu [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) sınıfını kullanmaktır.

Aşağıdaki kod örneği, belge sayfaları için üstbilgi ve altbilginin nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "create-header-footer.py" >}}

## Üstbilgi veya Altbilgi Seçeneklerini Belirleyin

Bir belgeye üst bilgi veya alt bilgi eklediğinizde bazı gelişmiş özellikleri ayarlayabilirsiniz. Aspose.Words, kullanıcılara üstbilgi ve altbilgi özelleştirme süreci üzerinde daha fazla kontrol sağlayan [HeaderFooterType](https://reference.aspose.com/words/python-net/aspose.words/headerfootertype/) numaralandırmasının yanı sıra [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) ve [HeaderFooterCollection](https://reference.aspose.com/words/python-net/aspose.words/headerfootercollection/) sınıflarını da sağlar.

### Üstbilgi veya Altbilgi Türünü Belirtin

Bir belge için üç farklı başlık türü ve üç farklı altbilgi türü belirleyebilirsiniz:

1. İlk sayfanın üstbilgisi ve/veya altbilgisi
2. Çift sayfalar için üstbilgi ve/veya altbilgi
3. Tek sayfalar için üstbilgi ve/veya altbilgi

Aşağıdaki kod örneği, tek belge sayfaları için nasıl üstbilgi ekleneceğini gösterir:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "header-footer-type.py" >}}

### İlk Sayfada Farklı Üstbilgilerin mi yoksa Altbilgilerin mi Görüntüleneceğini Belirleme

Yukarıda da belirtildiği gibi, ilk sayfa için farklı bir üstbilgi veya altbilgi de ayarlayabilirsiniz. Bunu yapmak için [different_first_page_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/different_first_page_header_footer/) bayrağını `true` olarak ayarlayıp ardından **HeaderFirst** veya **FooterFirst** değerini belirtmeniz gerekir.

Aşağıdaki kod örneği, yalnızca ilk sayfa için üstbilginin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "different-first-page.py" >}}

### Tek veya Çift Sayfalar için Farklı Üstbilgilerin veya Altbilgilerin Görüntülenip Görüntülenmeyeceğini Belirleme

 Daha sonra, bir belgedeki tek ve çift sayfalar için farklı üstbilgiler veya altbilgiler ayarlamak isteyeceksiniz. Bunu yapmak için [odd_and_even_pages_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/odd_and_even_pages_header_footer/) bayrağını `true` olarak ayarlamanız ve ardından **HeaderPrimary** ve **HeaderEven** veya **FooterPrimary** ve **FooterEven** değerlerini belirtmeniz gerekir.

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "odd-even-pages.py" >}}

### Başlığa Kesinlikle Konumlandırılmış Bir Görüntü Ekleme

Bir görüntüyü üst bilgi veya alt bilgiye yerleştirmek için **HeaderPrimary** üst bilgi türünü veya **FooterPrimary** alt bilgi türünü ve [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) yöntemini kullanın.

Aşağıdaki kod örneği, başlığa nasıl resim ekleneceğini gösterir:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "insert-image.py" >}}

### Üstbilgi veya Altbilgi Metni için Yazı Tipi ve Paragraf Özelliklerini Ayarlama

Aspose.Words ile yazı tipi ve paragraf özelliklerini ayarlayabilir, **HeaderPrimary** üst bilgi türünü veya **FooterPrimary** alt bilgi türünü kullanabilir, ayrıca belge gövdesi için kullandığınız yazı tipleri ve paragraflarla çalışma yöntemlerini ve özelliklerini kullanabilirsiniz.

Aşağıdaki kod örneği, başlıktaki metnin Arial, kalın, 14 boyut ve ortaya hizalama olarak nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "font-props.py" >}}

### Sayfa Numaralarını Üst Bilgiye veya Alt Bilgiye Ekleme

Gerekirse üstbilgi veya altbilgiye sayfa numaraları ekleyebilirsiniz. Bunu yapmak için gerekli alanı eklemek için **HeaderPrimary** üst bilgi türünü veya **FooterPrimary** alt bilgi türünü ve [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) yöntemini kullanın.

Aşağıdaki kod örneği, sayfa numaralarının sağdaki alt bilgiye nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "page-numbers.py" >}}

### Önceki Bölümde Tanımlanan Üstbilgileri veya Altbilgileri Kullanın

Önceki bölümden üstbilgi veya altbilgiyi kopyalamanız gerekiyorsa bunu da yapabilirsiniz.

Aşağıdaki kod örneği, önceki bölümden üstbilginin veya altbilginin nasıl kopyalanacağını gösterir:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "copy-headers-footers-from-previous-section.py" >}}

### Farklı Sayfa Yönleri ve Sayfa Boyutu Kullanırken Üstbilgi veya Altbilgi görünümünün sağlanması

Aspose.Words, farklı yönlendirmeler ve sayfa boyutları kullanıldığında üstbilgi veya altbilgi görünümünü sağlamanıza olanak tanır.

Aşağıdaki örnek bunun nasıl yapılacağını gösterir:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

## Yalnızca Üstbilgiler veya Yalnızca Altbilgiler Nasıl Kaldırılır

Bir belgedeki her bölümde en fazla üç üst bilgi ve en fazla üç alt bilgi bulunabilir (ilk, çift ve tek sayfalar için). Bir belgedeki tüm üstbilgileri veya altbilgileri kaldırmak istiyorsanız, tüm bölümler arasında geçiş yapmanız ve karşılık gelen her üstbilgi düğümünü veya altbilgi düğümünü kaldırmanız gerekir.

Aşağıdaki kod örneği, tüm altbilgilerin tüm bölümlerden nasıl kaldırılacağını ancak üstbilgilerin olduğu gibi bırakılmasını gösterir. Benzer şekilde yalnızca başlıkları kaldırabilirsiniz:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "remove-footers.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx)'ten indirebilirsiniz.

{{% /alert %}}

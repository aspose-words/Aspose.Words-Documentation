---
title: C++ içinde oluşturma
second_title: Aspose.Words için C++
articleTitle: İşleme
linktitle: İşleme
description: "Kullanmak Aspose.Words için C++ bir akış düzeni belgesini sayfalara biçimlendirmek ve bu tür bir belgeyi veya seçilen sayfaları diğer belgelere dönüştürmek için oluşturma özelliği (PDF, HTML, XPS, vb.) veya görüntüler (TIFF, PNG, SVG, vb.) görüntüleme, daha fazla dönüştürme veya yazdırma biçimleri."
type: docs
weight: 20
url: /tr/cpp/rendering/
timestamp: 2024-01-30-16-22-34
---

Bir belgeyi sayfalandırılan veya sayfa kavramına sahip bir dosya biçimine veya ortama dönüştürme işlemini tanımlamak için Aspose.Words 'da "oluşturma" terimini kullanıyoruz. Bir belgenin sayfalara dönüştürülmesinden bahsediyoruz. Aşağıdaki diyagram, Aspose.Words 'da işlemenin ne olduğunu gösterir.

![rendering-aspose-words-cpp](rendering-1.png)

Aspose.Words öğesinin oluşturma özellikleri aşağıdakileri gerçekleştirmenizi sağlar:

- Bir belgeyi veya seçili sayfaları PDF, XPS, HTML, XAML, PostScript, ve PCL biçimleri.
- Bir belgeyi çok sayfalı bir TIFF belgeye dönüştürün veya herhangi bir sayfayı raster görüntüye dönüştürüp BMP, PNG veya JPEG olarak kaydedin.
- Belge sayfasını Ölçeklenebilir Vektör Grafik görüntüsüne (SVG) dönüştürün veya vektör görüntüsüne dönüştürüp EMF olarak kaydedin.
- Belge sayfalarının küçük resimlerini, tam boyutlu veya ölçeklendirilmiş görüntülerini oluşturmak için `Graphics` nesnesinde belirli bir boyutta veya ölçekte bir belge sayfası oluşturun (çizin).
- Bir [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) nesnesini belgeden ayrı olarak herhangi bir görüntü biçimine veya bir `Graphics` nesnesine dönüştürün.
- Belgenin herhangi bir sayfasını Windows Biçiminde görüntüleyin.

## Akış düzeni veya Sabit düzen Belge Biçimleri {#flow-layout-or-fixed-layout-document-formats}

Aspose.Words 'a yüklenebilen belge biçimlerinin çoğu "akış düzeni" biçimleri olarak bilinir. Akış düzeni biçimleri şunları içerir DOC, OOXML, RTF, ODT, ve HTML. Bu biçimlerdeki belgeler paragraflar, tablolar, üstbilgiler, altbilgiler, resimler, alanlar gibi çeşitli öğelerden ve bunların kalın, italik, yazı tipi, boyut gibi biçimlendirmelerinden oluşur. Ancak, akış düzeni biçimleri, her bir paragrafın veya karakterin bir sayfada görüntülendiği konum hakkında bilgi içermez.

Buna karşılık, PDF ve XPS gibi "sabit düzen" ("sabit sayfa" olarak da bilinir) biçimleri, tüm belge öğeleri için tam konumlandırma bilgileri içerir. Bu biçimler, bir belgenin sayfalara yerleştirildikten sonra orijinal görünümünü koruyarak görüntülenen bilgilerin daha yüksek doğruluğunu sağlar.

## Sayfa Düzeni Motoru {#page-layout-engine}

Aspose.Words bir akış düzeni belgesini sayfalara biçimlendiren kendi sayfa düzeni motorunu uygular. Aspose.Words, PDF veya XPS gibi sabit mizanpajlı bir belge üreten veya sayfaları yazdırma veya çizim gibi başka bir ortama çıkaran bir dizi oluşturucu uygular. Dışa aktarmanın HTML ve XAML için de sayfalandırılabileceğini unutmayın. Bu, bir belgenin normal HTML veya XAML (akış düzeni biçimi) veya öğelerin mutlak konumlarını içeren "sayfalandırılmış" HTML ve XAML olarak kaydedilebileceği anlamına gelir.

Aspose.Words sayfa düzeni motorunu kullanmanın en önemli avantajı, Microsoft Word ’ın sayfa düzeni motorunun çalışma şeklini taklit etmesidir. Bu nedenle, bir Microsoft Word belgesini PDF, XPS belgesine dönüştürdüğünüzde veya Aspose.Words kullanarak yazdırdığınızda, çıktı neredeyse tam olarak Microsoft Word tarafından yapılmış gibi görünecektir. Aspose.Words 'in Microsoft Word kullanmadığını unutmayın.

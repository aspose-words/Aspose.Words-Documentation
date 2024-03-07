---
title: C#'te oluşturma
second_title: .NET için Aspose.Words
articleTitle: İşleme
linktitle: İşleme
description: "Bir akış düzeni belgesini sayfalar halinde biçimlendirmek ve bu tür bir belgeyi veya seçilen sayfaları diğer belgelere (PDF, HTML, XPS, vb.) veya görüntülere (TIFF, PNG, SVG vb.) formatlara dönüştürmek için .NET oluşturma özelliği için Aspose.Words'i kullanın. C# kullanarak görüntüleme, daha fazla dönüştürme veya yazdırma."
type: docs
weight: 20
url: /tr/net/rendering/
---

Aspose.Words'te "oluşturma" terimini, bir belgenin bir dosya biçimine veya sayfalandırılmış veya sayfa kavramına sahip bir ortama dönüştürülmesi sürecini tanımlamak için kullanırız. Bir belgenin sayfalara dönüştürülmesinden bahsediyoruz. Aşağıdaki şemada Aspose.Words'te hangi işlemenin olduğu gösterilmektedir.

![rendering_aspose-words](/words/net/rendering/rendering-1.png)

Aspose.Words'in işleme özellikleri aşağıdakileri gerçekleştirmenizi sağlar:

- Bir belgeyi veya seçilen sayfaları PDF, XPS, HTML, XAML, PostScript ve PCL formatlarına dönüştürün.
- Bir belgeyi çok sayfalı bir TIFF belgesine dönüştürün veya herhangi bir sayfayı taramalı görüntüye dönüştürün ve BMP, PNG veya JPEG olarak kaydedin.
- Bir belge sayfasını Ölçeklenebilir Vektör Grafikleri görüntüsüne (SVG) dönüştürün veya bir vektör görüntüsüne dönüştürün ve EMF olarak kaydedin.
- Belge sayfalarının küçük resimlerini, tam boyutlu veya ölçeklendirilmiş görüntülerini oluşturmak için bir belge sayfasını .NET Graphics nesnesinde belirli bir boyut veya ölçekte işleyin (çizin).
- Bir [Shape](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shape/) nesnesini belgeden ayrı olarak herhangi bir görüntü formatına veya bir .NET Grafik nesnesine dönüştürün.
- Bir belgenin herhangi bir sayfasını Windows Formunda görüntüleyin.
- Standart .NET yazdırma altyapısını kullanarak belge sayfalarını yazdırın veya önizleyin.

## Akış Düzeni veya Sabit Düzen Belge Formatları {#flow-layout-or-fixed-layout-document-formats}

Aspose.Words'e yüklenebilen belge formatlarının çoğu "akış düzeni" formatları olarak bilinir. Akış düzeni formatları DOC, OOXML, RTF, ODT ve HTML'yi içerir. Bu formatlardaki belgeler paragraf, tablo, başlık, alt bilgi, resim, alan gibi çeşitli unsurlardan ve bunların kalın, italik, yazı tipi, boyut gibi biçimlendirmelerinden oluşur. Ancak akış düzeni formatları, her bir paragrafın veya karakterin sayfada görüntülendiği konum hakkında bilgi içermez.

Buna karşılık, PDF ve XPS gibi "sabit düzen" ("sabit sayfa" olarak da bilinir) formatları, tüm belge öğeleri için tam konumlandırma bilgileri içerir. Bu formatlar, sayfalar halinde düzenlendikten sonra belgenin orijinal görünümünü koruyarak görüntülenen bilgilerin daha yüksek doğruluğunu sağlar.

## Sayfa Düzeni Motoru {#page-layout-engine}

Aspose.Words, akış düzeni belgesini sayfalar halinde biçimlendiren kendi sayfa düzeni motorunu uygular. Aspose.Words, PDF veya XPS gibi sabit düzende bir belge üreten veya sayfaları yazdırma veya çizim gibi başka bir ortama çıkaran bir dizi oluşturucu uygular. Dışa aktarmanın HTML ve XAML için de sayfalandırılabileceğini unutmayın. Bu, bir belgenin normal HTML veya XAML (akış düzeni biçimi) olarak veya öğelerin mutlak konumlarını içeren "sayfalandırılmış" HTML ve XAML olarak kaydedilebileceği anlamına gelir.

Aspose.Words sayfa düzeni motorunu kullanmanın en önemli avantajı, Microsoft Word'nin sayfa düzeni motorunun çalışma şeklini taklit etmesidir. Bu nedenle, bir Microsoft Word belgesini PDF'ye, XPS'ye dönüştürdüğünüzde veya Aspose.Words kullanarak yazdırdığınızda, çıktı neredeyse tam olarak Microsoft Word tarafından yapılmış gibi görünecektir. Aspose.Words'in Microsoft Word kullanmadığını unutmayın.

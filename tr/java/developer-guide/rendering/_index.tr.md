---
title: Sürümleme Java içinde
second_title: Aspose.Words için Java
articleTitle: Rendering
linktitle: Rendering
description: "Bir akış düzenlemesi belgesi sayfaları biçimlendirmek için Aspose.Words işleme özelliğini kullanın ve bir belge veya seçilen sayfalar başka bir belgeye (PDF, HTML, XPS, vb.) veya görüntüye (TIFF, PNG, SVG, vb.) dönüştürülür veya görüntülenirken, sonraki dönüşümler veya yazdırma için görüntülenen, Java 'e dönüştürülür."
type: docs
weight: 30
url: /tr/java/rendering/
timestamp: 2024-01-27-14-07-04
---

Biz Aspose.Words'da bir belgeyi sayfalama veya sayfaların kavramsal bir fikrine sahip bir dosya biçimine veya ortama dönüştürme işlemini tanımlamak için "render etme" terimini kullanırız. Bir belgeyi sayfalara dönüştürme hakkında konuşuyoruz. Aşağıdaki diyagram, Aspose.Words'te ne gibi bir işleme olduğunu göstermektedir.

![rendering-aspose-words-java](rendering-1.png)

Aspose.Words'ın sunum özellikleri şunları yapmanıza olanak tanır:

- Bir belgeyi veya seçilen sayfaları PDF, XPS ,HTML, XAML, PostScript ve PCL biçimlerine dönüştürün.
- Bir belgeyi birden fazla sayfalı bir TIFF belgesine dönüştürün ya da herhangi bir sayfayı bir raster görüntüye dönüştürün ve bunu BMP, PNG veya JPEG olarak kaydedin.
- Bir belge sayfasını SVG (Scalable Vector Graphics) bir görüntüye dönüştürün, veya vektör görüntüsüne dönüştürüp EMF olarak kaydedin.
- Bir belge sayfasını belirli bir boyut veya ölçekte `Graphics` nesnesinde oluşturun küçük resim, tam boyutlu veya ölçeklendirilmiş görüntüler.
Bir [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) nesnesini, herhangi bir görüntü biçiminden veya bir `Graphics` nesnesinden ayrı olarak işleyin.
Bir belgenin herhangi bir sayfasını bir Swing bileşeninde görüntüle.
- Standart Java baskı altyapısını kullanarak belge sayfalarını yazdırın veya önizleyin.

## Flow-layout veya Fixed-layout Belge Biçimlendirme {#flow-layout-or-fixed-layout-document-formats}

Aspose.Words 'a yüklenebilecek belge formatlarının çoğu "akış düzeni" formatları olarak bilinir. Akış düzeni formatları DOC, OOXML, RTF, ODT ve HTML içerir. Bu formatlarda bulunan belgeler, paragraflar, tablolar, başlıklar, altbilgiler, resimler, alanlar ve biçimlendirme gibi çeşitli öğelerden oluşur; örneğin kalın, italik, yazı tipi ve boyut. Ancak akış düzeni biçimlendirmeleri her paragraf veya karakterin bir sayfada nerede gösterildiğine ilişkin bilgilere sahip değildir.

Karşılaştırma, "sabit düzen" (aynı zamanda "sabit sayfa") biçimleri gibi PDF ve XPS tüm belge öğeleri için kesin konumlandırma bilgilerini içerir. Bu formatlar bir belgenin sayfalara düzenlenmesinden sonra orijinal görünümünü korur ve görüntülenen bilgilerde daha yüksek doğruluk sağlar.

## Sayfa Düzeni Motoru {#page-layout-engine}

Aspose.Words kendi sayfa düzeni motorunu uygular, bir akış düzeni belgesini sayfaların içine biçimlendirir. Aspose.Words PDF veya XPS gibi sabit düzenli bir belge üreten çeşitli sunum araçları uygular veya çıktı olarak sayfaları başka bir ortamda yazdırma veya çizim gibi çıktılar. Not edin ki, bu dışarı aktarma HTML ve XAML için de sayfalama yapılabilir. Bu bir belgeyi normal HTML veya XAML (akış düzeni biçimi) olarak kaydedilebileceği anlamına gelir, ya da öğelerin mutlak konumlarını içeren "sayfalama"li HTML ve XAML.

Aspose.Words sayfa düzen motorunu kullanmanın en önemli avantajlarından biri o, Microsoft Word'in sayfa düzeni motorunun nasıl çalıştığını taklit etmesidir. Böylece, bir Microsoft Word belgesi PDF, XPSya dönüştürdüğünüzde veya bunu Aspose.Words kullanarak bastığınızda, çıktı neredeyse tam olarak Microsoft Word'ın yaptığı gibi görünecektir. Not edin ki Aspose.Words Microsoft Word kullanmaz.

---
title: Java'da OpenType özelliklerini etkinleştirin
second_title: Aspose.Words için Java
articleTitle: OpenType Özelliklerini Etkinleştir
linktitle: OpenType Özelliklerini Etkinleştir
description: "Gelişmiş tipografi özellikleri Aspose.Words için Java."
type: docs
weight: 25
url: /tr/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType bir yazı tipi biçimidir ve PostScript ve TrueType'a kıyasla uluslararası diller ve yazı sistemlerine daha iyi destek sağlamak için tanıtılmıştır. OpenType'ın düzen özellikleri yaygın olarak OpenType özellikleri olarak bilinir. Aspose.Words.Şekillendirme HarfBuzz paketi, OpenType özelliklerini Aspose.Words'de `HarfBuzz` metin şekillendirme motoru ile destekler.

Aspose.Words harici olarak sağlanan metin şekillendirme nesnelerini kullanabilir. Bir metin şekillendirici bir yazı tipini temsil eder ve bir metnin şekillendirme bilgilerini hesaplar. Bir belge tipik olarak birden fazla yazı tipine atıfta bulunacağından bir metin şekillendirici fabrikasının gerekli olduğu anlamına gelir. Bu paket, Aspose.Words.Layout.LayoutOptions.TextShaperFactory özelliğini kullanan bir metin şekillendirici fabrikasının uygulamasını içerir.

{{% alert color="primary" %}}

Metin şekillendirilmesi sadece PDF'e veya XPS biçimlerine dışa aktarılırken yapılır.

{{% /alert %}}

Tipik bir uygulamada metin şekillendirici fabrikanın tek bir örneği tüm belge örnekleri arasında paylaşılır. Bir metin şekilleyici oluşturulduğunda bir yazı tipi dosyası erişilir. Tip dosyasını ayrıştırmak pahalı bir işlemdir, bu nedenle önbelleğe alma önerilir. Aspose.Words, Temel metin şekilleyici önbellek sınıfını uygulayan ve sarılarak fabrikanın döndürdüğü metin şekilleyici örneklerini önbelleğe alan TemelMetinShaperCache sınıfını uygular.

Aşağıdaki kod örneği size OpenType özelliklerinin desteğini nasıl etkinleştireceğinizi gösterir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}

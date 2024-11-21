---
title: C#'te OpenType Özelliklerini Etkinleştirin
second_title: .NET için Aspose.Words
articleTitle: OpenType Özelliklerini Etkinleştir
linktitle: OpenType Özelliklerini Etkinleştir
description: "C# kullanan gelişmiş tipografi özellikleri."
type: docs
weight: 25
url: /tr/net/enable-opentype-features/
timestamp: 2024-07-10-14-38-57
---

OpenType, PostScript ve TrueType'a kıyasla uluslararası diller ve yazı sistemleri için daha iyi destek sağlamak amacıyla tanıtılan bir yazı tipi formatıdır. OpenType'ın düzen özellikleri genellikle OpenType özellikleri olarak bilinir. Aspose.Words.Shaping.HarfBuzz paketi, HarfBuzz metin şekillendirme motorunu kullanarak Aspose.Words'teki OpenType özellikleri için destek sağlar.

Aspose.Words, harici olarak sağlanan metin şekillendirici nesneleri kullanma yeteneğine sahiptir. Metin şekillendirici bir yazı tipini temsil eder ve bir metnin şekillendirme bilgilerini hesaplar. Bir belge genellikle birden fazla yazı tipine atıfta bulunur, bu nedenle bir metin şekillendirici fabrikası gereklidir. Bu paket, Aspose.Words.Layout.LayoutOptions.TextShaperFactory özelliği tarafından kullanılan bir metin şekillendirici fabrikasının uygulamasını içerir.

{{% alert color="primary" %}}

Metin şekillendirme yalnızca PDF veya XPS formatlarına dışa aktarılırken gerçekleştirilir.

{{% /alert %}}

Tipik bir uygulamada, bir metin şekillendirici fabrikasının tek bir örneği tüm belge örnekleri arasında paylaşılır. Metin şekillendirici oluşturulduğunda bir yazı tipi dosyasına erişilir. Bir yazı tipi dosyasını ayrıştırmak pahalı bir işlem olduğundan önbelleğe alma önerilir. Aspose.Words, metin şekillendirici fabrika uygulamasını saran ve sarılmış fabrika tarafından döndürülen metin şekillendirici örneklerini önbelleğe alan BasicTextShaperCache sınıfını uygular.

Aşağıdaki kod örneği, OpenType özelliklerinin desteğini nasıl açacağınızı gösterir.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-OpenType-OpenTypeFeatures-OpenTypeFeatures.cs" >}}

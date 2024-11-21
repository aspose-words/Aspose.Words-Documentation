---
title: TrueType Yazı Tiplerini C++ içinde Değiştirin ve Değiştirin
second_title: Aspose.Words için C++
articleTitle: TrueType Yazı Tiplerini Değiştirme ve Değiştirme
linktitle: TrueType Yazı Tiplerini Değiştirme ve Değiştirme
description: "Aspose.Words için C++ doğru görüntülendiğinden emin olmak için ortaya çıkan belgeye doğru TrueType yazı tiplerini gömebilir. Bir yazı tipi veya belirli bir karakter kullanılamıyorsa, Aspose.Words uygun bir yazı tipi değişimi arar veya Yazı Tipi geri dönüş mekanizmasını kullanır."
type: docs
weight: 10
url: /tr/cpp/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words, belgeleri PDF veya XPS gibi sabit sayfa biçimlerine dönüştürmek de dahil olmak üzere çeşitli görevler için TrueType yazı tipi gerektirir. Aspose.Words bir belgeyi oluşturduğunda, ortaya çıkan belgeye TrueType yazı tiplerinin gömülmesini ve alt küme gömülmesini gerçekleştirmesi gerekir; bu, popüler PDF veya XPS biçimleri de dahil olmak üzere bir belge oluşturma sırasında normal bir uygulamadır. Bu, belgenin herhangi bir görüntüleyicide aynı görünmesini sağlar. Ayrıca, XPS belirtimi, yazı tiplerinin her zaman belgeye gömülmesini gerektirir.

Aspose.Words'ın karakterleri doğru bir şekilde ölçtüğünden ve ilgili yazı tiplerini başarıyla yerleştirdiğinden emin olmak için aşağıdaki koşulların karşılanması gerekir:

1. Aspose.Words sistemdeki TrueType font dosyalarını bulup erişebilmelidir.
1. Aspose.Words için yeterli TrueType yazı tipi bulunmalıdır, tercihen belgede kullanılanlarla aynı yazı tipi aile adlarına sahip olmalıdır.

Belgedeki yazı tipinin, `TrueType` yazı tipi (fiziksel yazı tipi) varlığından farklı olan aile adı, stil, boyut, renk gibi bir varlığı temsil ettiğini unutmayın. Aspose.Words işlemenin bir aşamasında belgedeki yazı tipini fiziksel bir yazı tipine dönüştürür. Bu, en yaygın olarak mizanpaj oluşturma sırasında metin boyutunu hesaplama ve sabit sayfa biçimlerine gömme / alt kümeleme görevi olan belirli görevleri etkinleştirir. HTML yüklenirken yazı tipi çözme ve değiştirme veya bazı akış biçimlerine gömme / alt kümeleme gibi daha az popüler olan bir dizi başka görev de aynı şekilde etkinleştirilir.

## Aspose.Words Yazı Tiplerini Nerede Arar

Aspose.Words dosya sistemindeki TrueType fontları otomatik olarak bulmaya çalışır. Genellikle, `TrueType` yazı tiplerini bulmak için Aspose.Words 'ün varsayılan davranışına güvenebilirsiniz, ancak bazen TrueType yazı tiplerini içeren kendi klasörlerinizi belirtmeniz gerekir. Bu [TrueType Yazı Tipi Konumunu Belirtin](/words/cpp/specify-truetype-fonts-location/) konu, Aspose.Words 'ün yazı tiplerini nasıl ve nerede aradığını ve kendi yazı tipi konumlarınızı nasıl belirleyeceğinizi açıklar.

## Aspose.Words ve Microsoft Word Yazı Tipi Biçimlerinin İşlenmesindeki Farklılıklar

Aşağıdaki tabloda gösterildiği gibi Aspose.Words ve Microsoft Word yazı tipi biçimlerinin işlenmesinde bazı farklılıklar vardır:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType yazı tipleri ve TrueType anahatlı OpenType yazı tipleri | Desteklenen. | Desteklenen. |
| OpenType anahatları PostScript olan yazı tipleri | Çoğu senaryo için desteklenir. PDF ve XPS gibi sabit sayfa biçimlerine katıştırma desteklenmez. Metin, bitmap görüntülerle değiştirilir. | Sabit sayfa biçimlerine gömme de dahil olmak üzere çoğu senaryo için desteklenir. |
| OpenType Yazı Tipi Varyasyonları | Yalnızca adlandırılmış örnekler desteklenir. Sürekli varyasyonlar desteklenmez. | Yalnızca varsayılan örnek için desteklenir. Adlandırılmış örnekler ve sürekli varyasyonlar desteklenmez. |
| Type1 yazı tipleri | 2013'ten önceki Windows sürümlerinde ve macOS sürümlerinde desteklenir. 2013'ten itibaren Windows sürümlerinde destek kesildi. | Desteklenmiyor. |



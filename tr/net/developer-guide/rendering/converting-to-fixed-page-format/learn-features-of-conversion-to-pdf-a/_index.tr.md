---
title: PDF/A ve PDF/UA'ya dönüştürme
second_title: .NET için Aspose.Words
articleTitle: PDF/A ve PDF/UA'ya Dönüştürmenin Özelliklerini Öğrenin
linktitle: PDF/A ve PDF/UA'ya Dönüştürmenin Özelliklerini Öğrenin
description: "C#'i kullanarak PDF/A-1, PDF/A-2, PDF/A-4 ve PDF/UA'ya dönüştürün. C# kullanarak bir belgeyi dönüştürmek için en iyi PDF standardını seçin."
type: docs
weight: 25
url: /tr/net/learn-features-of-conversion-to-pdf-a-pdf-ua/
timestamp: 2024-01-31-14-23-37
---

PDF, kullanıcılar arasında çok popüler olan ve çeşitli uygulamalar tarafından yaygın olarak desteklenen sabit sayfa formatıdır, çünkü PDF belgesi her cihazda aynı görünür. Bu nedenle PDF'ye dönüştürmek Aspose.Words'in önemli bir özelliğidir.

PDF, belirli bir dosya yapısına, grafik modele, yazı tipi yerleştirmeye ve belge yapısı etiketleri, şifreleme, dijital imzalar ve düzenlenebilir formlar gibi bazı karmaşık çıktı işlevlerine sahip olduğundan başlı başına karmaşık bir formattır. Ayrıca bir belgeyi PDF'ye dönüştürmek, karmaşık ve zaman alıcı olan birkaç hesaplama aşaması gerektirir.

Aşağıdaki makalelerde, çeşitli PDF standartlarındaki belgelerle çalışırken ortaya çıkabilecek ana sorunları ele alacağız ve bunları çözme seçeneklerini açıklayacağız.

## Aspose.Words Hangi PDF Standardını Destekliyor?

Aspose.Words artık kullanıcıların PDF/A-1, PDF/A-2 ve PDF/A-4 formatlarının yanı sıra PDF/UA-1 ile çalışmasına olanak tanıyor:

* PDF/A-1'in şeffaflık gibi ciddi sınırlamaları vardır ve bazı sıkıştırma seçenekleri yasaktır
* PDF/A-2, PDF/A-1'in şeffaflık ve katman efektleri desteği veya OpenType yazı tiplerinin gömülmesi gibi bazı sınırlamalarını ortadan kaldırır
* PDF/A-4, revize edilmiş uyumluluk seviyelerini varsayar: normal PDF/A-4 uyumu, önceki sürümlerin U düzeyi uyumluluğuna eşdeğerdir ve A düzeyi uygunluğu kaldırılır
* PDF/UA-1 içeriği ISO 32000-1: 2008'e göre etiketlenmeli ve standartlaştırılmalıdır

PDF/A, elektronik belgelerin arşivlenmesinde ve uzun süreli saklanmasında kullanılmak üzere tasarlanmış, ISO standardına uygun bir PDF sürümüdür. Aynı zamanda PDF/UA, yardımcı teknoloji kullanan engelli kişiler için erişilebilirlik sağlamak amacıyla tasarlanmış PDF'nin başka bir ISO standartlaştırılmış sürümüdür. PDF standartlarıyla uyumluluk düzeyini belirlemek için [Compliance](https://reference.aspose.com/words/tr/net/aspose.words.saving/pdfsaveoptions/compliance/) özelliğini kullanın. Depolama koşulları nedeniyle, PDF/A belgesinin tüm yazı tiplerini yerleştirmesi ve şifrelemeyi devre dışı bırakması gerekirken, PDF/UA'nın yalnızca tüm yazı tiplerini yerleştirmesi gerekir.

Bu bölümde PDF/A veya PDF/UA-1 belgeleriyle çalışmaya daha yakından bakacağız.

## PDF Standartları için İlgili ISO

Farklı PDF standartları hakkında daha fazla bilgi edinmek için aşağıdaki ISO'leri kontrol edin:

* PDF 1.7 = ISO-32000-1: 2008
* PDF 2.0 = ISO-32000-2: 2020
* PDF/A-1 = ISO-19005-1: 2005
* PDF/A-2 = ISO-19005-2: 2011
* PDF/A-4 = ISO-19005-4: 2020
* PDF/UA-1 = ISO-14289: 2014

## Ayrıca bakınız

* [Bir Belgeyi PDF'ye Dönüştürme](/words/tr/net/convert-a-document-to-pdf/)
* [Adobe Acrobat'te belge yapısı etiketleri nasıl düzenlenir?](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Microsoft Word'te metin dili nasıl kontrol edilir veya düzenlenir?](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Adobe Acrobat'te metin dili nasıl değiştirilir?](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Microsoft Word'te bir şekle, resme, grafiğe, SmartArt grafiğine veya başka bir nesneye alternatif metin nasıl eklenir?](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Etiketlere alternatif metin ve ek bilgiler nasıl eklenir?](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (veya aynı bilgiyi [Adobe Acrobat Kullanım Kılavuzu](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)'de okuyun)
* [Metin için ActualText girişi nasıl kurulur](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), "Kısaltılmış Bir Terim, Formül veya Unicode Olmayan Sembol için Gerçek Metin Ekleme" bölümü
* [Yaygın Windows sembolik yazı tipleri için Unicode eşleme](http://www.alanwood.net/demos/webdings.html)

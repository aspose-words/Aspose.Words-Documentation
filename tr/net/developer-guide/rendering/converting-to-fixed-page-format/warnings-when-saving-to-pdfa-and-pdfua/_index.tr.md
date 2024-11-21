---
title: PDF/A ve PDF/UA'ya Kaydederken Uyarılar
second_title: .NET için Aspose.Words
articleTitle: PDF/A ve PDF/UA'ya Kaydederken Erişilebilirlik Sorunu Uyarıları
linktitle: PDF/A ve PDF/UA'ya Kaydederken Erişilebilirlik Sorunu Uyarıları
description: "PDF/A ve PDF/UA, belge içeriğiyle ilgili erişilebilirlik gereksinimleri uygular. C#'te PDF/A veya PDF/UA'ya kaydederken sorun uyumluluğu ihlal ettiğinde bir uyarı verilir."
type: docs
weight: 29
url: /tr/net/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

PDF/A ve PDF/UA formatları, Word'den PDF'ye otomatik dönüştürme sırasında yerine getirilemeyen, belge içeriğiyle ilgili bir dizi erişilebilirlik gereksinimi getirir. Bu gereksinimler *"PDF/A veya PDF/UA ile çalışma"* adlı önceki makalede açıklanmıştır. Şimdi bu sorunlardan bazıları için uyarılar veriliyor.

PDF/A veya PDF/UA formatlarından birine kaydederken uyarılar veriliyor ve sorun uyumluluğu ihlal ediyor. Örneğin, eksik belge başlığıyla ilgili uyarı, PDF/UA'ya kaydederken verilecektir, PDF/A'ya kaydederken yayınlanmayacaktır.

Tüm uyarılar [WarningType](https://reference.aspose.com/words/tr/net/aspose.words/warningtype/)**.MinorFormattingLoss** ve [WarningSource](https://reference.aspose.com/words/tr/net/aspose.words/warningsource/)**.Pdf**'e aittir. Yeni Açıklama uyarı değerlerinin listesi aşağıda verilmiştir:

|  Açıklama uyarı değeri |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "Belge başlığı eksik. Bu, uyumluluk gereksinimlerini ihlal ediyor. Çıktı belgesi tam olarak uyumlu olmayacak." |                          |   {{< emoticons/tick >}}  |
|  "Belgede seviyelerin birbirini takip etmediği başlıklar yer alıyor. Bu durum uyumluluk gerekliliklerini ihlal ediyor. Çıktı belgesi tam olarak uyumlu olmayacak." |                          |   {{< emoticons/tick >}}  |
|  "Belgede alternatif metni olmayan şekiller var. Bu, uyumluluk gereksinimlerini ihlal ediyor. Çıktı belgesi tam olarak uyumlu olmayacak." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Belgede alternatif metni olmayan tablolar var. Bu, uyumluluk gereksinimlerini ihlal ediyor. Çıktı belgesi tam olarak uyumlu olmayacak." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Belgede alternatif metni olmayan köprü bağlantılar var. Bu, uyumluluk gerekliliklerini ihlal ediyor. Çıktı belgesi tam olarak uyumlu olmayacak." |                          |   {{< emoticons/tick >}}  |
|  "Belgede başlık satırı/sütun içermeyen tablolar var. Bu, uyumluluk gereksinimlerini ihlal ediyor. Çıktı belgesi tam olarak uyumlu olmayacak." |                          |   {{< emoticons/tick >}}  |
|  "Belge Unicode PUA karakterleri içeriyor. Bu, uyumluluk gereksinimlerini ihlal ediyor. Çıktı belgesi tam olarak uyumlu olmayacak." |   {{< emoticons/tick >}}  |                          |
|  "Belge .notdef glyph'ler içeriyor. Bu, uyumluluk gereksinimlerini ihlal ediyor. Çıktı belgesi tam olarak uyumlu olmayacak." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |

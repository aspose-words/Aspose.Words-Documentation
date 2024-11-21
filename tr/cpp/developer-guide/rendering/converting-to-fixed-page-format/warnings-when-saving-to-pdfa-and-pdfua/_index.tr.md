---
title: PDF/A ve PDF/UA 'a Kaydederken Uyarılar
second_title: Aspose.Words için C++
articleTitle: Erişilebilirlik PDF/A ve PDF/UA olarak Kaydedilirken Uyarı Verir
linktitle: Erişilebilirlik PDF/A ve PDF/UA olarak Kaydedilirken Uyarı Verir
description: "PDF/A ve PDF/UA belge içeriğiyle ilgili erişilebilirlik gereksinimleri getirir. C++ 'de PDF/A veya PDF/UA 'a kaydederken ve sorun uyumluluğu ihlal ettiğinde bir uyarı verilir."
type: docs
weight: 39
url: /tr/cpp/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

PDF/A ve PDF/UA biçimleri, Word'den PDF biçimine otomatik dönüştürme sırasında yerine getirilemeyen belge içeriğiyle ilgili bir dizi erişilebilirlik gereksinimi getirir. Bu gereksinimler önceki makalede açıklanmıştır *"Working with PDF/A or PDF/UA"*. Şimdi bu sorunlardan bazıları için uyarılar yayınlanmaktadır.

PDF/A veya PDF/UA biçimlerinden birine kaydedilirken uyarılar verilir ve sorun uyumluluğu ihlal eder. Örneğin, eksik belge başlığıyla ilgili uyarı PDF/UA olarak kaydedilirken verilir ve PDF/A olarak kaydedilirken verilmez.

Tüm uyarılar **WarningType.MinorFormattingLoss** ve **WarningSource.Pdf** 'dir. İşte yeni Açıklama uyarı değerlerinin bir listesi:

| Açıklama uyarı değeri | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "Belge başlığı eksik. Bu, uyumluluk gereksinimlerini ihlal eder. Çıktı belgesi tam olarak uyumlu olmayacaktır." |  | {{< emoticons/tick >}} |
| "Belge, seviyeleri ardışık olmayan başlıklar içeriyor. Bu, uyumluluk gereksinimlerini ihlal eder. Çıktı belgesi tam olarak uyumlu olmayacaktır." |  | {{< emoticons/tick >}} |
| "Belgede alt metni olmayan şekiller var. Bu, uyumluluk gereksinimlerini ihlal eder. Çıktı belgesi tam olarak uyumlu olmayacaktır." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Belgede alt metni olmayan tablolar var. Bu, uyumluluk gereksinimlerini ihlal eder. Çıktı belgesi tam olarak uyumlu olmayacaktır." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Belgede alt metni olmayan köprüler var. Bu, uyumluluk gereksinimlerini ihlal eder. Çıktı belgesi tam olarak uyumlu olmayacaktır." |  | {{< emoticons/tick >}} |
| "Belgede başlık satırı / sütunu olmayan tablolar var. Bu, uyumluluk gereksinimlerini ihlal eder. Çıktı belgesi tam olarak uyumlu olmayacaktır." |  | {{< emoticons/tick >}} |
| "Belge Unicode PUA karakterleri içeriyor. Bu, uyumluluk gereksinimlerini ihlal eder. Çıktı belgesi tam olarak uyumlu olmayacaktır." | {{< emoticons/tick >}} |  |
| "Belge içeriyor.glifleri tanımlamıyorum. Bu, uyumluluk gereksinimlerini ihlal eder. Çıktı belgesi tam olarak uyumlu olmayacaktır." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |

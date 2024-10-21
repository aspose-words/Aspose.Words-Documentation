---
title: PDF/A ve PDF/UA'ya Kaydetirken Uyarılar
second_title: Aspose.Words için Java
articleTitle: PDF/A ve PDF/UA'ya Kaydetme Sırasında Erişilebilirlik Sorunu Uyarıları
linktitle: PDF/A ve PDF/UA'ya Kaydetme Sırasında Erişilebilirlik Sorunu Uyarıları
description: "PDF/A ve PDF/UA, belge içeriğiyle ilgili erişilebilirlik gereksinimleri koyar. PDF/A veya PDF/UA olarak kaydetme Java ve sorunu uyumluluk ihlali durumunda uyarı oluşturulur."
type: docs
weight: 29
url: /tr/java/warnings-when-saving-to-pdfa-and-pdfua/
---

PDF/A ve PDF/UA formatları Word'den PDF'ye otomatik dönüştürme sırasında karşılanamayan belge içeriğine ilişkin bir dizi erişilebilirlik gereksinimi getirir. Bu gereksinimler önceki makale *PDF/A veya PDF/UA ile Çalışma* 'da tanımlandılar. Şimdi bu sorunlardan bazıları için uyarı veriliyor.

Uyarılar, bir PDF/A veya PDF/UA formatına kaydedilirken yayılır ve sorun uyumluluk ihlali ile ilgilidir. Örneğin, eksik belge başlığı hakkında uyarı, PDF/UA'ya kaydedilirken verilecek ve PDF/A'ya kaydedilirken verilmeyecektir.

Tüm uyarılar [WarningType](https://reference.aspose.com/words/java/com.aspose.words/warningtype/)**.MinorFormattingLoss** ve [WarningSource](https://reference.aspose.com/words/java/com.aspose.words/warningsource/)**.pdf** 'dir. İşte yeni Açıklama uyarı değerlerinin listesi:

| Tanım uyarısı değeri | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "Document unvanı eksik. Bu uyum gereksinimlerini ihlal ediyor. Çıktı belgesi tam olarak uyumlu olmayacaktır." |  | {{< emoticons/tick >}} |
| "The document contains goings which levels are not outside. Bu uyumluluk gereksinimlerini ihlal ediyor. Çıktı belgesi tam uyumlu olmayacak." |  | {{< emoticons/tick >}} |
| " Belgede alt metin olmadan şekil var. Bu uyumluluk gereksinimlerini ihlal ediyor. Çıktı belgesi tam olarak uyumlu olmayacak." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| Bileşikte, "alt metni olmayan tablolar var. Bu uyumluluk gereksinimlerini ihlal eder. Çıkış belgesi tamamen uyumlu olmayacak." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| Belgede alt metin olmadan hiperlinkler var. Bu uyum gereksinimlerini ihlal ediyor. Çıktı belgesi tamamen uyumlu olmayacak." |  | {{< emoticons/tick >}} |
| “Ölçücü sıra/column olmadan masalar var. Bu uyum gereksinimlerini ihlal eder. Çıktı belgesi tamamen uyumlu olmayacak." |  | {{< emoticons/tick >}} |
| "The document contains Unicode PUA karakterleri. Bu uyum gereksinimlerini ihlal eder. Çıktı belgesi tam uyumlu olmayacak." | {{< emoticons/tick >}} |  |
| "The document contains .notdef glyphs. Bu uyumlu olma gereksinimlerini ihlal ediyor. Çıktı belgesi tam uyum sağlaymayacak." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |

---
title: Windows Meta Dosyalarını Kullanma
second_title: Python via .NET için Aspose.Words
articleTitle: Windows Meta Dosyalarını Kullanma
linktitle: Windows Meta Dosyalarını Kullanma
description: "Python via .NET için Aspose.Words, tüm platformlarda Meta Dosyası formatını oynatmak için kendi Windows Meta Dosyası oynatıcısını uygular ve temel meta dosyası özelliklerinin işlenmesini destekler ve farklı türde bir meta dosyası oynatıcısına geri dönüş gerçekleştirebilir."
type: docs
weight: 30
url: /tr/python-net/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

Windows Meta Dosyası formatı, hem vektör hem de raster grafikleri içerebilen bir görüntü dosyası formatıdır. Bu format, grafik verilerini bellekte veya diskteki dosyalara depolamak için kullanılır. Bir meta dosyası, Windows Grafik Aygıt Arayüzünde (GDI) görüntüyü ekranda görüntülemek için yürütülmesi gereken işlev çağrılarının bir listesini saklar. Sistem bu komutları ekran bağlamında yorumlar ve yürütür.

Daha önce Windows Meta Dosyası, Microsoft Word tarafından desteklenen tek vektör görüntü formatıydı. Microsoft Word artık SVG biçimini de desteklemektedir, ancak meta dosyası biçimi Word belgelerinde hâlâ yaygın olarak kullanılmaktadır. Ayrıca Meta dosyası, Microsoft Visio gibi diğer bazı uygulamalar için bir değişim formatı olabilir. Metafile'ın esas amacı Windows uygulamaları arasında grafiksel bilgi alışverişini sağlamaktır.

Windows Meta Dosyasının 3 sürümü vardır:

- WMF – çağrıyı 16bit GDI'ya saklar.
- EMF – çağrıyı Win32/GDI'ye saklar.
- EMF+ Meta dosyası, GDI+'ya yapılan çağrıyı saklar. EMF+ Meta dosyası aynı zamanda hem EMF hem de EMF+ parçalarıyla aynı grafikleri tanımlayan ikili olabilir.

Windows Meta Dosyası ile ilgili mevcut sorun, belgelerin genellikle kaydedildiği çoğu Word dışı format tarafından desteklenmemesidir. Bu nedenle Metafile formatının diğer raster veya vektör formatlarına dönüştürülmesi gerekmektedir. Windows Meta Dosyasını .NET'de GDI+'ya aktararak raster görüntüye dönüştürmek kolaydır, ancak GDI+ bile vektör grafiklerini Meta Dosyasından çıkarma işlevselliğini sağlamadığından diğer platformlarda bu mümkün değildir. Bu sorunları çözmek için Aspose.Words, tüm platformlarda hem vektör hem de raster grafikleri Meta Dosyası formatını oynatabilen kendi Windows Meta Dosyası oynatıcısını uygular.

## Aspose.Words Meta Dosyası Oynatıcısını Kontrol Etme

[MetafileRenderingOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/) sınıfı meta dosyası oynatıcısını kontrol etmenizi sağlar. Örneğin, bitmaplere dönüştürürken özel bir anlamı olan [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/) özelliğini kullanarak meta dosyası görüntülerinin nasıl oluşturulması gerektiğini belirleyebilirsiniz (ayrıca [ImageSaveOptions.metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/) özelliğine bakın).

Bitmap'e kaydetme, .NET dışındaki platformlarda farklı şekilde çalışır. .NET GDI+ oluşturma, en karmaşık meta dosya formatı için bile neredeyse mükemmel çalışan bir referans olsa da, diğer platformlarda sorunlara neden olabilir veya hiç desteklenmeyebilir.

## Raster İşlemlerini Destekleme

Raster işlemleri, şu anda sınırlı desteğe sahip olan karmaşık bir meta dosyası özelliğidir. Raster işlemleri WMF ve EMF meta dosyası formatlarında mevcuttur. EMF+ meta dosyası formatı tarama işlemlerini doğrudan kullanmaz ancak EMF parçalarını, gömülü WMF veya EMF meta dosyalarını içerebilir.

İkili ve üçlü tarama işlemleri vardır:

- Çizgi ve eğri çizme gibi kalemle çizim komutlarına ikili tarama işlemleri uygulanır. Bir çizgi çizilirken kalem rengi, onaltılık renk değerleriyle belirtilen bit düzeyinde mantıksal işlemler kullanılarak hedef bitmap rengiyle (cihaz yüzeyinde karşılık gelen pikselin rengi) birleştirilir. Aşağıdaki görüntü örneği, 20 farklı renk çubuğuna uygulanan 16 ikili tarama işleminin tamamının etkisini göstermektedir. Dikey renk çubukları ilk önce çizilir, yatay çubuklar her ikili tarama işlemi uygulandıktan sonra çizilir. Basit durumlarda, R2_BLACK siyah çizer, R2_NOT rengi tersine çevirir, R2_NOP arka planı değiştirmez ve R2_WHITE beyaz çizer.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="işleme-windows-metafiles-aspose-words-net-1" style="width:650px"/>

- Bitmap görüntüleri çizilirken üçlü raster işlemleri uygulanır. Belirtilen onaltılık renk değerleriyle bit düzeyinde mantıksal işlemler kullanarak karşılık gelen bitmap görüntü piksellerinin, fırçanın ve hedef bitmap'in renklerini birleştirirler. Üçlü tarama işlemlerini kullanmanın en yaygın amaçlarından biri şeffaflığın öykünülmesidir. Aşağıdaki örnekte verilen görüntü, simge şeffaflığının nasıl taklit edilebileceğini göstermektedir. İki tür bitmap vardır: siyah beyaz maske bitmap ve renkli bitmap. İlk olarak maske bitmap'i SRCAND raster işlemiyle çizilir. Opak simge bölgesini siyah beyaza değiştirir ve şeffaf bölgeyi değiştirmeden bırakır. Daha sonra SRCINVERT tarama işlemi ile ikinci bitmap çizilir. Saydam bölgeyi değiştirmeden bırakarak siyah bölgedeki renkli pikselleri görüntüler.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="işleme-windows-metafiles-aspose-words-net-2" style="width:650px"/>

Raster işlemleri doğrudan vektör grafiklerine dönüştürülemez. Aspose.Words, tarama işlemlerinden etkilenen aygıt yüzeyini kısmen rasterleştirerek tarama işlemlerini taklit eder. Bu amaçla [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) özelliği kullanılır.

{{% alert color="primary" %}}

İkili tarama işlemleri şu anda desteklenmese ve sınırlı sayıda üçlü tarama işlemleri Aspose.Words tarafından desteklense de, vektör grafiklere dönüştürmenin temel durumlarını doğrudan işleyebilir, örneğin R2_BLACK, R2_WHITE, R2_NOP. Ayrıca, cihaz yüzeyinin rasterleştirilmesi, özellikle önemli sayıda tarama işlemi kaydı söz konusu olduğunda performansı önemli ölçüde etkiler.

{{% /alert %}}

Aşağıda gösterilen örnek, bazı meta dosyası kayıtlarının vektör grafiklerine doğru şekilde işlenmesi mümkün olmadığında Aspose.Words'in bir meta dosyasını bitmap'e nasıl işlediğini gösterir:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir +  "Rendering.docx")

metafileRenderingOptions = aw.saving.MetafileRenderingOptions()
metafileRenderingOptions.emulate_raster_operations = False
metafileRenderingOptions.rendering_mode = aw.saving.MetafileRenderingMode.VECTOR_WITH_FALLBACK

saveOptions = aw.saving.PdfSaveOptions()
saveOptions.metafile_rendering_options = metafileRenderingOptions

doc.save(docs_base.artifacts_dir +"PdfSaveOptions.HandleRasterWarnings.pdf", saveOptions)
{{< /highlight >}}

## Meta Dosyası Geri Dönüş Ayarları

Aspose.Words, en karmaşık veya nadir olan bir dizi meta dosyası özelliğini desteklemez. Bu durumda Aspose.Words, farklı türde bir meta dosya oynatıcısına geri dönüş gerçekleştirebilir

İlk olarak Aspose.Words, vektör meta dosyası oynatıcısından [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/) özelliği tarafından kontrol edilen raster'a geri dönüş gerçekleştirir. Geri dönüş özelliği devre dışı bırakılırsa Aspose.Words, desteklenmeyen özellikler yerine bazı ikame grafikleri oluşturmaya çalışır.

Aspose.Words, .NET'de GDI+ kullanarak meta dosyasını başarılı bir şekilde taramaya oynatır; bu, bu geri çağırma seçeneğini güvenli kılar.

İkinci olarak, EMF+ Dual meta dosyasının EMF+ bölümünü oynatmaktan EMF bölümüne geri dönme seçeneği vardır. [emf_plus_dual_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emf_plus_dual_rendering_mode/) tarafından kontrol edilir. EMF kısmı oynatılırken bazı sorunlar ortaya çıkarsa taramaya geri dönüş de gerçekleştirilebilir.

Tarama işlemlerine gelince, [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) devre dışı bırakılırsa tarama işlemlerinin desteklenmediği kabul edilir ve bu, etkinleştirildiğinde bitmap meta dosyası oynatıcısına geri dönüşü tetikler. Bu nedenle, tarama işlemleri içeren bir meta dosyanız varsa ancak tarama işlemleri emülasyonunu kullanmak istemiyorsanız ve yine de vektör çıktısını ikame grafikleriyle almak istiyorsanız [MetafileRenderingMode.VECTOR](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingmode/#vector)'yi seçin.

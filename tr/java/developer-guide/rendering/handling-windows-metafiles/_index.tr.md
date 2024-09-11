---
title: Java içinde Windows Meta dosyalarıyla başa çıkma
second_title: Aspose.Words için Java
articleTitle: İşlem Windows metafilleri
linktitle: İşlem Windows metafilleri
description: "Aspose.Words için Java uygulamak kendi Windows Metafile oynatıcısını oynatır Metafile biçimini tüm platformlarda ve temel metafile özelliklerini yönetmeyi destekler ve farklı türde bir metafile oynatıcısıya düşebilir."
type: docs
weight: 30
url: /tr/java/handling-windows-metafiles/
---

Windows Metafile biçimi hem vektör hem de piksel grafiklerini içerebilen bir resim dosya biçimidir. Bu biçim, bellekte veya disk dosyalarında grafik veri depolamak için kullanılır. Metafile, görüntünün ekranda görüntülenmek için gerekli olan Windows Grafik Arayüz Arayüzü'nde (GDI) bir fonksiyon çağrıları listesini saklar. Sistem bu komutları görüntü bağlamında yorumlar ve yürütür.

Daha önce, Windows Metafile, Microsoft Word'in desteklediği tek vektör görüntü formatıydı. Microsoft Word şimdi ayrıca SVG formatını da destekliyor, ancak metafile formatı hala Word belgelerinde yaygın olarak kullanılıyor. Ayrıca, MetaFile bir değiş tokuş biçimi olarak diğer uygulamalar için de kullanılabilir, örneğin Microsoft Visio. Temelde, Meta dosya için ana amaç grafiksel bilginin Windows uygulamalar arasında değişimini sağlamaktır.

3 tane Windows metafile sürümü var:

- WMF – 16 bit GDI çağırıyor.
- EMF -Win32/GDI'ya çağrı depolar.
- EMF+ Meta dosya, GDI'ye çağrıyı depolar. EMF+ Metafile aynı grafikleri hem EMF hem de EMF+ parçalarıyla tarif eden ikili de olabilir.

Mevcut Windows metafile sorunu, çoğu Word olmayan formatta desteklenmemesidir ve dosyalar genellikle kaydedilir. Bunun için Metafile formatını diğer raster veya vektör formatlarına dönüştürmek gereklidir. Metafile'ı bir raster görüntüsüne dönüştürmek kolaydır Windows .NET'da sadece onu GDI+'ya geçirerek, ancak diğer platformlarda bunu yapmak mümkün değildir çünkü hatta GDI+, metafile'den vektör grafikleri ayıklamak için işlevsellik sağlamaz. Bu sorunları çözmek için, Aspose.Words kendi Windows Metafile oynatıcısını uygular. Oynatıcı tüm platformlarda hem vektör hem de raster grafikleri oynatabilir.

## Metafile Oyuncusunu Kontrol Etme Aspose.Words

The [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) sınıfı size metafile oynatıcısını kontrol etmenizi sağlar. Örneğin, bir meta dosya görüntüsünün nasıl işleneceğini belirlemek için, [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/) özelliğini kullanabilirsiniz, bu özellik, bir bitmap'e dönüştürülürken özel bir anlama sahiptir (aynı zamanda [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions) özelliğine de bakın).

## Raster İşlemleri Destekleme

Raster işlemleri şu anda sınırlı destek sunan karmaşık bir metafil özelliğidir. Raster işlemleri WMF ve EMF metafil biçimlerinde mevcuttur. EMF+' metafile biçimi doğrudan rastgele işlemler kullanmaz ancak EMF parçalarını, gömülü WMF veya EMF metafilelerini içerebilir.

İkili ve üçlü raster işlemleri vardır:

"- İkili raster işlemleri kalem çizim komutlarına uygulanır, örneğin çizgileri ve eğrileri çizmek." Bir çizgi çizerken, kalem rengi belirtilen bitwise mantıksal işlemler kullanılarak hedef bitmap rengi (aygıt yüzeyindeki karşılık gelen pikselin rengi) ile birleştirilir. Aşağıdaki resim örneği, 20 farklı renk çubuğuna tüm 16 ikili raster işlemin etkisini göstermektedir. Dikey renk çubukları önce çizilir, ikili raster işlemi uygulandıktan sonra yatay çubuklar çizilir. Basit örnekler için R2_BLACK siyah çiziyor, R2_NOT rengi ters çevirir, R2_NOP arka planı değiştirmez ve R2_WHITE beyaz çiziyor.

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- Üçlü raster işlemleri, bitmap görüntüleri çizilirken uygulanır. Onlar karşılık gelen bitmap resim piksellerinin renklerini fırça ve hedef bitmap birleştiriyor, belirli heks renk değerleriyle bitişik mantıksal işlemler kullanarak. Ternery raster işlemlerinin en yaygın amaçlarından biri şeffaflığı taklit etmektir. Aşağıdaki örnekte verilen görüntü, simge şeffaflığını nasıl taklit edileceğini göstermektedir. İki tür bitmap vardır: siyah beyaz maske bitmap ve renk bitmap. Önce, mask bitmapı SRCAND raster işlemi ile çizilir. Bu, opak simge bölgesini siyah beyaz yapıyor ve saydam bölgeyi değiştirmeden bırakıyor. Ardından ikinci bit eşleme, SRCINVERT raster işlemi ile çizilir. Siyah bölge üzerinde renk piksellerini görüntüler, şeffaf bölgeyi değiştirmeden bırakır.

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

Raster işlemleri doğrudan vektör grafiklerine dönüştürülemez. Aspose.Words raster işlemlerini kısmen rasterleştirerek raster işlemiyle etkilenen cihaz yüzeyini taklit eder. Bu amaçla [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) özelliği kullanılır.

{{% alert color="primary" %}}

İkili raster işlemleri henüz desteklenmiyor ve sınırlı sayıda üçlü raster işlemi Aspose.Words'tarafından destekleniyor ancak doğrudan vektör grafiğe dönüştürme gibi temel durumları işleyebiliyor örneğin, R2_BLACK, R2_WHITE, R2_NOP. Ayrıca, cihaz yüzeyinin rasterizasyonu önemli ölçüde performansı etkiler, özellikle de raster işlemi kayıtlarının önemli bir sayısı söz konusu olduğunda.

{{% /alert %}}

Aşağıda gösterilen örnek, bir metafilin bazı kayıtlarını vektör grafiklerine doğru şekilde dönüştürmenin mümkün olmadığı durumlarda Aspose.Words 'nin bir bitmap oluşturmak için nasıl bir metafili işlediğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}

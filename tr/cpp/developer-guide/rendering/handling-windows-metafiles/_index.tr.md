---
title: Windows Meta Dosyalarını C++ içinde işleme
second_title: Aspose.Words için C++
articleTitle: Windows Meta Dosyalarının işlenmesi
linktitle: Windows Meta Dosyalarının işlenmesi
description: "Aspose.Words için C++ meta dosyası biçimini tüm platformlarda oynatmak için kendi Windows Meta dosyası yürütücüsünü uygular ve temel meta dosyası özelliklerinin işlenmesini destekler ve farklı türde bir meta dosyası yürütücüsüne geri dönüş gerçekleştirebilir."
type: docs
weight: 30
url: /tr/cpp/handling-windows-metafiles/
timestamp: 2024-01-30-16-22-34
---

Windows Meta dosyası biçimi, hem vektör hem de raster grafikler içerebilen bir görüntü dosyası biçimidir. Bu biçim, grafik verilerini bellekte veya diskteki dosyalarda depolamak için kullanılır. Meta dosyası, görüntüyü ekranda görüntülemek için yürütülmesi gereken Windows Grafik Aygıt Arabiriminde (GDI) işlev çağrılarının bir listesini depolar. Sistem bu komutları görüntüleme bağlamında yorumlar ve yürütür.

Eskiden Windows Meta dosyası, Microsoft Word tarafından desteklenen tek vektör görüntü biçimiydi. Microsoft Word artık SVG biçimini de destekliyor, ancak meta dosyası biçimi hala Word belgelerinde yaygın olarak kullanılıyor. Ayrıca, Meta dosyası Microsoft Visio gibi diğer bazı uygulamalar için bir değişim biçimi olabilir. Esasen Meta dosyasının temel amacı, Windows uygulamalar arasında grafiksel bilgi alışverişini sağlamaktır.

Windows Meta dosyasının 3 sürümleri vardır:

- WMF - çağrıyı 16 bit GDI olarak depolar.
- EMF - Win32 / GDI çağrısını depolar.
- EMF+ Meta dosyası depoları GDI+ 'ya çağrı yapar. EMF + Meta dosyası, aynı grafikleri hem EMF hem de EMF + parçalarıyla açıklayan ikili de olabilir.

Windows Meta Dosyasıyla ilgili mevcut sorun, belgelerin genellikle kaydedildiği çoğu Word dışı biçim tarafından desteklenmemesidir. Bu nedenle, Meta Dosyası biçiminin diğer raster veya vektör biçimlerine dönüştürülmesi gerekir. Windows Meta Dosyasını .NET üzerindeki raster görüntüye basitçe GDI + 'ya geçirerek dönüştürmek kolaydır, ancak GDI + bile vektör grafiklerini Meta Dosyasından çıkarmak için işlevsellik sağlamadığı için diğer platformlarda mümkün değildir. Bu sorunları çözmek için Aspose.Words, Meta Dosyası biçimini tüm platformlarda hem vektör hem de raster grafikleri oynatabilen kendi Windows Meta dosyası oynatıcısını uygular.

## Aspose.Words Meta Dosyası Yürütücüsünü Denetleme

[MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/) sınıfı meta dosyası yürütücüsünü denetlemenizi sağlar. Örneğin, meta dosyası görüntülerinin bitmaplere dönüştürülürken özel bir anlamı olan [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/) özelliği kullanılarak nasıl işleneceğini belirleyebilirsiniz (ayrıca bkz. [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/metafilerenderingoptions/) özelliği).

Bir bitmap'e kaydetme, .NET dışındaki platformlarda farklı çalışır. .NET GDI + oluşturma, en karmaşık meta dosya biçimi için bile neredeyse mükemmel çalışan bir referans olsa da, diğer platformlarda sorunlara neden olabilir veya hiç desteklenmeyebilir.

## Raster İşlemleri Destekleme

Raster işlemleri, şu anda sınırlı desteği olan karmaşık bir meta dosyası özelliğidir. Raster işlemleri WMF ve EMF meta dosyası biçimlerinde mevcuttur. EMF + meta dosyası biçimi doğrudan raster işlemleri kullanmaz, ancak EMF parçalar, gömülü WMF veya EMF meta dosyaları içerebilir.

İkili ve üçlü raster işlemleri vardır:

- İkili raster işlemleri, çizgi ve eğri çizme gibi kalem çizim komutlarına uygulanır. Bir çizgi çizerken, kalem rengi, onaltılık renk değerleriyle belirtilen bitsel mantıksal işlemler kullanılarak hedef bitmap rengiyle (aygıt yüzeyindeki karşılık gelen pikselin rengi) birleştirilir. Aşağıdaki resim örneği, 20 farklı renk çubuğuna uygulanan 16 ikili raster işleminin etkisini göstermektedir. Önce dikey renk çubukları çizilir, her ikili raster işlemi uygulandıktan sonra yatay çubuklar çizilir. Basit durumlar için R2_BLACK siyahı çizer, R2_NOT rengi tersine çevirir, R2_NOP arka planı değiştirmez ve R2_WHITE beyazı çizer.

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-cpp-1" style="width:650px"/>

- Bitmap görüntüleri çizilirken üçlü raster işlemleri uygulanır. Belirtilen onaltılık renk değerlerine sahip bit düzeyinde mantıksal işlemler kullanarak karşılık gelen bit eşlem görüntü piksellerinin, fırçanın ve hedef bit eşlemin renklerini birleştirirler. Üçlü raster işlemlerini kullanmanın en yaygın amaçlarından biri şeffaflığın öykünmesidir. Aşağıdaki örnekte sağlanan görüntü, simge saydamlığının nasıl taklit edilebileceğini göstermektedir. İki tür bit eşlem vardır: s/b maskesi bit eşlem ve renkli bit eşlem. İlk olarak, maske bitmap SRCAND raster işlemi ile çizilir. Saydam bölgeyi değiştirmeden bırakarak opak simge bölgesini siyah beyaz olarak değiştirir. Daha sonra ikinci bitmap SRCINVERT raster işlemi ile çizilir. Saydam bölgeyi değiştirmeden bırakarak siyah bölgedeki renkli pikselleri görüntüler.

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-cpp-2" style="width:650px"/>

Raster işlemleri doğrudan vektör grafiklerine dönüştürülemez. Aspose.Words raster işlemlerinden etkilenen cihaz yüzeyini kısmen rasterleştirerek raster işlemlerini öykünür. Bu amaçla [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) özelliği kullanılır.

{{% alert color="primary" %}}

İkili raster işlemleri şu anda desteklenmez ve sınırlı sayıda üçlü raster işlemi Aspose.Words tarafından desteklenirken, temel vektör grafiklerine dönüştürme durumlarını doğrudan işleyebilir, örneğin, R2_BLACK, R2_WHITE, R2_NOP. Ayrıca, cihaz yüzeyinin rasterleştirilmesi, özellikle önemli sayıda raster işlem kaydı söz konusu olduğunda performansı önemli ölçüde etkiler.

{{% /alert %}}

Aşağıda gösterilen örnek, bazı meta dosyası kayıtlarının vektör grafiklerine doğru şekilde oluşturulması mümkün olmadığında Aspose.Words'ın bir meta dosyasını bir bitmap'e nasıl oluşturduğunu göstermektedir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cpp" >}}

## Meta Dosyası Geri Dönüş Ayarları

Aspose.Words en karmaşık veya nadir bulunan bir dizi meta dosyası özelliğini desteklemez. Kullanıcılar [IWarningCallBack](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/) arayüzünü uygulayabilir ve uyarı mesajları alabilir. Aspose.Words bir meta dosyasında desteklenmeyen özelliklerle karşılaşırsa, [WarningSource](https://reference.aspose.com/words/cpp/aspose.words/warninginfo/get_source/) ile bir uyarı mesajı verir.**Metafile**. Bu durumda Aspose.Words farklı türde bir meta dosyası oynatıcısına geri dönüş yapabilir. Geri dönüşle ilgili uyarı mesajı da verilir.

İlk olarak, Aspose.Words vektör meta dosyası oynatıcısından [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/) özelliği tarafından kontrol edilen raster'e geri dönüş gerçekleştirir. Geri dönüş özelliği devre dışı bırakılırsa, Aspose.Words desteklenmeyen özellikler yerine bazı yedek grafikler oluşturmaya çalışır.

Aspose.Words meta dosyasını GDI + on .NET kullanarak raster olarak başarıyla yürütür, bu da bu geri arama seçeneğini güvenli hale getirir.

İkinci olarak, EMF + İkili meta dosyasının EMF + parçasını çalmaktan EMF parçasına geri dönmesi için bir seçenek vardır. [EmfPlusDualRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emfplusdualrenderingmode/) tarafından kontrol edilir. EMF parçasını çalarken bazı sorunlar ortaya çıkarsa, raster'e geri dönüş de gerçekleştirilebilir.

Raster işlemlere gelince, [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) devre dışı bırakılırsa, raster işlemler desteklenmiyor olarak kabul edilir, bu da etkinleştirilmişse bitmap meta dosyası oynatıcısına geri dönüşü tetikler. Bu nedenle, raster işlemlere sahip bir meta dosyanız varsa, ancak raster işlem öykünmesini kullanmak istemiyorsanız ve yine de vektör çıktısını ikame grafiklerle almak istiyorsanız, [MetafileRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/) öğesini seçin.**Vector**.

---
title: Hipünasyon ile Java ile Çalışmak
second_title: Aspose.Words için Java
articleTitle: Hyfenleme ile Çalışmak
linktitle: Hyfenleme ile Çalışmak
description: "Daha kompakt bir metin düzeni için noktalama kullanın. Noktalama dikşölerini işlemek için gelişmiş algoritmalar sağlar, OpenOffice sözlüklerini kullanır Java."
type: docs
weight: 220
url: /tr/java/working-with-hyphenation/
---

Bazen metin bir belge içinde daha sıkı düzen için imla bölünmesi gereklidir. Aynı zamanda, sözcük imla spesifikasyonlarının her dil için farklı olabileceği gerçeğini anlamak önemlidir.

Günümüzde virgül kullanımı eskisi gibi sık değildir, özellikle de İngilizce metinlerde kullanılır. Bununla birlikte, bu özelliğin kullanımı kullanıcı belgeleri üzerinde ciddi bir etkiye sahip olabilir – virgül kullanımı düzeni ve dolayısıyla çıktı dosyalarının görünüşünü etkiler, örneğin PDF biçiminde.

Doğru sözcük bölünmesi için dil spesifikasyonlu kelime ayırma sözlükleri kullanılır. Aspose.Words bu sözlüklerle çalışmak için gelişmiş algoritmalar kullanır ve Microsoft Word'de olan aynı kelime ayrımı almanıza izin verir.

## Hyfenasyon Sözlükleri

Farklı dillerin farklı kuralları ve sözcük kırpma için farklı standartları olduğu için doğru kırpma için en iyi çözüm özel sözlükleri kullanmaktır. Aspose.Words OpenOffice sözlüklerini kullanır.

Yazım kontrolü için, OpenOffice [Hunspell library](https://hunspell.github.io/) kullanır, bu da TeX'in ebeani algoritmasının bir genellemesidir. Bu algoritma, standart ve özel ebeani kalıpları arasında rekabet ederek otomatik olarak standart olmayan ebeani kullanmayı sağlar. Hunspell, ebeani için [Hyphen](https://github.com/hunspell/hyphen) kullanır.

{{% alert color="primary" %}}

Kesme sözlükleri [LibreOffice dictionaries GitHub](https://github.com/LibreOffice/dictionaries)'dan alınabilir. Örneğin, [en-US hyphenation dictionary](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

As Microsoft Word शब्दकोशों का उपयोग ओपनऑफिस शब्दकोशों के अलावा करती है किसी भी वाक्यांशों का विभाजन करने के लिए, ओपनऑफिस द्वारा परिभाषित कुछ शब्दों का विभाजन Microsoft Word द्वारा विभाजित होने से अलग हो सकता है. इस कारण, हमें कभी-कभी ग्राहकों को सलाह देनी पड़ती है कि वे अपने शब्दकोशों में आवश्यक पैटर्न जोड़कर विभिन्न शब्दों के विभाजन को ठीक करने के लिए उन्हें शब्दकोशों को जोड़ने की है.

{{% /alert %}}

## Hipünasyon Algoritması

Aspose.Words uygular [the TeX hyphenation algorithm](https://github.com/hunspell/hyphen/blob/master/README.hyphen) ve Open Office hiyerarşi sözlüklerini yeniden kullanabilir.

Aşağıdaki Aspose.Words algoritmalarının özellikleri dikkate alınmalıdır:

Hipünasyon mesafe parametreleri (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) belirtilen ipünasyon sözlüğünde tanımlanmıştır ve göz ardı edilir. Aspose.Words belge uyumluluğu moduna bağlı olarak kendi seti olan mesafe parametrelerini kullanır.
The hyphenation algoritm in Aspose.Words destekler [composite hyphenation](https://github.com/hunspell/hyphen/blob/master/README.compound). Ancak, Aspose.Words alfabetik olmayan karakterler içeren karakter dizilerini sadece alfabetik parçalara (kelimelere) ayırır ve ayrı ayrı onları kırpar.
  Not edin ki Microsoft Word bileşik kelimelerin kırpılması mantığı belgenin uyum moduna bağlıdır.
The hyphenation algorithm in Aspose.Words doesn't implement [non-standard hyphenation](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Non-standard patterns are ignored.

## Yükleniyor Hyfenasyon Sözlükleri

Hiperninasyona özelliğini kullanmak için önce bir hiperninasyon sözlüğü kaydetmelisiniz." "Aşağıdaki kod örneği, belirtilen diller için bir dosyadan kelime ayrıştırma sözlüklerinin nasıl yükleneceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

Bu örnek için şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)'tan indirebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, belirtilen dil için bir akıştan kırpma sözlüklerini nasıl yükleyeceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

Bu örnek için şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)'tan indirebilirsiniz.

{{% /alert %}}

Önek olarak öne kayıtlı imla sözlüklerine alternatif olarak, yalnızca gerekli olan imla sözlüklerini "istek üzerine" kaydetmek mümkündür. Bunu yapmak için [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) arayüzünü uygulayın ve statik geri çağırma [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback)'i kullanın.

Aşağıdaki kod örneği **IHyphenationCallback** arayüzünün nasıl uygulanacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## Hyphenation Düzeninin Biçimlendirme Üzerindeki Etkisi

Metni satırlara ayırırken Aspose.Words her kelimenin şu anda geçerli olan satıra tamamen sığıp sığmadığını kontrol eder. Eğer başka bir kelime satırın sonuna kadar sığmayacak kadar uzun ise varsayılan olarak Aspose.Words onu sonraki satıra başlamak yerine çizgi koymadan önce satırın başına taşır.

Ancak, tireleme özelliği Aspose.Words 'da kelimelere tireler eklemek için kullanılabilir, böylece dengeli metinlerde boşluklar ortadan kalkar veya dar sütunlarda satır uzunluğu eşit tutulur. Bu elbette satır sayısı ve dolayısıyla sayfa sayısını etkileyebilir. Başka bir deyişle, tireleme fonksiyonunu kullanmak belge düzenini etkiler.

## Hyfenleme ve Hizalama (H&H)

Metnin hizalandığı ve üslama uygulandığı durumlarda bir kesme noktası seçmek için Microsoft Word karmaşık bir mantığa sahiptir. Kısacası, Microsoft Word boşlukları küçültmeyi ya da uzatıp satırın üslama ile birleşmesini önlemeyi tercih edebilir. Muhtemelen bu mantık [Knuth's article](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf)'a dayanıyor.

Aspose.Words kendi H&J algoritmasını uygular, Microsoft Word ile aynı sonucu verir ve çıktı belgesinde aynılıkl kırpma sağlar.

## Ayrıca Bakınız

* [Hyphen – hyphenation library](https://github.com/hunspell/hyphen/blob/master/README)
* [Non-standard hyphenation](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Automatic non-standard hyphenation in Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)

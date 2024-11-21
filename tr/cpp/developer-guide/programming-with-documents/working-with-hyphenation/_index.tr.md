---
title: C++ içinde Tireleme ile çalışma
second_title: Aspose.Words için C++
articleTitle: Tireleme ile Çalışma
linktitle: Tireleme ile Çalışma
description: "C++ kullanarak metnin daha kompakt bir düzenlemesi için tireleme kullanın. Tireleme sözlükleriyle çalışmak için gelişmiş algoritmalar sağlar, OpenOffice sözlükleri kullanır."
type: docs
weight: 220
url: /tr/cpp/working-with-hyphenation/
timestamp: 2024-01-30-16-22-34
---

Bazen bir belgedeki metnin daha kompakt bir düzenlemesi için tireleme kullanmak gerekir. Aynı zamanda, kelime tirelemesinin özelliklerinin her dil için farklı olabileceğini anlamak önemlidir.

Günümüzde tireleme, özellikle ingilizce metinlerde eskisi kadar sık kullanılmamaktadır. Bununla birlikte, bu özelliğin kullanımının kullanıcı belgeleri üzerinde ciddi bir etkisi olabilir – tireleme, düzeni ve sonuç olarak çıktı dosyalarının görünümünü, örneğin PDF biçiminde etkiler.

Kelimelerin doğru bölünmesi için dile özgü tireleme sözlükleri kullanılır. Aspose.Words bu tür sözlüklerle çalışmak için gelişmiş algoritmalar kullanır ve Microsoft Word ile aynı tirelemeyi elde etmenizi sağlar.

## Tireleme Sözlükleri

Farklı diller kelime tirelemesi için farklı normlar ve kurallar kullandığından, doğru tireleme için en uygun çözüm özel sözlükler kullanmaktır. Aspose.Words OpenOffice sözlükleri kullanır.

Yazım denetimi için OpenOffice [Hunspell kütüphane](https://hunspell.github.io/), tex'in tireleme algoritmasının bir genellemesidir. Bu algoritma, rakip standart ve özel tireleme kalıplarını kullanarak otomatik standart dışı tirelemeye izin verir. Hunspell kullanır [Kısa çizgi](https://github.com/hunspell/hyphen) tireleme için.

{{% alert color="primary" %}}

Tireleme sözlükleri aşağıdakilerden alınabilir: [LibreOffice sözlükler GitHub](https://github.com/LibreOffice/dictionaries). Örneğin, [tr-US tireleme sözlüğü](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word tireleme yapmak için OpenOffice sözlükleri dışındaki sözlükleri kullandığından, OpenOffice sözlükleri tarafından tanımlanan bazı kelimelerin tirelemesi Microsoft Word tirelemesinden farklı olabilir. Bu nedenle, bazen müşterilere belirli kelimelerin tirelemesini düzeltmek için sözlüklerine gerekli kalıpları eklemelerini tavsiye etmemiz gerekir.

{{% /alert %}}

## Tireleme Algoritması

Aspose.Words uygular [tex tireleme algoritması](https://github.com/hunspell/hyphen/blob/master/README.hyphen) ve OpenOffice tireleme sözlüklerini yeniden kullanabilir.

Aspose.Words algoritmalarının aşağıdaki özellikleri dikkate alınmalıdır:

* Tireleme mesafesi parametreleri (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) tireleme sözlüğünde belirtilenler göz ardı edilir. Aspose.Words belge uyumluluk moduna bağlı olarak kendi mesafe parametreleri kümesini kullanır.
* Aspose.Words 'deki tireleme algoritması şunları destekler [bileşik tireleme](https://github.com/hunspell/hyphen/blob/master/README.compound). Ancak Aspose.Words, karışık alfabetik ve alfabetik olmayan karakterler içeren karakter dizilerini yalnızca alfabetik parçalara (kelimeler) böler ve bunları ayrı ayrı tireler.
  Bileşik sözcüklerin tirelenmesinin Microsoft Word mantığının belge uyumluluk moduna bağlı olduğunu unutmayın.
* Aspose.Words 'deki tireleme algoritması [standart olmayan tireleme](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Standart olmayan kalıplar göz ardı edilir.

## Tireleme Sözlükleri Yükleniyor

Tireleme özelliğini kullanmak için önce bir tireleme sözlüğü kaydedin.Aşağıdaki kod örneği, belirtilen diller için tireleme sözlüklerinin bir dosyadan nasıl yükleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.h" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını şu adresten indirebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

Aşağıdaki kod örneği, belirtilen dil için tireleme sözlüklerinin bir akıştan nasıl yükleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.h" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını şu adresten indirebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

Tireleme sözlüklerinin ön kaydına alternatif olarak, yalnızca gerekli tireleme sözlüklerini "istek üzerine" kaydetmek mümkündür. Bunu başarmak için [IHyphenationCallback](https://reference.aspose.com/words/cpp/aspose.words/ihyphenationcallback/) arayüzünü uygulayın ve statik geri aramayı [Callback](https://reference.aspose.com/words/cpp/aspose.words/hyphenation/get_callback/) kullanın.

Aşağıdaki kod örneği, **IHyphenationCallback** arabiriminin nasıl uygulanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-CustomHyphenation.h" >}}

## Tirelemenin Düzen Üzerindeki Etkisi

Metni satırlara ayırırken, Aspose.Words her kelimenin geçerli satıra tamamen uyup uymadığını kontrol eder. Başka bir sözcük satırın sonuna sığmayacak kadar uzunsa, varsayılan olarak Aspose.Words onu tirelemek yerine bir sonraki satırın başına taşır.

Bununla birlikte, tireleme özelliği, yaslanmış metindeki boşlukları ortadan kaldırmak veya dar sütunlarda eşit bir satır uzunluğunu korumak için kelimelere tire eklemek için Aspose.Words 'da kullanılabilir. Bu açıkça satır sayısını ve dolayısıyla sayfa sayısını etkileyebilir. Başka bir deyişle, tireleme işlevini kullanmak belge düzenini etkiler.

## Tireleme ve Yaslama (H & J)

Microsoft Word, metin yaslanmışsa ve tireleme etkinleştirilmişse bir kesme noktası seçmek için karmaşık bir mantığa sahiptir. Kısacası, Microsoft Word satır tirelemesini önlemek için boşlukları küçültmeyi veya germeyi tercih edebilir. Büyük olasılıkla bu mantık dayanmaktadır [Knuth'un makalesi](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words, Microsoft Word ile aynı sonucu veren ve çıktı belgesinde aynı satır sonunu sağlayan kendi H & J algoritmasını uygular.

## Ayrıca bakınız

* [Tire - tireleme kitaplığı](https://github.com/hunspell/hyphen/blob/master/README)
* [Standart olmayan tireleme](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Open Office'te otomatik standart dışı tireleme](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)

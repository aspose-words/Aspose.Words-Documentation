---
title: Python'te Tireleme ile Çalışma
second_title: Python via .NET için Aspose.Words
articleTitle: Tireleme ile Çalışmak
linktitle: Tireleme ile Çalışmak
description: "Python kullanarak metnin daha derli toplu düzenlenmesi için tirelemeyi kullanın. Tireleme sözlükleriyle çalışmak için gelişmiş algoritmalar sağlar, OpenOffice sözlüklerini kullanır."
type: docs
weight: 220
url: /tr/python-net/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

Bazen bir belgedeki metnin daha kompakt bir şekilde düzenlenmesi için tirelemenin kullanılması gerekebilir. Aynı zamanda, kelime tirelemenin özelliklerinin her dil için farklı olabileceğini anlamak önemlidir.

Günümüzde özellikle İngilizce metinlerde tireleme eskisi kadar sık kullanılmamaktadır. Bununla birlikte, bu özelliğin kullanımı kullanıcı belgeleri üzerinde ciddi bir etkiye sahip olabilir; tireleme düzeni ve bunun sonucunda çıktı dosyalarının (örneğin PDF formatındaki) görünümünü etkiler.

Kelimelerin doğru şekilde bölünmesi için dile özgü tireleme sözlükleri kullanılır. Aspose.Words, bu tür sözlüklerle çalışmak için gelişmiş algoritmalar kullanır ve Microsoft Word'dekiyle aynı tirelemeyi elde etmenize olanak tanır.

## Tireleme Sözlükleri

Farklı diller sözcük tirelemesi için farklı normlar ve kurallar kullandığından, doğru tireleme için en uygun çözüm özel sözlükler kullanmaktır. Aspose.Words, OpenOffice sözlüklerini kullanır.

Yazım denetimi için OpenOffice, TeX'in tireleme algoritmasının bir genellemesi olan [Hunspell kütüphanesi](https://hunspell.github.io/)'i kullanır. Bu algoritma, rakip standart ve özel tireleme modellerini kullanarak otomatik standart dışı tireleme yapılmasına olanak tanır. Hunspell tireleme için [Tire](https://github.com/hunspell/hyphen)'i kullanır.

{{% alert color="primary" %}}

Tireleme sözlükleri [LibreOffice sözlükleri GitHub](https://github.com/LibreOffice/dictionaries)'ten alınabilir. Örneğin [tr-ABD tireleme sözlüğü](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word, tirelemeyi gerçekleştirmek için OpenOffice sözlükleri dışındaki sözlükleri kullandığından, OpenOffice sözlükleri tarafından tanımlanan bazı kelimelerin tirelenmesi Microsoft Word tirelemesinden farklı olabilir. Bu nedenle bazen müşterilerimize belirli kelimelerdeki tirelemeyi düzeltmek için gerekli kalıpları sözlüklerine eklemelerini tavsiye etmemiz gerekir.

{{% /alert %}}

## Tireleme Algoritması

Aspose.Words, [TeX tireleme algoritması](https://github.com/hunspell/hyphen/blob/master/README.hyphen)'yi uygular ve OpenOffice tireleme sözlüklerini yeniden kullanabilir.

Aspose.Words algoritmalarının aşağıdaki özellikleri dikkate alınmalıdır:

* Tireleme sözlüğünde belirtilen tireleme mesafesi parametreleri (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) dikkate alınmaz. Aspose.Words, belge uyumluluk moduna bağlı olarak kendi mesafe parametreleri setini kullanır.
* Aspose.Words'teki tireleme algoritması [bileşik tireleme](https://github.com/hunspell/hyphen/blob/master/README.compound)'yi destekler. Ancak Aspose.Words, karışık alfabetik ve alfabetik olmayan karakterleri içeren karakter dizilerini yalnızca alfabetik parçalara (kelimelere) böler ve bunları ayrı ayrı tireler.
  Bileşik sözcüklerin tirelenmesine ilişkin Microsoft Word mantığının belge uyumluluk moduna bağlı olduğunu unutmayın.
* Aspose.Words'teki tireleme algoritması [standart olmayan tireleme](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)'yi uygulamaz. Standart olmayan desenler dikkate alınmaz.

## Tireleme Sözlükleri Yükleniyor

Tireleme özelliğini kullanmak için öncelikle bir tireleme sözlüğü kaydedin. Aşağıdaki kod örneği, belirtilen diller için tireleme sözlüklerinin bir dosyadan nasıl yükleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-HyphenateWordsOfLanguages.py" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, belirtilen dil için tireleme sözlüklerinin bir akıştan nasıl yükleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-LoadHyphenationDictionaryForLanguage.py" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Tirelemenin Mizanpaj Üzerindeki Etkisi

Aspose.Words, metni satırlara bölerken her kelimenin geçerli satıra tamamen uyup uymadığını kontrol eder. Başka bir sözcük satırın sonuna sığmayacak kadar uzunsa, varsayılan olarak Aspose.Words onu tirelemek yerine bir sonraki satırın başına taşır.

Ancak, Aspose.Words'te tireleme özelliği, iki yana yaslanmış metindeki boşlukları ortadan kaldırmak veya dar sütunlarda eşit satır uzunluğunu korumak için sözcüklere tire eklemek için kullanılabilir. Bu açıkça satır sayısını ve dolayısıyla sayfa sayısını etkileyebilir. Başka bir deyişle, tireleme işlevinin kullanılması belge düzenini etkiler.

## Tireleme ve Gerekçe (H&amp;J)

Microsoft Word, metnin iki yana yaslı olması ve tirelemenin etkin olması durumunda bir kesme noktası seçmek için karmaşık bir mantığa sahiptir. Kısacası Microsoft Word, satır tirelemesinden kaçınmak için boşlukları daraltmayı veya genişletmeyi tercih edebilir. Büyük olasılıkla bu mantık [Knuth'un makalesi](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf)'ye dayanmaktadır.

Aspose.Words, Microsoft Word ile aynı sonucu veren ve çıktı belgesinde aynı satır kesmeyi sağlayan kendi H&amp;J algoritmasını uygular.

## Ayrıca bakınız

* [Tire – tireleme kitaplığı](https://github.com/hunspell/hyphen/blob/master/README)
* [Standart olmayan tireleme](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Open Office'te otomatik standart dışı tireleme](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)

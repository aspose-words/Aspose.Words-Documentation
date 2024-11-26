---
title: Word Belgelerinin Seçenekleri ve Görünümü
second_title: Aspose.Words için C++
articleTitle: Word Belgelerinin Seçenekleri ve Görünümüyle Çalışma
linktitle: Word Belgelerinin Seçenekleri ve Görünümüyle Çalışma
description: "Çeşitli Microsoft Word sürümleri arasındaki farkı dikkate alarak Word belgelerinin görünümünü kontrol edin."
type: docs
weight: 40
url: /tr/cpp/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Bazen bir belgenin görünümünü değiştirmeniz gerekebilir, örneğin dil tercihlerini veya sayfa başına satır sayısını ayarlayın.Aspose.Words, belgenin nasıl görüntüleneceğini ve bazı ek seçenekleri kontrol etme olanağı sağlar. Bu makalede, bu tür olasılıklar açıklanmaktadır.

## Belge Görüntüleme Seçeneklerini Ayarlama

[ViewOptions](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/) sınıfını kullanarak bir belgenin Microsoft Word içinde nasıl görüntüleneceğini kontrol edebilirsiniz. Örneğin, [ZoomPercent](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_zoompercent/) özelliğini kullanarak bir belge yakınlaştırma değeri veya [ViewType](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_viewtype/) özelliğini kullanarak görünüm modunu ayarlayabilirsiniz.

Aşağıdaki kod örneği, Microsoft Word içinde açıldığında bir belgenin % 50 oranında görüntülenmesini nasıl sağlayacağınızı gösterir.:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetViewOption-SetViewOption.cpp" >}}

{{% alert color="primary" %}}

Bu örnek için şablon dosyasını şu adresten indirebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 bir belgeye herhangi bir yakınlaştırma faktörü yazmıyor ve artık belgeye yazılan değerden varsayılan yakınlaştırmayı ayarlamıyor, bunun yerine son açık belgenin yakınlaştırma faktörünü kullanıyor gibi görünüyor.

{{% /alert %}}

## Sayfa Görüntüleme Seçeneklerini Ayarlama

Satır başına karakter sayısını ayarlamak istiyorsanız, [CharactersPerLine](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_charactersperline/) özelliğini kullanın. Bir Word belgesinin sayfa başına satır sayısını da ayarlayabilirsiniz - belge kılavuzundaki sayfa başına satır sayısını almak veya ayarlamak için [LinesPerPage](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_linesperpage/) özelliğini kullanın.

{{% alert color="primary" %}}

Microsoft Word 'da, aynı parametreleri yalnızca Asya dili desteği yüklendiğinde "Sayfa Yapısı" iletişim kutusundaki "Belge Izgarası" sekmesini kullanarak ayarlayabilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, Microsoft Word belgesi için satır başına karakter sayısını ve sayfa başına satır sayısını nasıl ayarlayacağınızı gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cpp" >}}

## Dil Tercihlerini Ayarlama

Bir belgenin Microsoft Word içinde görüntülenmesi, bu belge için hangi dillerin varsayılan olarak ayarlandığına bağlıdır. Varsayılan olarak hiçbir dil ayarlanmamışsa, Microsoft Word, örneğin Microsoft Word 2019'daki "Dosya → Seçenekler → Dil" altında bulunabilen "Office Dil Tercihlerini Ayarla" iletişim kutusundan bilgi alır.

Aspose.Words ile [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/languagepreferences/) sınıfını kullanarak dil tercihlerini de ayarlayabilirsiniz. Ayrıca, belgenizin doğru görüntülenmesi için belge yükleme işleminin eşleşmesi gereken Microsoft Word sürümünü ayarlamanız gerektiğini unutmayın – bu, [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) özelliği kullanılarak yapılabilir.

{{% alert color="primary" %}}

Aspose.Words oluşturulan belgeniz beklendiği gibi görünmüyorsa, **LanguagePreferences** ve **MswVersion** değerlerini kontrol edin ve gerekirse bunları Microsoft Word sürümünüzün ayarlarıyla eşleşecek şekilde ayarlayın.

{{% /alert %}}

Aşağıdaki kod örneği, düzenleme dillerine Japonca nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

Aşağıdaki kod örneği, Rusça'nın varsayılan düzenleme dili olarak nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cpp" >}}

## Belgeyi Belirli Bir Word Sürümü için Optimize Etme

[OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/) yöntemi, belge içeriğinin optimize edilmesine ve Microsoft Word'ün belirli bir sürümü için varsayılan Aspose.Words davranışına izin verir. Belge yüklenirken Microsoft Word 'ün "Uyumluluk modu" şeridini görüntülemesini önlemek için bu yöntemi kullanabilirsiniz. `Compliance` özelliğini Iso29500_2008_Transitional veya üstü olarak ayarlamanız gerekebileceğini unutmayın.

Aşağıdaki kod örneği, Microsoft Word 2016 için belge içeriğinin nasıl optimize edileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cpp" >}}

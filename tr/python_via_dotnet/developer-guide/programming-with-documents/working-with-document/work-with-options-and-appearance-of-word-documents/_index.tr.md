---
title: Seçenekler ve Görünüm Word Belgesi
second_title: Python için Aspose.Words
articleTitle: Word Belgelerinin Seçenekleri ve Görünümüyle Çalışma
linktitle: Word Belgelerinin Seçenekleri ve Görünümüyle Çalışma
description: "Python kullanan çeşitli Microsoft Word sürümleri arasındaki farkı dikkate alarak Word belgelerinin görünümünü kontrol edin."
type: docs
weight: 40
url: /tr/python-net/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Bazen bir belgenin görünümünü değiştirmeniz, örneğin dil tercihlerini veya sayfa başına satır sayısını ayarlamanız gerekebilir. Aspose.Words, bazı ek seçeneklerin yanı sıra belgenin nasıl görüntüleneceğini kontrol etme olanağı da sağlar. Bu makalede bu tür olasılıklar açıklanmaktadır.

## Belge Görüntüleme Seçeneklerini Ayarlama

[ViewOptions](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/) sınıfını kullanarak bir belgenin Microsoft Word'te nasıl görüntüleneceğini kontrol edebilirsiniz. Örneğin, [zoom_percent](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/zoom_percent/) özelliğini kullanarak belge yakınlaştırma değerini veya [view_type](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/view_type/) özelliğini kullanarak görünüm modunu ayarlayabilirsiniz.

Aşağıdaki kod örneği, bir belgenin Microsoft Word'te açıldığında %50 oranında görüntülenmesini sağlamanın nasıl sağlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetViewOption.py" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)'ten indirebilirsiniz.

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013, bir belgeye herhangi bir yakınlaştırma faktörü yazmıyor ve artık varsayılan yakınlaştırmayı belgeye yazılan değerden ayarlamıyor; bunun yerine, son açık belgenin yakınlaştırma faktörünü kullanıyor gibi görünüyor.

{{% /alert %}}

## Sayfa Görüntüleme Seçeneklerini Ayarlayın

Satır başına karakter sayısını ayarlamak istiyorsanız [characters_per_line](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/characters_per_line/) özelliğini kullanın. Ayrıca bir Word belgesi için sayfa başına satır sayısını da ayarlayabilirsiniz; belge kılavuzunda sayfa başına satır sayısını almak veya ayarlamak için [lines_per_page](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/lines_per_page/) özelliğini kullanın.

{{% alert color="primary" %}}

Microsoft Word'te, yalnızca Asya dili desteği yüklü olduğunda "Sayfa Yapısı" iletişim kutusundaki "Belge Izgarası" sekmesini kullanarak aynı parametreleri ayarlayabilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, bir Microsoft Word belgesi için satır başına karakter sayısının ve sayfa başına satır sayısının nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-DocumentPageSetup.py" >}}

## Dil Tercihlerini Ayarlayın

Bir belgenin Microsoft Word'te görüntülenmesi, bu belge için hangi dillerin varsayılan olarak ayarlandığına bağlıdır. Varsayılanlarda hiçbir dil ayarlanmamışsa Microsoft Word, bilgileri, örneğin Microsoft Word 2019'da "Dosya → Seçenekler → Dil" altında bulunabilen "Ofis Dil Tercihlerini Ayarla" iletişim kutusundan alır.

Aspose.Words ile [LanguagePreferences](https://reference.aspose.com/words/python-net/aspose.words.loading/languagepreferences/) sınıfını kullanarak dil tercihlerini de ayarlayabilirsiniz. Ayrıca belgenizin doğru görüntülenmesi için, belge yükleme işleminin eşleşmesi gereken Microsoft Word sürümünü ayarlamanız gerektiğini unutmayın; bu, [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) özelliği kullanılarak yapılabilir.

{{% alert color="primary" %}}

Aspose.Words tarafından oluşturulan belgeniz beklendiği gibi görünmüyorsa [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) ve [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) değerlerini kontrol edin ve gerekirse bunları Microsoft Word sürümünüzün ayarlarıyla eşleşecek şekilde ayarlayın.

{{% /alert %}}

Aşağıdaki kod örneği, Japonca'nın düzenleme dillerine nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

Aşağıdaki kod örneği, Rusça'nın varsayılan düzenleme dili olarak nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetRussianAsDefaultEditingLanguage.py" >}}

## Bir Belgeyi Belirli Bir Word Sürümü için Optimize Etme

[optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) yöntemi, belirli bir Microsoft Word sürümü için belge içeriğinin yanı sıra varsayılan Aspose.Words davranışının da optimize edilmesine olanak tanır. Microsoft Word'in belge yüklenirken "Uyumluluk modu" şeridini görüntülemesini önlemek için bu yöntemi kullanabilirsiniz. [compliance](https://reference.aspose.com/words/python-net/aspose.words/document/compliance/) özelliğini [ISO29500_2008_TRANSITIONAL](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlcompliance/#iso29500_2008_transitional) veya daha yüksek bir değere ayarlamanız gerekebileceğini de unutmayın.

Aşağıdaki kod örneği, Microsoft Word 2016 için belge içeriğinin nasıl optimize edileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-OptimizeForMsWord.py" >}}

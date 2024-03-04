---
title: Seçenekler ve Görünüm Word Belgesi
second_title: .NET için Aspose.Words
articleTitle: Word Belgelerinin Seçenekleri ve Görünümüyle Çalışma
linktitle: Word Belgelerinin Seçenekleri ve Görünümüyle Çalışma
description: "C# kullanan çeşitli Microsoft Word sürümleri arasındaki farkı dikkate alarak Word belgelerinin görünümünü kontrol edin."
type: docs
weight: 40
url: /tr/net/work-with-word-document-options-and-appearance/
---

Bazen bir belgenin görünümünü değiştirmeniz, örneğin dil tercihlerini veya sayfa başına satır sayısını ayarlamanız gerekebilir. Aspose.Words, bazı ek seçeneklerin yanı sıra belgenin nasıl görüntüleneceğini kontrol etme olanağı da sağlar. Bu makalede bu tür olasılıklar açıklanmaktadır.

## Belge Görüntüleme Seçeneklerini Ayarlama

[ViewOptions](https://reference.aspose.com/words/tr/net/aspose.words.settings/viewoptions/) sınıfını kullanarak bir belgenin Microsoft Word'te nasıl görüntüleneceğini kontrol edebilirsiniz. Örneğin, [ZoomPercent](https://reference.aspose.com/words/tr/net/aspose.words.settings/viewoptions/zoompercent/) özelliğini kullanarak belge yakınlaştırma değerini veya [ViewType](https://reference.aspose.com/words/tr/net/aspose.words.settings/viewoptions/viewtype/) özelliğini kullanarak görünüm modunu ayarlayabilirsiniz.

Aşağıdaki kod örneği, bir belgenin Microsoft Word'te açıldığında %50 oranında görüntülenmesini sağlamanın nasıl sağlanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)'ten indirebilirsiniz.

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013, bir belgeye herhangi bir yakınlaştırma faktörü yazmıyor ve artık varsayılan yakınlaştırmayı belgeye yazılan değerden ayarlamıyor; bunun yerine, son açık belgenin yakınlaştırma faktörünü kullanıyor gibi görünüyor.

{{% /alert %}}

## Sayfa Görüntüleme Seçeneklerini Ayarlayın

Satır başına karakter sayısını ayarlamak istiyorsanız [CharactersPerLine](https://reference.aspose.com/words/tr/net/aspose.words/pagesetup/charactersperline/) özelliğini kullanın. Ayrıca bir Word belgesi için sayfa başına satır sayısını da ayarlayabilirsiniz; belge kılavuzunda sayfa başına satır sayısını almak veya ayarlamak için [LinesPerPage](https://reference.aspose.com/words/tr/net/aspose.words/pagesetup/linesperpage/) özelliğini kullanın.

{{% alert color="primary" %}}

Microsoft Word'te, yalnızca Asya dili desteği yüklü olduğunda "Sayfa Yapısı" iletişim kutusundaki "Belge Izgarası" sekmesini kullanarak aynı parametreleri ayarlayabilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, bir Microsoft Word belgesi için satır başına karakter sayısının ve sayfa başına satır sayısının nasıl ayarlanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## Dil Tercihlerini Ayarlayın

Bir belgenin Microsoft Word'te görüntülenmesi, bu belge için hangi dillerin varsayılan olarak ayarlandığına bağlıdır. Varsayılanlarda hiçbir dil ayarlanmamışsa Microsoft Word, bilgileri, örneğin Microsoft Word 2019'da "Dosya → Seçenekler → Dil" altında bulunabilen "Ofis Dil Tercihlerini Ayarla" iletişim kutusundan alır.

Aspose.Words ile [LanguagePreferences](https://reference.aspose.com/words/tr/net/aspose.words.loading/languagepreferences/) sınıfını kullanarak da dil tercihlerini ayarlayabilirsiniz. Ayrıca belgenizin doğru görüntülenmesi için, belge yükleme işleminin eşleşmesi gereken Microsoft Word sürümünü ayarlamanız gerektiğini unutmayın; bu, [MswVersion](https://reference.aspose.com/words/tr/net/aspose.words.loading/loadoptions/mswversion/) özelliği kullanılarak yapılabilir.

{{% alert color="primary" %}}

Aspose.Words tarafından oluşturulan belgeniz beklendiği gibi görünmüyorsa **LanguagePreferences** ve **MswVersion** değerlerini kontrol edin ve gerekirse bunları Microsoft Word sürümünüzün ayarlarıyla eşleşecek şekilde ayarlayın.

{{% /alert %}}

Aşağıdaki kod örneği, Japonca'nın düzenleme dillerine nasıl ekleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

Aşağıdaki kod örneği, Rusça'nın varsayılan düzenleme dili olarak nasıl ayarlanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## Bir Belgeyi Belirli Bir Word Sürümü için Optimize Etme

[OptimizeFor](https://reference.aspose.com/words/tr/net/aspose.words.settings/compatibilityoptions/optimizefor/) yöntemi, belirli bir Microsoft Word sürümü için belge içeriğinin yanı sıra varsayılan Aspose.Words davranışının da optimize edilmesine olanak tanır. Microsoft Word'in belge yüklenirken "Uyumluluk modu" şeridini görüntülemesini önlemek için bu yöntemi kullanabilirsiniz. `Compliance` özelliğini Iso29500_2008_Transitional veya daha yüksek bir değere ayarlamanız gerekebileceğini de unutmayın.

Aşağıdaki kod örneği, Microsoft Word 2016 için belge içeriğinin nasıl optimize edileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}

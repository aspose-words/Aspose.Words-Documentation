---
title: Word Dokümanlarının Seçenekleri ve Görünümü
second_title: Aspose.Words için Java
articleTitle: Word Dokümanlarında Seçeneklerle Çalışın ve Görünüm
linktitle: Word Dokümanlarında Seçeneklerle Çalışın ve Görünüm
description: "Word belgelerinin görünümünü kontrol etmek için farklı Microsoft Word sürümleri arasındaki farkı dikkate alarak Java'i kullanın."
type: docs
weight: 40
url: /tr/java/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Bazen bir belgenin görünümünü değiştirmek isteyebilirsiniz, örneğin, dil tercihlerini ayarlayabilir veya sayfadaki satır sayısını belirtebilirsiniz.Aspose.Words Belgeyi nasıl görüntüleyeceğini kontrol etme yeteneği ve bazı ek seçenekleri sağlar. Bu makale bu olanakları anlatır.

## Belge Görüntüleme Seçeneklerini Ayarla

Bir belgenin nasıl görüneceğini Microsoft Word'de kontrol edebilirsiniz [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) sınıfını kullanarak. Örneğin, bir belge yakınlaştırma değeri [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) özelliğini ayarlayarak veya görünüm modu [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) özelliğini ayarlayarak belirtebilirsiniz.

Aşağıdaki kod örneği bir belgeyi Microsoft Word'da açıldığında %50 olarak nasıl gösterileceğini gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

Bu örneği içeren şablonu [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc)'tan indirip kaydettirebilirsiniz.

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 bir belgeye herhangi bir yakınlaştırma faktörü yazmaz ve artık belgeye yazılan değerten varsayılan yakınlaştırmayı ayarlamaz, bunun yerine son açılan belgenin yakınlaştırma faktörünü kullanır gibi görünüyor.

{{% /alert %}}

## Sayfa Görüntüleme Seçeneklerini Ayarla

Bir satırda karakter sayısı belirlemek istiyorsanız [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) özelliğini kullanın. Ayrıca, bir Word belgesinde satırlar başına sayfa sayısını ayarlayabilirsiniz. Belge kılavuzunda sayfa başına satır sayısını almak veya ayarlamak için [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) özelliğini kullanın.

{{% alert color="primary" %}}

Microsoft Word 'de, "Belge Şablonu" iletişim kutusundaki "Sayfa Kurulumu" sekmesinde Asya dili desteği yüklü olduğunda aynı parametreleri ayarlayabilirsiniz.

{{% /alert %}}

Örnek kod, bir Microsoft Word belgesi için bir satırdaki karakter sayısı ve bir sayfadaki satır sayısını nasıl ayarlayacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Dil Tercihlerini Ayarla

Bir belgeyi Microsoft Word olarak görüntülemek, bu belgenin varsayılan olarak hangi dillerin ayarlandığına bağlıdır. Varsayılmalar içinde hiçbir dil yoksa, Microsoft Word 'Set Office Language Preferences' iletişim kutusundan bilgi alır ve örneğin, Microsoft Word 2019'da 'File → Options → Language' yoluyla bulunabilir.

Aspose.Words ile dil tercihlerini ayarlamak için [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) sınıfını kullanabilirsiniz. Doğru şekilde belgenizin görüntülenmesi için, bunu yapmanın tek yolu da belge yükleme sürecinin eşleşmesi gereken Microsoft Word sürümünü belirlemek – bu, [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) özelliğini kullanarak yapılır.

{{% alert color="primary" %}}

Eğer otomatik olarak oluşturulan Aspose.Words belgeniz beklediğiniz gibi görünmüyorsa, **LanguagePreferences** ve **MswVersion** değerlerini kontrol edin ve gerekliyse onları eşleşen ayarları için Microsoft Word sürümünüze uyacak şekilde ayarlayın.

{{% /alert %}}

Aşağıdaki kod örneği, düzenleme dillerine Japonca eklemeyi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

Aşağıdaki kod örneğinde varsayılan düzenleme dili olarak Rusça nasıl ayarlandığını gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Belgeyi Belirli Bir Kelime Sürümü İçin Optimize Et

0" yerine "a" ve "2" yerine "b" yazın: "The [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) method allows optimizing document content, as well as default Aspose.Words behaviour for a particular version of Microsoft Word. You can use this method to prevent Microsoft Word from displaying the "Compatibility mode" ribbon upon document loading. Note that you may also need to set the `Compliance` property to ISO 29500_2008_Transitional or higher.

Aşağıdaki kod örneği, Microsoft Word 2016 için belge içeriğini nasıl optimize ettiğinizi gösterir:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}

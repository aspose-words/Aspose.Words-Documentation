---
title: C++ içindeki Stillerle Çalışma
second_title: Aspose.Words için C++
articleTitle: Stillerle Çalışma
linktitle: Stillerle Çalışma
description: "Geliştirilmiş Microsoft Word biçimlendirme özellikleri, C++ kullanarak stiller ve temalarla çalışma."
type: docs
weight: 110
url: /tr/cpp/working-with-styles-and-themes/
---

[StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) sınıfı, yerleşik ayarları yönetmek ve stillere kullanıcı tanımlı ayarları uygulamak için kullanılır.

## Stillere Dayalı İçerik Nasıl Çıkarılır

Basit bir düzeyde, içeriği bir Word belgesinden stillere göre almak, paragrafları ve belirli bir stille biçimlendirilmiş metin akışlarını tanımlamak, listelemek ve saymak için yararlı olabilir. Örneğin, belgedeki örnekler, başlıklar, referanslar, anahtar kelimeler, şekil adları ve vaka çalışmaları gibi belirli içerik türlerini tanımlamanız gerekebilir.

Bunu birkaç adım daha ileri götürmek için, bu, belgeyi HTML gibi başka bir çıktı için yeniden amaçlamak için kullandığı stillerle tanımlanan belgenin yapısından yararlanmak için de kullanılabilir. Bu aslında Aspose belgelerinin nasıl oluşturulduğudur ve Aspose.Words 'ı teste tabi tutar. Aspose.Words kullanılarak oluşturulan bir araç, kaynak Word belgelerini alır ve bunları belirli başlık düzeylerindeki konulara böler. Solda görebileceğiniz gezinme ağacını oluşturmak için kullanılan Aspose.Words kullanılarak bir XML dosyası oluşturulur. Ve sonra Aspose.Words her konuyu HTML 'e dönüştürür.

Bir Word belgesinde belirli stillerle biçimlendirilmiş metni alma çözümü genellikle Aspose.Words kullanılarak ekonomik ve basittir.

### Çözüm

Aspose.Words 'ın stillere dayalı içerik almayı ne kadar kolay işlediğini göstermek için bir örneğe bakalım. Bu örnekte, örnek bir Word belgesinden belirli bir paragraf stili ve karakter stili ile biçimlendirilmiş metni alacağız. Yüksek düzeyde, bu şunları içerecektir:
- `Document` sınıfını kullanarak bir Word belgesi açma.
- Tüm paragrafların ve hepsinin koleksiyonlarını almak belgede çalışır.
- Yalnızca gerekli paragrafları ve çalıştırmaları seçme. Özellikle, bu örnek Word belgesinden ‘Başlık 1’ paragraf stili ve ‘Yoğun Vurgu’ karakter stili ile biçimlendirilmiş metni alacağız.

![working-with-styles-aspose-words-cpp-1](working-with-styles-1.png)


Bu örnek belgede, ‘Başlık 1’ paragraf stili ile biçimlendirilmiş metin ‘Sekme Ekle’, ‘Hızlı Stiller’ ve ‘Tema' ve 'Yoğun vurgu' karakter stili ile biçimlendirilmiş metin, ‘galeriler' gibi mavi, italik, kalın metnin birkaç örneğidir' ve 'genel bakış'.

### Kod

Aspose.Words belge nesnesi modelinde stil tabanlı bir sorgunun uygulanması oldukça basittir, çünkü zaten yerinde olan araçları kullanır. Bu çözüm için iki sınıf yöntemi uygulanır: # **ParagraphsByStyleName** - Bu yöntem, belgede belirli bir stil adına sahip paragraflardan oluşan bir dizi alır.# **RunsByStyleName** - Bu yöntem, belgede belirli bir stil adına sahip olan çalıştırmalardan oluşan bir dizi alır. Bu yöntemlerin her ikisi de çok benzerdir, tek fark düğüm türleri ve paragraf ve çalıştırma düğümleri içindeki stil bilgilerinin gösterimidir. İşte ParagraphsByStyleName 'nin bir uygulaması. Aşağıda, belirtilen stille biçimlendirilmiş tüm paragrafları bulabilirsiniz.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cpp" >}}

{{% alert color="primary" %}}

Bu uygulama aynı zamanda, bu durumda tüm paragraflarda belirtilen türdeki tüm düğümlerin bir koleksiyonunu döndüren `Document` sınıfının `Document.GetChildNodes` yöntemini de kullanır.

**Document.GetChildNodes** yönteminin ikinci parametresinin true olarak ayarlandığını unutmayın. Bu, **Document.GetChildNodes** yöntemini yalnızca hemen alt öğeleri seçmek yerine tüm alt düğümler arasından yinelemeli olarak seçim yapmaya zorlar.

{{% /alert %}}

Paragraflar koleksiyonunun hemen bir ek yük oluşturmadığını da belirtmekte fayda var çünkü paragraflar yalnızca bu koleksiyondaki öğelere eriştiğinizde bu koleksiyona yüklenir. Ardından, yapmanız gereken tek şey, her operatör için standardı kullanarak koleksiyondan geçmek ve paragraphsWithStyle dizisine belirtilen stile sahip paragraflar eklemektir. `Paragraph` Stil adı Stilde bulunabilir. `Paragraph.ParagraphFormat` nesnesinin Name özelliği. RunsByStyleName'nin uygulanması hemen hemen aynıdır, ancak açıkça çalıştırma düğümlerini almak için `NodeType.Run` kullanıyoruz. `Run` nesnesinin `Font.Style` özelliği, **Run** düğümlerindeki stil bilgilerine erişmek için kullanılır. Below code örneği, belirtilen stille biçimlendirilmiş tüm çalıştırmaları bulur.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cpp" >}}


Her iki sorgu da uygulandığında, tek yapmanız gereken bir belge nesnesini iletmek ve almak istediğiniz içeriğin stil adlarını belirtmektir: Aşağıda örnek sorguları çalıştır ve sonuçları görüntüle. Bu örneğin şablon dosyasını buradan indirebilirsiniz.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cpp" >}}

#### Sonuç

Her şey bittiğinde, numuneyi çalıştırmak aşağıdaki çıktıyı gösterecektir:

![working-with-styles-aspose-words-cpp-2](working-with-styles-2.png)


Gördüğünüz gibi bu, toplanan paragrafların sayısını ve metnini gösteren ve örnek Word belgesinde çalışan çok basit bir örnektir.

## İçindekiler Alanı Nasıl Eklenir ve Çalışılır

Genellikle bir içindekiler tablosu (TOC) içeren belgelerle çalışırsınız. Aspose.Words kullanarak kendi içindekiler tablonuzu ekleyebilir veya yalnızca birkaç satır kod kullanarak belgedeki mevcut içindekiler tablosunu tamamen yeniden oluşturabilirsiniz. Bu makalede, içindekiler alanıyla nasıl çalışılacağı özetlenmekte ve:

- Yeni bir `TOC` nasıl eklenir
- Belgedeki yeni veya mevcut TOCs öğesini güncelleyin.
- TOC ile biçimlendirmeyi ve genel yapıyı denetlemek için anahtarları belirtin.
- İçindekiler tablosunun stilleri ve görünümü nasıl değiştirilir.
- Belgedeki tüm girdilerle birlikte `TOC` alanının tamamı nasıl kaldırılır.

### TC Alanları Ekle

Genellikle `TOC` için belirli bir metin satırı belirtilir ve `TC` alanıyla işaretlenir. Bunu MS Word'de yapmanın en kolay yolu metni vurgulamak ve *ALT+SHIFT+O* tuşuna basmaktır. Bu, seçilen metni kullanarak otomatik olarak bir `TC` alanı oluşturur. Aynı teknik kod aracılığıyla da gerçekleştirilebilir. Aşağıdaki kod, girişle eşleşen metni bulacak ve metinle aynı konuma bir `TC` alanı ekleyecektir. Kod, makalede kullanılan aynı tekniğe dayanmaktadır. Aşağıdaki örnek, bir belgedeki metinde `TC` alanının nasıl bulunacağını ve ekleneceğini gösterir.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-InsertTCFieldHandler.cpp" >}}

### İçindekiler Tablosunu Değiştirme

#### Stillerin Biçimlendirmesini Değiştirme

`TOC` içindeki girdilerin biçimlendirilmesi, işaretli girdilerin orijinal stillerini kullanmaz, bunun yerine her seviye eşdeğer bir `TOC` stili kullanılarak biçimlendirilir. Örneğin, `TOC` içindeki ilk düzey **TOC1** stiliyle, ikinci düzey **TOC2** stiliyle vb. Biçimlendirilir. Bu, `TOC` 'in görünümünü değiştirmek için bu stillerin değiştirilmesi gerektiği anlamına gelir. Aspose.Words 'da bu stiller yerel ayardan bağımsız `StyleIdentifier.TOC1` ile `StyleIdentifier.TOC9` arasında temsil edilir ve bu tanımlayıcılar kullanılarak `Document.Styles` koleksiyonundan alınabilir. Belgenin uygun stili alındıktan sonra, bu stilin biçimlendirmesi değiştirilebilir. Bu stillerdeki herhangi bir değişiklik, belgedeki TOCs öğesine otomatik olarak yansıtılacaktır. Below code örneği, birinci düzey `TOC` stilinde kullanılan bir biçimlendirme özelliğini değiştirir.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cpp" >}}

`TOC` eklenecek şekilde işaretlenmiş bir paragrafın (stilde değil paragrafın kendisinde tanımlanmış) herhangi bir doğrudan biçimlendirmesinin TOC'teki girişe kopyalanacağını da not etmekte fayda vardır. Örneğin, `TOC` öğesinin içeriğini işaretlemek için 1 stili başlığı kullanılıyorsa ve bu stil Kalın biçimlendirmeye sahipken paragrafa doğrudan italik biçimlendirme de uygulanmışsa. Ortaya çıkan `TOC` girdisi, stil biçimlendirmesinin bir parçası olduğu için kalın olmayacak, ancak paragrafta doğrudan biçimlendirildiği için italik olacaktır. Her giriş ile sayfa numarası arasında kullanılan ayırıcıların biçimlendirmesini de kontrol edebilirsiniz. Varsayılan olarak, bu, bir sekme karakteri ve sağ kenar boşluğuna yakın dizilmiş bir sağ sekme durağı kullanılarak sayfa numaralandırmasına yayılmış noktalı bir çizgidir.

Değiştirmek istediğiniz belirli `TOC` düzeyi için alınan `Style` sınıfını kullanarak bunların belgede nasıl görüneceğini de değiştirebilirsiniz. Bunun nasıl göründüğünü değiştirmek için öncelikle stilin paragraf biçimlendirmesini almak için `Style.ParagraphFormat` çağrılmalıdır. Bundan, sekme durakları `ParagraphFormat.TabStops` çağrılarak alınabilir ve uygun sekme durağı değiştirilebilir. Aynı tekniği kullanarak sekmenin kendisi tamamen taşınabilir veya kaldırılabilir. Below code örneği, `TOC` ilgili paragraflarda sağ sekme durağının konumunun nasıl değiştirileceğini gösterir. Bu örneğin şablon dosyasını buradan indirebilirsiniz.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cpp" >}}

### İçindekiler Tablosunu Belgeden Kaldırma

İçindekiler tablosu, `TOC` alanının `FieldStart` ve FieldEnd düğümü arasında bulunan tüm düğümler kaldırılarak belgeden kaldırılabilir. Aşağıdaki kod bunu göstermektedir. `TOC` alanının kaldırılması, iç içe geçmiş alanları takip etmediğimiz için normal bir alandan daha basittir. Bunun yerine, `FieldEnd` düğümünün `FieldType.FieldTOC` türünde olduğunu kontrol ediyoruz, bu da mevcut TOC 'nın sonuyla karşılaştığımız anlamına geliyor. Bu teknik, bu durumda herhangi bir iç içe geçmiş alan hakkında endişelenmeden kullanılabilir, çünkü düzgün oluşturulmuş herhangi bir belgenin başka bir `TOC` alanın içinde tam olarak iç içe geçmiş `TOC` alanı olmayacağını varsayabiliriz. İlk olarak, her `TOC` 'ün `FieldStart` düğümleri toplanır ve saklanır. Belirtilen `TOC` daha sonra numaralandırılır, böylece alandaki tüm düğümler ziyaret edilir ve saklanır. Düğümler daha sonra belgeden kaldırılır. Below code örneği, belirtilen bir `TOC`'ün bir belgeden nasıl kaldırılacağını gösterir. Bu örneğin şablon dosyasını buradan indirebilirsiniz.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cpp" >}}

## Farklı Paragraf Stilleri Koymak için Stil Ayırıcı Ekleyin

Stil ayırıcı, MS Kelimesine Ctrl + Alt + Enter Klavye Kısayolunu kullanarak paragrafın sonuna eklenebilir. Bu özellik, bir mantıksal yazdırılan paragrafta kullanılan iki farklı paragraf stiline izin verir. Belirli bir başlığın başından itibaren bir metnin İçindekiler Tablosunda görünmesini istiyorsanız ancak başlığın tamamının İçindekiler Tablosunda görünmesini istemiyorsanız bu özelliği kullanabilirsiniz. Below code örneği, farklı paragraf stilleri koymak için bir stil ayırıcısının nasıl ekleneceğini gösterir.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Şablondan Tüm Stilleri Kopyala

Tüm stilleri bir belgeden diğerine kopyalamak istediğiniz durumlar vardır. Stilleri belirtilen şablondan bir belgeye kopyalamak için `Document.CopyStylesFromTemplate` yöntemini kullanabilirsiniz. Stiller şablondan belgeye kopyalandığında, belgedeki benzer adlandırılmış stiller şablondaki stil açıklamalarıyla eşleşecek şekilde yeniden tanımlanır. Şablondan benzersiz stiller belgeye kopyalanır. Belgedeki benzersiz stiller bozulmadan kalır. Below code örneği, stillerin bir belgeden diğerine nasıl kopyalanacağını gösterir.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cpp" >}}

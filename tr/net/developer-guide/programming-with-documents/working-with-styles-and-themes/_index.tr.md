---
title: C#'te Stiller ve Temalarla Çalışmak
second_title: .NET için Aspose.Words
articleTitle: Stiller ve Temalarla Çalışmak
linktitle: Stiller ve Temalarla Çalışmak
description: "Gelişmiş Microsoft Word biçimlendirme özellikleri, C# kullanarak stil ve temalarla çalışma."
type: docs
weight: 110
url: /tr/net/working-with-styles-and-themes/
---

[StyleCollection](https://reference.aspose.com/words/tr/net/aspose.words/stylecollection/) sınıfı, yerleşik yönetimi yönetmek ve kullanıcı tanımlı ayarları stillere uygulamak için kullanılır.

## Stillere Erişim

[Document.Styles](https://reference.aspose.com/words/tr/net/aspose.words/documentbase/styles/) özelliğini kullanarak belgede tanımlanan stillerin bir koleksiyonunu alabilirsiniz. Bu koleksiyon, bir belgedeki hem yerleşik hem de kullanıcı tanımlı stilleri içerir. Belirli bir stil, adı/takma adı, stil tanımlayıcısı veya dizini ile elde edilebilir. Aşağıdaki kod örneği, belgede tanımlanan stil koleksiyonuna nasıl erişim sağlanacağını gösterir.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-AccessStyles-AccessStyles.cs" >}}

## Stillere Göre İçerik Nasıl Çıkarılır

Basit düzeyde, içeriği bir Word belgesinden stillere göre almak, belirli bir stille biçimlendirilmiş paragrafları ve metin dizilerini tanımlamak, listelemek ve saymak için yararlı olabilir. Örneğin, belgedeki örnekler, başlıklar, referanslar, anahtar kelimeler, şekil adları ve vaka çalışmaları gibi belirli içerik türlerini tanımlamanız gerekebilir.

Bunu birkaç adım daha ileri taşımak için, belgenin, HTML gibi başka bir çıktı için yeniden amaçlandırılması amacıyla, kullandığı stillerle tanımlanan yapısından yararlanmak için de kullanılabilir. Aslında Aspose dokümantasyonu bu şekilde oluşturuldu ve Aspose.Words teste tabi tutuldu. Aspose.Words kullanılarak oluşturulan bir araç, kaynak Word belgelerini alır ve bunları belirli başlık düzeylerinde konulara böler. Solda görebileceğiniz gezinme ağacını oluşturmak için kullanılan Aspose.Words kullanılarak bir XML dosyası üretilir. Daha sonra Aspose.Words her konuyu HTML'ye dönüştürür.

Bir Word belgesinde belirli stillerle biçimlendirilmiş metni alma çözümü genellikle Aspose.Words kullanılarak ekonomik ve basittir.

### Çözüm

Aspose.Words'in stillere göre içerik almayı ne kadar kolay gerçekleştirdiğini göstermek için bir örneğe bakalım. Bu örnekte, örnek bir Word belgesinden belirli bir paragraf stili ve karakter stiliyle biçimlendirilmiş metni alacağız. Yüksek düzeyde bu şunları içerecektir:# [Document](https://reference.aspose.com/words/tr/net/aspose.words/document/) sınıfını kullanarak bir Word belgesi açma.# Koleksiyonları alma belgedeki tüm paragraflar ve tüm çalıştırmalar.# Yalnızca gerekli paragrafları ve çalıştırmaları seçme. Özellikle, bu örnek Word belgesinden 'Başlık 1' paragraf stili ve 'Yoğun Vurgu' karakter stiliyle biçimlendirilmiş metni alacağız.

![working-with-styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


Bu örnek belgede, 'Başlık 1' paragraf stiliyle biçimlendirilmiş metin, 'Sekme Ekle', 'Hızlı Stiller' ve 'Tema'dır ve 'Yoğun vurgu' karakter stiliyle biçimlendirilmiş metin, mavinin birkaç örneğidir. 'galeriler' ve 'genel görünüm' gibi italik, kalın metinler.

### Kod

Aspose.Words belge nesne modelinde stil tabanlı bir sorgunun uygulanması oldukça basittir, çünkü halihazırda mevcut olan araçları kullanır. Bu çözüm için iki sınıf yöntemi uygulanır:# **ParagraphsByStyleName** – Bu yöntem, söz konusu paragrafların bir dizisini alır. belirli bir stil adına sahip olan belge.# **RunsByStyleName** – Bu yöntem, belgede belirli bir stil adına sahip olan çalıştırmaların bir dizisini alır. Bu yöntemlerin her ikisi de çok benzerdir; tek fark, düğüm türleri ve stilin temsilidir. paragraf içindeki bilgileri ve düğümleri çalıştırın. Burada ParagraphsByStyleName'in bir uygulaması verilmiştir: Aşağıdaki örnekte, belirtilen stille biçimlendirilmiş tüm paragrafları bulabilirsiniz.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cs" >}}

{{% alert color="primary" %}}

Bu uygulama aynı zamanda, bu durumda tüm paragraflarda belirtilen türdeki tüm düğümlerin bir koleksiyonunu döndüren `Document` sınıfının `Document.GetChildNodes` yöntemini de kullanır.

**Document.GetChildNodes** yönteminin ikinci parametresinin true olarak ayarlandığını unutmayın. Bu, **Document.GetChildNodes** yöntemini yalnızca en yakın çocukları seçmek yerine tüm alt düğümler arasından yinelemeli olarak seçim yapmaya zorlar.

{{% /alert %}}

Paragraf koleksiyonunun anında bir ek yük oluşturmadığını da belirtmekte fayda var çünkü paragraflar bu koleksiyona yalnızca içindeki öğelere eriştiğinizde yüklenir. Daha sonra yapmanız gereken tek şey, standart foreach operatörünü kullanarak koleksiyonda ilerlemek ve belirtilen stile sahip paragrafları paragraflarWithStyle dizisine eklemektir. `Paragraph` stili adı, [Paragraph.ParagraphFormat](https://reference.aspose.com/words/tr/net/aspose.words/paragraph/paragraphformat/) nesnesinin [Style.Name](https://reference.aspose.com/words/tr/net/aspose.words/style/name/) özelliğinde bulunabilir. RunsByStyleName'in uygulanması hemen hemen aynıdır, ancak çalıştırma düğümlerini almak için açıkça [NodeType.Run](https://reference.aspose.com/words/tr/net/aspose.words/nodetype/) kullanıyoruz. Bir [Run](https://reference.aspose.com/words/tr/net/aspose.words/run/) nesnesinin [Font.Style](https://reference.aspose.com/words/tr/net/aspose.words/font/style/) özelliği, **Run** düğümlerindeki stil bilgilerine erişmek için kullanılır. Aşağıdaki örnekte belirtilen stille biçimlendirilmiş tüm çalıştırmaları bulabilirsiniz.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cs" >}}


Her iki sorgu da uygulandığında tek yapmanız gereken bir belge nesnesini iletmek ve almak istediğiniz içeriğin stil adlarını belirtmektir: Aşağıdaki örnekte sorguları çalıştırın ve sonuçları görüntüleyin. Bu örneğin şablon dosyasını [Burada](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Styles.docx)'ten indirebilirsiniz.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cs" >}}

### Sonuç

Her şey tamamlandığında, örneği çalıştırmak aşağıdaki çıktıyı gösterecektir:

![styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Gördüğünüz gibi bu, örnek Word belgesinde toplanan paragrafların ve çalıştırmaların sayısını ve metnini gösteren çok basit bir örnektir.

## Şablondan Tüm Stilleri Kopyala

Tüm stilleri bir belgeden diğerine kopyalamak istediğiniz durumlar vardır. Stilleri belirtilen şablondan bir belgeye kopyalamak için `Document.CopyStylesFromTemplate` yöntemini kullanabilirsiniz. Stiller bir şablondan belgeye kopyalandığında, belgedeki benzer adlandırılmış stiller, şablondaki stil açıklamalarıyla eşleşecek şekilde yeniden tanımlanır. Şablondaki benzersiz stiller belgeye kopyalanır. Belgedeki benzersiz stiller bozulmadan kalır. Below code örneği, stillerin bir belgeden diğerine nasıl kopyalanacağını gösterir.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cs" >}}

## Tema Özellikleri Nasıl Değiştirilir

Belge teması özelliklerine erişmek için Aspose.Words'ye temel API'i ekledik. Şimdilik bu API aşağıdaki genel nesneleri içermektedir:

- Tema
- Tema Yazı Tipleri
- Tema Renkleri

Tema özelliklerini şu şekilde alabilirsiniz:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-GetThemeProperties.cs" >}}

Tema özelliklerini şu şekilde ayarlayabilirsiniz:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-SetThemeProperties.cs" >}}

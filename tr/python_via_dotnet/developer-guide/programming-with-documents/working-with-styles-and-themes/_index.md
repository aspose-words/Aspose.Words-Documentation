---
title: Stiller ve Temalarla Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: Stiller ve Temalarla Çalışmak
linktitle: Stiller ve Temalarla Çalışmak
description: "Python'i kullanarak bir belgedeki stillere ve temalara erişin ve bunları yönetin."
type: docs
weight: 110
url: /tr/python-net/working-with-styles-and-themes/
---

[StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) sınıfı, yerleşik yönetimi yönetmek ve kullanıcı tanımlı ayarları stillere uygulamak için kullanılır.

## Stillere Erişim

[Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/) özelliğini kullanarak belgede tanımlanan stillerin bir koleksiyonunu alabilirsiniz. Bu koleksiyon, bir belgede hem yerleşik hem de kullanıcı tanımlı stilleri içerir. Belirli bir stil, adı/takma adı, stil tanımlayıcısı veya dizini ile elde edilebilir. Aşağıdaki kod örneği, belgede tanımlanan stil koleksiyonuna nasıl erişim sağlanacağını gösterir.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-AccessStyles.py" >}}

## Stillere Göre İçerik Nasıl Çıkarılır

Basit düzeyde, içeriği bir Word belgesinden stillere göre almak, belirli bir stille biçimlendirilmiş paragrafları ve metin dizilerini tanımlamak, listelemek ve saymak için yararlı olabilir. Örneğin, belgedeki örnekler, başlıklar, referanslar, anahtar kelimeler, şekil adları ve vaka çalışmaları gibi belirli içerik türlerini tanımlamanız gerekebilir.

Bunu birkaç adım daha ileri taşımak için, belgenin, HTML gibi başka bir çıktı için yeniden amaçlandırılması amacıyla, kullandığı stillerle tanımlanan yapısından yararlanmak için de kullanılabilir. Aslında Aspose dokümantasyonu bu şekilde oluşturuldu ve Aspose.Words teste tabi tutuldu. Aspose.Words kullanılarak oluşturulan bir araç, kaynak Word belgelerini alır ve bunları belirli başlık düzeylerinde konulara böler. Solda görebileceğiniz gezinme ağacını oluşturmak için kullanılan Aspose.Words kullanılarak bir XML dosyası oluşturulur. Daha sonra Aspose.Words her konuyu HTML'ye dönüştürür.

Bir Word belgesinde belirli stillerle biçimlendirilmiş metni alma çözümü genellikle Aspose.Words kullanılarak ekonomik ve basittir.

### Çözüm

Aspose.Words'in stillere göre içerik almayı ne kadar kolay gerçekleştirdiğini göstermek için bir örneğe bakalım. Bu örnekte, örnek bir Word belgesinden belirli bir paragraf stili ve karakter stiliyle biçimlendirilmiş metni alacağız. Yüksek düzeyde bu şunları içerecektir:
- [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) sınıfını kullanarak bir Word belgesinin açılması.
- Belgedeki tüm paragrafların ve tüm çalıştırmaların koleksiyonlarını alma.
- Yalnızca gerekli paragrafları ve çalıştırmaları seçmek. Özellikle, bu örnek Word belgesinden 'Başlık 1' paragraf stili ve 'Yoğun Vurgu' karakter stiliyle biçimlendirilmiş metni alacağız.

![working-with-styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


Bu örnek belgede, 'Başlık 1' paragraf stiliyle biçimlendirilmiş metin, 'Sekme Ekle', 'Hızlı Stiller' ve 'Tema'dır ve 'Yoğun vurgu' karakter stiliyle biçimlendirilmiş metin, mavinin birkaç örneğidir. 'galeriler' ve 'genel görünüm' gibi italik, kalın metinler.

### Kod

Aspose.Words belge nesne modelinde stil tabanlı bir sorgunun uygulanması oldukça basittir çünkü halihazırda mevcut olan araçları kullanır. Bu çözüm için iki sınıf yöntemi uygulanmıştır:
- **paragraflar_by_style_name** – Bu yöntem, belgedeki belirli bir stil adına sahip paragrafların bir dizisini alır.
- **run_by_style_name** – Bu yöntem, belgede belirli bir stil adına sahip olan çalıştırmaların bir dizisini alır. Bu yöntemlerin her ikisi de çok benzerdir; tek fark, düğüm türleri ve stil bilgilerinin paragraf ve çalıştırma düğümleri içindeki temsilidir. Burada `paragraphs_by_style_name`'nin bir uygulaması verilmiştir: Aşağıdaki örnekte belirtilen stille biçimlendirilmiş tüm paragrafları bulabilirsiniz.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ParagraphsByStyleName.py" >}}

{{% alert color="primary" %}}

Bu uygulama aynı zamanda, bu durumda tüm paragraflarda belirtilen türdeki tüm düğümlerin bir koleksiyonunu döndüren [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) sınıfının [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) yöntemini de kullanır.

[Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) yönteminin ikinci parametresinin `True` olarak ayarlandığını unutmayın. Bu, [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) yöntemini yalnızca en yakın çocukları seçmek yerine tüm alt düğümler arasından yinelemeli olarak seçim yapmaya zorlar.

{{% /alert %}}

Paragraf koleksiyonunun anında bir ek yük oluşturmadığını da belirtmekte fayda var çünkü paragraflar bu koleksiyona yalnızca içindeki öğelere eriştiğinizde yüklenir. Daha sonra yapmanız gereken tek şey, standart foreach operatörünü kullanarak koleksiyonun üzerinden geçmek ve belirtilen stile sahip paragrafları paragraflar_with_style dizisine eklemektir. `Paragraph` stili adı, [Paragraph.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/paragraph/paragraph_format/) nesnesinin [Style.name](https://reference.aspose.com/words/python-net/aspose.words/style/name/) özelliğinde bulunabilir. **run_by_style_name**'in uygulanması hemen hemen aynıdır, ancak çalıştırma düğümlerini almak için açıkça [NodeType.RUN](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#run) kullanıyoruz. Bir [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) nesnesinin [Font.style](https://reference.aspose.com/words/python-net/aspose.words/font/style/) özelliği, [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) düğümlerindeki stil bilgilerine erişmek için kullanılır. Aşağıdaki örnekte belirtilen stille biçimlendirilmiş tüm çalıştırmaları bulabilirsiniz.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-RunsByStyleName.py" >}}


Her iki sorgu da uygulandığında tek yapmanız gereken bir belge nesnesini iletmek ve almak istediğiniz içeriğin stil adlarını belirtmektir: Aşağıdaki örnekte sorguları çalıştırın ve sonuçları görüntüleyin. Bu örneğin şablon dosyasını [Burada](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Styles.docx)'ten indirebilirsiniz.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractContentBasedOnStyles.py" >}}

### Sonuç

Her şey tamamlandığında, örneği çalıştırmak aşağıdaki çıktıyı gösterecektir:

![styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Gördüğünüz gibi bu, örnek Word belgesinde toplanan paragrafların ve çalıştırmaların sayısını ve metnini gösteren çok basit bir örnektir.

## Şablondan Tüm Stilleri Kopyala

Tüm stilleri bir belgeden diğerine kopyalamak istediğiniz durumlar vardır. Stilleri belirtilen şablondan bir belgeye kopyalamak için [Document.copy_styles_from_template](https://reference.aspose.com/words/python-net/aspose.words/document/copy_styles_from_template/) yöntemini kullanabilirsiniz. Stiller bir şablondan belgeye kopyalandığında, belgedeki benzer adlandırılmış stiller, şablondaki stil açıklamalarıyla eşleşecek şekilde yeniden tanımlanır. Şablondaki benzersiz stiller belgeye kopyalanır. Belgedeki benzersiz stiller bozulmadan kalır. Below code örneği, stillerin bir belgeden diğerine nasıl kopyalanacağını gösterir.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-CopyStyles.py" >}}

## Tema Özellikleri Nasıl Değiştirilir

Belge teması özelliklerine erişmek için Aspose.Words'ye temel API'i ekledik. Şimdilik bu API aşağıdaki genel nesneleri içermektedir:

- [Theme](https://reference.aspose.com/words/python-net/aspose.words.themes/theme/)
- [ThemeFonts](https://reference.aspose.com/words/python-net/aspose.words.themes/themefonts/)
- [ThemeColors](https://reference.aspose.com/words/python-net/aspose.words.themes/themecolors/)

Tema özelliklerini şu şekilde alabilirsiniz:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-GetThemeProperties.py" >}}

Tema özelliklerini şu şekilde ayarlayabilirsiniz:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-SetThemeProperties.py" >}}

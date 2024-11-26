---
title: Stiller ve Temalar ile Çalışmak
second_title: Aspose.Words için Java
articleTitle: Stiller ve Temalar ile Çalışmak
linktitle: Stiller ve Temalar ile Çalışmak
description: "Geliştirilmiş Microsoft Word biçimlendirme özellikleri, stiller ve temalar kullanarak çalışmak için Java."
type: docs
weight: 110
url: /tr/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

The [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) sınıfı yerleşik ayarları yönetmek ve kullanıcı tanımlı kurallara uygulamak için kullanılır.

## Nasıl İçerik Stilleri Tabanlı Çıkarılır

Basit bir düzeyde, belirli stillere dayalı içerikten Word belgesinden yararlanmak, alıntı, liste ve sayma paragrafları ve metin biçimlendirmeleri ile ilgili belirli durumları tespit etmek için yararlı olabilir. Örneğin, belgedeki belirli türdeki içeriği tanımlamanız gerekebilir, mesela örnekler, başlıklar, referanslar, anahtar kelimeler, figür adları ve vaka çalışmaları.

Bunu birkaç adım daha ileriye götürmek için, bu aynı zamanda belgenin yapısı, onun kullandığı stiller tarafından tanımlanan, başka bir çıktıya yeniden amaçlanması için kullanılabilecek şekilde de kullanılabilir. Aslında, Aspose'un belgesi budur, Aspose.Words test ediyor. Aspose.Words kullanılarak inşa edilmiş bir araç, kaynak Word belgelerini belirli başlık seviyelerinde bölümlere ayırır. Aspose.Words'dan elde edilen XML dosyası sol taraftaki gördüğünüz gezinti ağacının oluşturulması için kullanılır ve sonra Aspose.Words her konuyu HTML'ye dönüştürür. Word belgesindeki belirli stillerle biçimlendirilmiş metni almanın çözümü tipik olarak Aspose.Words kullanarak ekonomik ve doğrudan olur.

Bunun nasıl kolayca bir Aspose.Words içeriği stil temelinde alacağınızı göstermek için, örnek bir inceleyelim. Bu örnekte, belirli bir paragraf stili ve karakter stili ile biçimlendirilmiş metin almak için bir örnek Word belgesi kullanacağız.

Yüksek düzeyde, bu şunları içerecek:

1. Bir Word belgesini [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) sınıfını kullanarak açmak.
1. Tüm paragrafların ve belgenin tüm satırlarının bir koleksiyonunu al.
1. Sadece gerekli olan paragrafları ve satırları seçin.

Özellikle, bu örnek Word belgesinden metin biçimlendirilmiş 'Heading 1' paragraf stili ve 'Intense Emphasis' karakter stilini alacağız

![working-with-styles-aspose-words-java-1](working-with-styles-1.png)

Bu örnek belge içinde, 'Başlık 1' paragraf stilleriyle biçimlendirilmiş metin 'Ekle Tablo', 'Hızlı Biçim', ve 'Tema', ve 'Intense Emphasis' karakter stiliyle biçimlendirilmiş metin birkaç mavi, italik, kalın metin örnekleri gibi 'galeriler' ve 'genel görünüm'.

Stil tabanlı sorguların uygulanması, Aspose.Words belge nesne modelinde oldukça basittir, çünkü basitçe zaten var olan araçlar kullanılır. Bu çözüm için iki sınıf yöntemi uygulanır:

1. **ParagraphsByStyleName** – Bu yöntem, belgedeki belirli bir stil adı olan paragrafların dizisini elde eder.
1. **RunsByStyleName** – Bu yöntem belge içinde belirli bir stil adı olan bu çalıştırmaları içeren bir dizi alır.

Her iki yöntem de çok benzer, tek farklılıklar düğüm türleri ve paragraf ve dizi düğümleri içindeki stil bilgilerinin temsilidir. Aşağıdaki kod örneğinde gösterilen ParagraphsByStyleName uygulamasının bir uygulaması aşağıda verilmiştir. Tüm paragrafları belirtilen biçimde biçimlendirilmiş olarak bulmak için.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Bu uygulama ayrıca [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) yöntemini de kullanır `Document` sınıfı, tüm anında alt düğümlerin bir koleksiyonunu döndürür.

Ayrıca, paragraf koleksiyonunun bir anında yükleme yükü oluşturmadığı gerektiğini belirtmek de değer; çünkü paragraflar yalnızca bunlara eriştiğinizde bu koleksiyona yüklenir. O zaman yapmanız gereken tek şey standart foreach operatörünü kullanarak koleksiyona gitmek ve `Paragraph` adlı stil numarasını içeren paragrafları "paragraflarlaStil" dizisine eklemektir. [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) nesnesinin [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) özelliğinde 2 numaralı stil adı bulunabilir.

RunsByStyleName uygulamasının uygulanması aynı neredeyse, fakat biz tabii ki run düğümlerini almak için `NodeType.Run`'ü kullanıyoruz. Bir [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) nesnesinin [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) özelliğini stil bilgilerine erişmek için kullanırız **Run** düğümlerinde

Aşağıdaki kod örneği, belirtilen stil ile biçimlendirilmiş tüm koşulları bulur.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Her iki sorgu uygulandığında yapmanız gereken tek şey bir belge nesnesi geçirmek ve almak istediğiniz içeriğin stil adlarını belirtmek:

{{% /alert %}}

Aşağıdaki kod örneği sorguları çalıştırır ve sonuçları gösterir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Her şey bittiğinde örnek çalıştırıldığında, aşağıdaki çıktıyı gösterir:

![working-with-styles-aspose-words-java-2](working-with-styles-2.png)

Gördüğünüz gibi, bu çok basit bir örnek, örnek Word belgesinde toplanan paragrafların ve satırların sayısını ve metnini göstermektedir.

## Farklı Paragraf stilleri eklemek için bir stil ayırıcı ekleyin

Ctrl + Alt + Enter kısayolunu kullanarak MS Word'e bir paragrafın sonuna stil ayırıcı eklenebilir. Bu özellik, tek bir mantıksal basılı paragrafta kullanılan iki farklı paragraf stilini izin verir. Belirli bir başlığın başlangıcındaki bazı metnin İçindekiler tablosunda görünmesini istiyorsanız ancak İçindekiler tablosunda tüm başlık istemezseniz bu özelliği kullanabilirsiniz

Aşağıdaki kod örneği farklı paragraf stilleri eklemek için bir stil ayırıcı nasıl yerleştirileceğini gösterir

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Şablondan Tüm Stilleri Kopyala

Bazen bir belgeye başka bir belgeden tüm stilleri kopyalamak istediğiniz durumlar vardır. Belirtilen şablondan bir belgeye stilleri kopyalamak için `Document.CopyStylesFromTemplate` yöntemini kullanabilirsiniz. Stillerden bir şablona kopyalendiğinde, belgenin benzer isimlerdeki stilleri şablondaki stil açıklamalarına uymak üzere yeniden tanımlanır. Şablonda benzersiz stiller belgeye kopyalanır. Belgede benzersiz stiller değişmeden kalır

Aşağıdaki kod örneği bir belgeye diğerinden stilleri nasıl kopyaladığını göstermektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Tema Özelliklerini Nasıl Yönetir

We have added API basic in Aspose.Words to access document theme properties. Şu anda bu API aşağıdaki kamuya açık nesneleri içerir:

- Tema
- TemaFontları
- TemaRenkleri

Tema özelliklerini nasıl alabileceğinizi işte gösteriyoruz:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

Ve işte nasıl tema özelliklerini ayarlayabileceğiniz:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}

---
title: Tabloya Genel Bakış
second_title: Aspose.Words için C++
articleTitle: Tabloya Genel Bakış
linktitle: Tabloya Genel Bakış
description: "Tablolarla ve bunların içindeki hücreler, satırlar, sütunlar gibi bileşenleriyle çalışın Aspose.Words için C++. C++ içindeki tablolarla nasıl çalışılır."
type: docs
weight: 10
url: /tr/cpp/table-overview/
---

Aspose.Words, çeşitli biçimlerde (PDF, HTML, farklı Microsoft Word biçimler ve diğerleri) belgelerin sunucu tarafında işlenmesi için tasarlanmış bir sınıf kitaplığıdır ve tabloları aşağıdaki şekillerde destekler:

* belgedeki tablolar açma/kaydetme ve dönüştürme sırasında korunur
* tabloyu, içeriği ve biçimlendirmesini düzenlemek ve ardından değişiklikleri tabloları destekleyen bir biçimde bir dosyaya dışa aktarmak mümkündür

Bu makalede, Aspose.Words tarafından desteklenen tablo yapısı, hücreler, satırlar ve sütunlar ve bu tablolarla çalışmanın ayrıntıları hakkında daha fazla bilgi edineceğiz.

## Tablo Yapısı

Daha önce de belirtildiği gibi, tablo **Cell**, **Row** ve **Column** gibi öğelerden oluşur. Bunlar, belge biçiminden bağımsız olarak genel olarak tüm tablolarda ortak olan kavramlardır.

Bu, Microsoft Word belgesinde bulunan bir tablonun yaygın bir örneğidir:

![tables-overview-aspose-words-cpp-1](tables-overview-1.png)

### Tablo Düğümleri

Aspose.Words 'e yüklenen herhangi bir belgeden bir tablo **Table node** olarak içe aktarılır. Tablo bir çocuk olarak bulunabilir:

- ana metin
- yorum veya dipnot gibi satır içi bir hikaye
- bir tablo başka bir tablonun içine yerleştirildiğinde hücreler

{{% alert color="primary" %}}

Tabloların herhangi bir derinliğe kadar diğer tabloların içine yerleştirilebileceğini unutmayın.

{{% /alert %}}

### Tablo İçeriği

Tablo düğümü herhangi bir gerçek içerik içermez - bunun yerine, içeriği oluşturan bu tür diğer düğümler için bir kapsayıcıdır:

- **Table** birçok **Row** düğüm içerir. Tablo, belgedeki tabloyu serbestçe taşımanıza, değiştirmenize ve kaldırmanıza olanak tanıyan tüm olağan düğüm öğelerini sağlar.
- **Row** tek bir tablo satırını temsil eder ve birçok **Cell** düğüm içerir. Ayrıca **Row**, satırın yükseklik ve hizalama gibi nasıl görüntüleneceğini tanımlayan öğeler sağlar.
- **Cell**, tabloda görünen gerçek içeriği içeren ve **Paragraph** ve diğer blok düzeyinde düğümlerden oluşan şeydir. Ayrıca, hücreler iç içe geçmiş tablolar içerebilir.

![tables-overview-aspose-words-cpp-2](tables-overview-2.png)

{{% alert color="primary" %}}

Bir belgedeki tablo düğümlerinin yapısını **DocumentExplorer** kullanarak kontrol edebilirsiniz.

{{% /alert %}}

### Tablodan sonra Boş Paragraf

Yukarıdaki resim, belgenin sırayla iki hücreden oluşan birkaç satırlık bir tablo içerdiğini göstermektedir. İki hücrenin her biri, hücrenin biçimlendirilmiş metninin kapsayıcısı olan bir paragraf içerir.

Bir belgede ardışık iki tabloyu ayırmanın tablodan sonra en az bir boş paragraf gerektirdiğini de belirtmekte fayda var. Böyle bir paragraf olmasaydı, ardışık tablolar bir araya getirilirdi. Bu davranış hem Microsoft Word hem de Aspose.Words 'de aynıdır.

Aspose.Words 'de, tablolarla ilgili tüm sınıflar ve özellikler [Aspose.Words.Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/) ad alanında bulunur.

## Ayrıca bakınız

* [Aspose.Words Belge Nesne Modeli (DOM)](/words/cpp/aspose-words-document-object-model/)
* [Bir Belgedeki Düğümlerin Mantıksal Düzeyleri](/words/cpp/logical-levels-of-nodes-in-a-document/)
---
title: Tablo Genel Bakış
second_title: Aspose.Words için Java
articleTitle: Tablo Genel Bakış
linktitle: Tablo Genel Bakış
description: "Tablo ve onların bileşenleri gibi hücreler, satırlar ve sütunlar ile Aspose.Words üzerinde çalışmak için Java kullanın. Tablolarla nasıl çalışılacağı Java."
type: docs
weight: 10
url: /tr/java/table-overview/
---

Aspose.Words çeşitli formatlarda sunucu tarafı belgeleri işlemek için tasarlanmış bir sınıf kütüphanesidir - PDF, HTML, farklı Microsoft Word formatları ve diğerleri - ve tabloları şu yollarla destekler:

* bir belge içindeki tablolar, açıklama/kaydetme ve dönüştürmeler sırasında korunur
* tablo düzenlenebilir, içeriği ve biçimlendirmesi ve ardından değişiklikleri bir tabloları destekleyen bir dosyaya dışarı aktarmak mümkündür

Bu makalede, tablo yapısı, hücreler, satırlar ve Aspose.Words tarafından desteklenen sütunlar hakkında daha fazla bilgi öğreneceğiz ve bu tür tablolarla çalışmanın detayları.

## Masa Yapısı

Daha önce bahsedildiği gibi tablo böyle öğelerden oluşur; **Cell**, **Row** ve **Column**. Bu tüm tablolarda yaygın olarak görülen kavramlardır ve belge formatından bağımsız olarak bu kavramlar geçerlidir.

Bu bir Microsoft Word belgesinde bulunan masanın yaygın bir örneğidir:

![tables-overview-aspose-words-java-1](tables-overview-1.png)

### Tablo Düğümleri

Herhangi bir belge yüklenen bir tablo Aspose.Words olarak içeri aktarılır ve bir **Tablo düğümü**'dir. Bu tablo, alt öğe olarak bulunabilir:

- ana metin
- bir yorum veya bir alt not gibi bir satır içi hikaye
- bir tablonun başka bir tablonun içinde yer aldığı durumlarda hücreler

{{% alert color="primary" %}}

Tabloların diğer tablolara gömülüp herhangi bir derinliğe ulaşabileceğini unutmayın.

{{% /alert %}}

### Tablo İçeriği

Masa düğümü herhangi bir gerçek içeriği içermez - bunun yerine, diğer bu tür düğümlerden oluşan içeriğin konteynırıdır:

- **Table** birçok **Row** düğümü içerir. Bu tablo tüm standart düğüm öğelerini sağlar, böylece tabloyu belge içinde serbestçe hareket ettirebilir, değiştirebilir ve kaldırabilirsiniz.
- **Row** tek bir tablo satırını temsil eder ve birçok **Cell** düğümü içerir. Ayrıca, **Row** öğeleri, örneğin yükseklik ve hizalama gibi satırın nasıl gösterileceğini tanımlayan sağlar.
- **Cell** tablo içinde görülebilen true içeriğini içeren ve bir **Paragraph** ve diğer blok düzeyi düğümlerden oluşan bir şeydir. Ayrıca, hücreler iç içe geçmiş tablolar içerebilir.

![tables-overview-aspose-words-java-2](tables-overview-2.png)

{{% alert color="primary" %}}

Belgenin tablo düğümlerinin yapısını kontrol etmek için, "**DocumentExplorer**" kullanabilirsiniz.

{{% /alert %}}

### Masadaki Boş Paragraf

Yukarıdaki resim, belgenin bir tablonun birkaç satırından oluştuğunu ve bu tablonun da iki hücreden oluştuğunu göstermektedir. Her iki hücre de bir paragraf içerir ki bu hücrenin biçimlendirilmiş metin için bir kapsayıcıdır.

Bir belgedeki iki ardışık tablonun ayrılmasını sağlamak için en az bir boş paragrafın sonra tabloya ihtiyaç vardır. Böyle bir paragraf olmadan, ardışık tablolar tek birine birleştirilecekti. Bu davranış, hem Microsoft Word hem de Aspose.Words'da aynıdır.

Aspose.Words tablolarla ilgili bir dizi sınıfa sahiptir - [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/) ve diğerleri.

## Ayrıca bakınız

* [Aspose.Words Document Object Model (DOM)](/words/java/aspose-words-document-object-model/)
* [Logical Levels of Nodes in a Document](/words/java/logical-levels-of-nodes-in-a-document/)
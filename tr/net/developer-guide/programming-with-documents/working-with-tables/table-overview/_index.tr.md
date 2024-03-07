---
title: Tabloya Genel Bakış
second_title: .NET için Aspose.Words
articleTitle: Tabloya Genel Bakış
linktitle: Tabloya Genel Bakış
description: ".NET için Aspose.Words'te tablolarla ve hücreler, satırlar, sütunlar gibi bileşenleriyle çalışın. C#'deki tablolarla nasıl çalışılır?"
type: docs
weight: 10
url: /tr/net/table-overview/
---

Aspose.Words, çeşitli formatlardaki (PDF, HTML, farklı Microsoft Word formatları ve diğerleri) belgelerin sunucu tarafında işlenmesi için tasarlanmış bir sınıf kitaplığıdır ve tabloları aşağıdaki şekillerde destekler:

* bir belgedeki tablolar açma/kaydetme ve dönüştürmeler sırasında korunur
* tabloyu, içeriği ve formatını düzenlemek ve ardından değişiklikleri tabloları destekleyen formatta bir dosyaya aktarmak mümkündür

Bu yazımızda Aspose.Words tarafından desteklenen tablo yapısı, hücreler, satırlar ve sütunlar hakkında daha fazla bilgi edinecek ve bu tür tablolarla çalışmanın ayrıntılarını öğreneceğiz.

## Tablo Yapısı

Daha önce de belirtildiği gibi tablo **Cell**, **Row** ve **Column** gibi öğelerden oluşur. Bunlar, belge formatından bağımsız olarak genel olarak tüm tablolarda ortak olan kavramlardır.

Bu, Microsoft Word belgesinde bulunan bir tablonun yaygın bir örneğidir:

![tables-overview-aspose-words-net-1](/words/net/table-overview/tables-overview-1.png)

### Tablo Düğümleri

Aspose.Words'e yüklenen herhangi bir belgedeki tablo, **Tablo düğümü** olarak içe aktarılır. Tablo aşağıdakilerin alt öğesi olarak bulunabilir:

- ana yazı
- yorum veya dipnot gibi satır içi bir hikaye
- bir tablo başka bir tablonun içine yerleştirildiğinde hücreler

{{% alert color="primary" %}}

Tabloların diğer tabloların içine herhangi bir derinliğe yerleştirilebileceğini unutmayın.

{{% /alert %}}

### Tablo içeriği

Tablo düğümü herhangi bir gerçek içerik içermez; bunun yerine içeriği oluşturan diğer düğümler için bir kapsayıcıdır:

- **Table** birçok **Row** düğümü içerir. Tablo, belgedeki tabloyu serbestçe taşımanıza, değiştirmenize ve kaldırmanıza olanak tanıyan tüm olağan düğüm öğelerini sağlar.
- **Row**, tek bir tablo satırını temsil eder ve birçok **Cell** düğümü içerir. **Row** ayrıca yükseklik ve hizalama gibi satırın nasıl görüntüleneceğini tanımlayan öğeler de sağlar.
- **Cell**, tabloda görünen true içeriğini içeren şeydir ve **Paragraph** ile diğer blok düzeyindeki düğümlerden oluşur. Ayrıca hücreler iç içe geçmiş tablolar içerebilir.

![tables-overview-aspose-words-net-2](/words/net/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

**DocumentExplorer**'i kullanarak bir belgedeki tablo düğümlerinin yapısını kontrol edebilirsiniz.

{{% /alert %}}

### Tablodan Sonra Boş Paragraf

Yukarıdaki resim, belgenin birkaç satırdan oluşan ve iki hücreden oluşan bir tablo içerdiğini göstermektedir. İki hücrenin her biri, hücrenin biçimlendirilmiş metninin kabı olan bir paragraf içerir.

Bir belgede ardışık iki tabloyu ayırmak için tablodan sonra en az bir boş paragrafın gerekli olduğunu da belirtmekte fayda var. Böyle bir paragraf olmasaydı ardışık tablolar tek bir tablo halinde birleştirilirdi. Bu davranış hem Microsoft Word hem de Aspose.Words'de aynıdır.

Aspose.Words'te tablolarla ilgili tüm sınıflar ve özellikler [Aspose.Words.Tables](https://reference.aspose.com/words/tr/net/aspose.words.tables/) ad alanında bulunur.

## Ayrıca bakınız

* [Aspose.Words Document Object Model (DOM)](/words/tr/net/aspose-words-document-object-model/)
* [Bir Belgedeki Düğümlerin Mantıksal Düzeyleri](/words/tr/net/logical-levels-of-nodes-in-a-document/)
---
title: Word Belgelerinde Tablo Stilini Değiştirme
second_title: Aspose.Words için C++
articleTitle: Tablo Stili Uygula
linktitle: Tablo Stili Uygula
description: "Gelişmiş tablo biçimlendirme C++. C++ kullanarak bir tablo stili oluşturun. Tablo stili C++ uygulayın."
type: docs
weight: 80
url: /tr/cpp/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Tablo stili, bir tabloya kolayca uygulanabilen bir biçimlendirme kümesini tanımlar. Kenarlıklar, gölgelendirme, hizalama ve yazı tipi gibi biçimlendirme bir tablo stilinde ayarlanabilir ve tutarlı bir görünüm için birçok tabloya uygulanabilir.

Aspose.Words bir tabloya tablo stili uygulamayı ve ayrıca herhangi bir tablo stilinin özelliklerini okumayı destekler. Tablo stilleri yükleme ve kaydetme sırasında aşağıdaki şekillerde korunur:

- Bu biçimlere yüklenip kaydedilirken DOCX ve WordML biçimlerindeki tablo stilleri korunur
- Tablo stilleri DOC biçiminde yüklenirken ve kaydedilirken korunur (ancak başka bir biçime kaydedilmez)
- Diğer biçimlere dışa aktarırken, işlerken veya yazdırırken, tablo stilleri tablodaki doğrudan biçimlendirmeye genişletilir, böylece tüm biçimlendirme korunur

## Tablo Stili Oluşturma

Kullanıcı yeni bir stil oluşturabilir ve stil koleksiyonuna ekleyebilir. [Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/) yöntemi, yeni bir tablo stili oluşturmak için kullanılır.

Aşağıdaki kod örneği, yeni bir kullanıcı tanımlı tablo stilinin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## Varolan Bir Tablo Stilini Kopyalama

Gerekirse, `AddCopy` yöntemini kullanarak belirli bir belgede zaten var olan bir tablo stilini stil koleksiyonunuza kopyalayabilirsiniz.

Bu kopyalama ile bağlantılı stillerin de kopyalandığını bilmek önemlidir.

Aşağıdaki kod örneği, bir belgeden başka bir belgeye stilin nasıl içe aktarılacağını gösterir:

EXAMPLE

## Varolan Bir Tablo Stilini Uygulama

Aspose.Words, [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) sınıfından devralınan bir [TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/) sağlar. **TableStyle**, kullanıcının gölgeleme, dolgu, girinti, [CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/) ve [Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/) gibi farklı stil seçeneklerini uygulamasını kolaylaştırır.

Ayrıca Aspose.Words, hangi tablo stiliyle çalışacağımızı belirtmek için [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) sınıfını ve `Table` sınıfının birkaç özelliğini sağlar: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/), ve [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/).

Aspose.Words ayrıca, atanmış bir tablo stiline sahip bir tablonun bazı alanlarına uygulanan özel biçimlendirmeyi temsil eden [ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/) sınıfını ve **ConditionalStyle** nesnelerden oluşan bir koleksiyonu temsil eden [ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/) sınıfını da sağlar. Bu koleksiyon, [ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/) numaralandırma türünün her değeri için bir öğeyi temsil eden kalıcı bir öğe kümesi içerir. **ConditionalStyleType** numaralandırması, koşullu biçimlendirmenin bir tablo stilinde tanımlanabileceği tüm olası tablo alanlarını tanımlar.

Bu durumda, ConditionalStyleType numaralandırma türü altında tanımlanan tüm olası tablo alanı için koşullu biçimlendirme tanımlanabilir.

Aşağıdaki kod örneği, tablonun üstbilgi satırı için koşullu biçimlendirmenin nasıl tanımlanacağını gösterir:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

İlk sütun, son sütun, bantlı satırlar gibi stillerin hangi tablo parçalarına uygulanacağını da seçebilirsiniz. Bunlar [TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/) numaralandırmasında listelenir ve [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/) özelliği aracılığıyla uygulanır. **TableStyleOptions** numaralandırma, bu özelliklerin bit düzeyinde bir kombinasyonuna izin verir.

Aşağıdaki kod örneği, tablo stili uygulanmış yeni bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

Aşağıdaki resimler, Microsoft Word 'deki **Table Styles** ve bunlara karşılık gelen özelliklerin Aspose.Words'deki bir temsilini göstermektedir.

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## Biçimlendirmeyi Tablo Stilinden Alın ve Doğrudan Biçimlendirme Olarak Uygulayın

Aspose.Words ayrıca, bir tablo stilinde bulunan biçimlendirmeyi almak için [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/) yöntemini sağlar ve onu doğrudan biçimlendirme olarak tablonun satırlarına ve hücrelerine genişletir. Biçimlendirmeyi tablo stili ve hücre stili ile birleştirmeyi deneyin.

{{% alert color="primary" %}}

Bu yöntem, bir satır veya hücre biçimi aracılığıyla tabloya zaten uygulanmış olan diğer biçimlendirmeleri geçersiz kılmaz.

{{% /alert %}}

Aşağıdaki kod örneği, biçimlendirmenin stillerden tablo satırlarına ve hücrelere doğrudan biçimlendirme olarak nasıl genişletileceğini gösterir:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}

---
title: Word Belgelerinde Tablo Stilini Değiştirme
second_title: .NET için Aspose.Words
articleTitle: Tablo Stilini Uygula
linktitle: Tablo Stilini Uygula
description: "Gelişmiş tablo biçimlendirme C#. C#'i kullanarak bir tablo stili oluşturun. C# tablo stilini uygulayın."
type: docs
weight: 80
url: /tr/net/working-with-tablestyle/
---

Tablo stili, bir tabloya kolayca uygulanabilecek bir dizi biçimlendirmeyi tanımlar. Kenarlıklar, gölgeleme, hizalama ve yazı tipi gibi biçimlendirmeler tablo stilinde ayarlanabilir ve tutarlı bir görünüm için birçok tabloya uygulanabilir.

Aspose.Words, bir tabloya tablo stili uygulamayı ve ayrıca herhangi bir tablo stilinin özelliklerini okumayı destekler. Tablo stilleri yükleme ve kaydetme sırasında aşağıdaki şekillerde korunur:

- DOCX ve WordML formatlarındaki tablo stilleri, bu formatlara yüklenirken ve kaydedilirken korunur
- DOC formatında yüklerken ve kaydederken tablo stilleri korunur (ancak başka bir formatta değil)
- Diğer formatlara dışa aktarırken, oluştururken veya yazdırırken, tablo stilleri tablodaki doğrudan formatlamaya genişletilir, böylece tüm formatlama korunur

## Tablo Stili Oluşturun

Kullanıcı yeni bir stil oluşturabilir ve onu stil koleksiyonuna ekleyebilir. [Add](https://reference.aspose.com/words/net/aspose.words/stylecollection/add/) yöntemi yeni bir tablo stili oluşturmak için kullanılır.

Aşağıdaki kod örneği, yeni bir kullanıcı tanımlı tablo stilinin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "create-table-style.cs" >}}

## Mevcut Bir Tablo Stilini Kopyalama

Gerekirse belirli bir belgede zaten mevcut olan bir tablo stilini `AddCopy` yöntemini kullanarak stil koleksiyonunuza kopyalayabilirsiniz.

Bu kopyalamayla bağlantılı stillerin de kopyalandığını bilmek önemlidir.

Aşağıdaki kod örneği, bir stilin bir belgeden başka bir belgeye nasıl aktarılacağını gösterir:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "copy-style-different-document.cs" >}}

## Mevcut Bir Tablo Stilini Uygula

Aspose.Words, [Style](https://reference.aspose.com/words/net/aspose.words/style/) sınıfından miras alınan bir [TableStyle](https://reference.aspose.com/words/net/aspose.words/tablestyle/) sağlar. **TableStyle**, kullanıcının gölgeleme, dolgu, girinti, [CellSpacing](https://reference.aspose.com/words/net/aspose.words/tablestyle/cellspacing/) ve [Font](https://reference.aspose.com/words/net/aspose.words/style/font/) vb. gibi farklı stil seçeneklerini uygulamasını kolaylaştırır.

Ayrıca Aspose.Words, hangi tablo stiliyle çalışacağımızı belirtmek için [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) sınıfını ve `Table` sınıfının birkaç özelliğini sağlar: [Style](https://reference.aspose.com/words/net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words.tables/table/styleidentifier/), [StyleName](https://reference.aspose.com/words/net/aspose.words.tables/table/stylename/) ve [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/).

Aspose.Words ayrıca, atanmış bir tablo stiliyle bir tablonun bazı alanlarına uygulanan özel formatlamayı temsil eden [ConditionalStyle](https://reference.aspose.com/words/net/aspose.words/conditionalstyle/) sınıfını ve **ConditionalStyle** nesnelerinin bir koleksiyonunu temsil eden [ConditionalStyleCollection](https://reference.aspose.com/words/net/aspose.words/conditionalstylecollection/)'i de sağlar. Bu koleksiyon, [ConditionalStyleType](https://reference.aspose.com/words/net/aspose.words/conditionalstyletype/) numaralandırma türünün her değeri için bir öğeyi temsil eden kalıcı bir öğe kümesi içerir. **ConditionalStyleType** numaralandırması, koşullu biçimlendirmenin bir tablo stilinde tanımlanabileceği tüm olası tablo alanlarını tanımlar.

Bu durumda, ConditionalStyleType numaralandırma türü altında tanımlanan tüm olası tablo alanları için koşullu biçimlendirme tanımlanabilir.

Aşağıdaki kod örneği, tablonun başlık satırı için koşullu biçimlendirmenin nasıl tanımlanacağını gösterir:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "define-conditional-formatting.cs" >}}

Ayrıca, ilk sütun, son sütun, şeritli satırlar gibi hangi tablo parçalarına stil uygulanacağını da seçebilirsiniz. [TableStyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/tablestyleoptions/) numaralandırmasında listelenirler ve [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/) özelliği aracılığıyla uygulanırlar. **TableStyleOptions** numaralandırması bu özelliklerin bit düzeyinde birleşimine olanak tanır.

Aşağıdaki kod örneği, tablo stili uygulanmış yeni bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "build-table-with-style.cs" >}}

Aşağıdaki resimler **Table Styles**'in Microsoft Word'deki temsilini ve Aspose.Words'deki karşılık gelen özelliklerini göstermektedir.

![formatting-table-style-aspose-words-net](/words/net/working-with-tablestyle/applying-formatting-10.png)

## Tablo Stilinden Formatlamayı Alın ve Doğrudan Formatlama Olarak Uygulayın

Aspose.Words ayrıca bir tablo stilinde bulunan biçimlendirmeyi almak ve onu doğrudan biçimlendirme olarak tablonun satırlarına ve hücrelerine genişletmek için [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/net/aspose.words/document/expandtablestylestodirectformatting/) yöntemini de sağlar. Biçimlendirmeyi tablo stili ve hücre stiliyle birleştirmeyi deneyin.

{{% alert color="primary" %}}

Bu yöntem, bir satır veya hücre biçimi aracılığıyla tabloya halihazırda uygulanmış olan diğer biçimlendirmeleri geçersiz kılmaz.

{{% /alert %}}

Aşağıdaki kod örneği, biçimlendirmenin stillerden tablo satırlarına ve hücrelere doğrudan biçimlendirme olarak nasıl genişletileceğini gösterir:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "expand-formatting-on-cells-and-row-from-style.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx)'ten indirebilirsiniz.

{{% /alert %}}

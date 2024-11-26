---
title: Python'te Tablo Stilini Değiştirme
second_title: Python via .NET için Aspose.Words
articleTitle: Tablo Stilini Uygula
linktitle: Tablo Stilini Uygula
description: "Gelişmiş tablo biçimlendirme C#. Python kullanarak bir tablo stili oluşturun. Python tablo stilini uygulayın."
type: docs
weight: 80
url: /tr/python-net/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Tablo stili, bir tabloya kolayca uygulanabilecek bir dizi biçimlendirmeyi tanımlar. Kenarlıklar, gölgeleme, hizalama ve yazı tipi gibi biçimlendirmeler tablo stilinde ayarlanabilir ve tutarlı bir görünüm için birçok tabloya uygulanabilir.

Aspose.Words, bir tabloya tablo stili uygulamayı ve ayrıca herhangi bir tablo stilinin özelliklerini okumayı destekler. Tablo stilleri yükleme ve kaydetme sırasında aşağıdaki şekillerde korunur:

- DOCX ve WordML formatlarındaki tablo stilleri, bu formatlara yüklenirken ve kaydedilirken korunur
- DOC formatında yüklerken ve kaydederken tablo stilleri korunur (ancak başka bir formatta değil)
- Diğer formatlara dışa aktarırken, oluştururken veya yazdırırken, tablo stilleri tablodaki doğrudan formatlamaya genişletilir, böylece tüm formatlama korunur

## Tablo Stili Oluşturun

Kullanıcı yeni bir stil oluşturabilir ve onu stil koleksiyonuna ekleyebilir. [Add](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/add/) yöntemi yeni bir tablo stili oluşturmak için kullanılır.

Aşağıdaki kod örneği, yeni bir kullanıcı tanımlı tablo stilinin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "create-table-style.py" >}}

## Mevcut Bir Tablo Stilini Kopyalama

Gerekirse belirli bir belgede zaten mevcut olan bir tablo stilini `AddCopy` yöntemini kullanarak stil koleksiyonunuza kopyalayabilirsiniz.

Bu kopyalamayla bağlantılı stillerin de kopyalandığını bilmek önemlidir.

Aşağıdaki kod örneği, bir stilin bir belgeden başka bir belgeye nasıl aktarılacağını gösterir:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "copy-style-different-document.py" >}}

## Mevcut Bir Tablo Stilini Uygula

Aspose.Words, [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) sınıfından miras alınan bir [TableStyle](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/) sağlar. **TableStyle**, kullanıcının gölgeleme, dolgu, girinti, [CellSpacing](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/cell_spacing/) ve [Font](https://reference.aspose.com/words/python-net/aspose.words/style/font/) vb. gibi farklı stil seçeneklerini uygulamasını kolaylaştırır.

Ayrıca Aspose.Words, hangi tablo stiliyle çalışacağımızı belirtmek için [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) sınıfını ve `Table` sınıfının birkaç özelliğini sağlar: [Style](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_identifier/), [StyleName](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_name/) ve [StyleOptions](https://reference.aspose.com/words/tr/net/aspose.words.tables/table/styleoptions/).

Aspose.Words ayrıca, atanmış bir tablo stiliyle bir tablonun bazı alanlarına uygulanan özel formatlamayı temsil eden [ConditionalStyle](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyle/) sınıfını ve **ConditionalStyle** nesnelerinin bir koleksiyonunu temsil eden [ConditionalStyleCollection](https://reference.aspose.com/words/python-net/aspose.words/conditionalstylecollection/)'i de sağlar. Bu koleksiyon, [ConditionalStyleType](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyletype/) numaralandırma türünün her değeri için bir öğeyi temsil eden kalıcı bir öğe kümesi içerir. **ConditionalStyleType** numaralandırması, koşullu biçimlendirmenin bir tablo stilinde tanımlanabileceği tüm olası tablo alanlarını tanımlar.

Bu durumda, ConditionalStyleType numaralandırma türü altında tanımlanan tüm olası tablo alanları için koşullu biçimlendirme tanımlanabilir.

Aşağıdaki kod örneği, tablonun başlık satırı için koşullu biçimlendirmenin nasıl tanımlanacağını gösterir:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "define-conditional-formatting.py" >}}

Ayrıca, ilk sütun, son sütun, şeritli satırlar gibi hangi tablo parçalarına stil uygulanacağını da seçebilirsiniz. [TableStyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/tablestyleoptions/) numaralandırmasında listelenirler ve [StyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_options/) özelliği aracılığıyla uygulanırlar. **TableStyleOptions** numaralandırması bu özelliklerin bit düzeyinde birleşimine izin verir.

Aşağıdaki kod örneği, tablo stili uygulanmış yeni bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "build-table-with-style.py" >}}

Aşağıdaki resimler **Table Styles**'in Microsoft Word'deki temsilini ve Aspose.Words'deki karşılık gelen özelliklerini göstermektedir.

![formatting-table-style-aspose-words-python](/words/python-net/working-with-tablestyle/applying-formatting-10.png)



## Tablo Stilleriyle Çalışmak

Tablo stili, bir tabloya kolayca uygulanabilecek bir dizi biçimlendirmeyi tanımlar. Kenarlıklar, gölgeleme, hizalama ve yazı tipi gibi biçimlendirmeler tablo stilinde ayarlanabilir ve tutarlı bir görünüm için birçok tabloya uygulanabilir.

Aspose.Words, bir tabloya tablo stili uygulamayı ve ayrıca herhangi bir tablo stilinin özelliklerini okumayı destekler. Tablo stilleri yükleme ve kaydetme sırasında aşağıdaki şekillerde korunur:

- DOCX ve WordML formatlarındaki tablo stilleri, bu formatlara yüklenirken ve kaydedilirken korunur.
- Tablo stilleri DOC formatında yüklenirken ve kaydedilirken korunur (ancak başka bir formatta değil).
- Diğer formatlara dışa aktarırken, oluştururken veya yazdırırken, tablo stilleri tablodaki doğrudan formatlamaya genişletilir, böylece tüm formatlama korunur.

Şu anda yeni tablo stilleri oluşturamazsınız. Bir tabloya yalnızca yerleşik tablo stillerini veya belgede zaten mevcut olan özel tablo stillerini uygulayabilirsiniz

## Tablo Stilinden Formatlamayı Alın ve Doğrudan Formatlama Olarak Uygulayın

Aspose.Words ayrıca bir tablo stilinde bulunan biçimlendirmeyi almak ve onu doğrudan biçimlendirme olarak tablonun satırlarına ve hücrelerine genişletmek için [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/python-net/aspose.words/document/expand_table_styles_to_direct_formatting/#default) yöntemini de sağlar. Biçimlendirmeyi tablo stili ve hücre stiliyle birleştirmeyi deneyin.

{{% alert color="primary" %}}

Bu yöntem, bir satır veya hücre biçimi aracılığıyla tabloya halihazırda uygulanmış olan diğer biçimlendirmeleri geçersiz kılmaz.

{{% /alert %}}

Aşağıdaki kod örneği, biçimlendirmenin stillerden tablo satırlarına ve hücrelere doğrudan biçimlendirme olarak nasıl genişletileceğini gösterir:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "expand-formatting-on-cells-and-row-from-style.py" >}}

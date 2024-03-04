---
title: C#'te Tablo Nasıl Oluşturulur
second_title: .NET için Aspose.Words
articleTitle: Tablo Oluştur
linktitle: Tablo Oluştur
description: "C#'te çeşitli şekillerde tablonun nasıl oluşturulacağına dair bir kılavuz. Belgeniz için C#'te tablo oluşturun."
type: docs
weight: 20
url: /tr/net/create-a-table/
---

Aspose.Words, kullanıcıların bir belgede sıfırdan tablolar oluşturmasına olanak tanır ve bunu yapmak için birkaç farklı yöntem sunar. Bu makale, her yöntemi kullanarak belgenize biçimlendirilmiş tabloları nasıl ekleyeceğinize ilişkin ayrıntıların yanı sıra makalenin sonunda her yöntemin karşılaştırmasını sunar.

## Varsayılan Tablo Stilleri

Yeni oluşturulan tabloya Microsoft Word'te kullanılanlara benzer varsayılan değerler verilir:

|  Tablo Özelliği |  Aspose.Words'te varsayılan |
|  :---------------------  |  :----------------------  |
|  `Border Style`            |  `Single`  |
|  `Border Width`            |  `1/2 pt`                   |
|  `Border Color`            |  `Black`  |
|  `Left and Right Padding`  |  `5.4 pts`                  |
|  `AutoFit Mode`            |  `AutoFit to Window`        |
|  `Allow AutoFit`           |  `True`  |

{{% alert color="primary" %}}

Bir tablo, sıkı bir şekilde konumlandırılmışsa satır içi olabilir veya sayfada herhangi bir yere konumlandırılabiliyorsa kayan olabilir. Varsayılan olarak Aspose.Words her zaman satır içi tablolar oluşturur.

{{% /alert %}}

## DocumentBuilder ile Tablo Oluşturma

Aspose.Words'te kullanıcılar [DocumentBuilder](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/)'yi kullanarak bir belgede tablo oluşturabilirler. Tablo oluşturmanın temel algoritması aşağıdaki gibidir:

1. Tabloyu [StartTable](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/starttable/) ile başlatın
2. [InsertCell](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/insertcell/)'i kullanarak tabloya bir hücre ekleyin; bu, otomatik olarak yeni bir satır başlatır
3. İsteğe bağlı olarak hücre biçimlendirmesini belirtmek için [CellFormat](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/cellformat/) özelliğini kullanın
4. [Writeln](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/insertimage/) ve diğerleri gibi uygun **DocumentBuilder** yöntemlerini kullanarak hücre içeriğini ekleyin
5. Satır tamamlanana kadar 2-4. adımları tekrarlayın
6. Geçerli satırı sonlandırmak için [EndRow](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/endrow/)'i arayın
7. İsteğe bağlı olarak satır biçimlendirmesini belirtmek için [RowFormat](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/rowformat/) özelliğini kullanın
8. Tablo tamamlanana kadar 2-7 arasındaki adımları tekrarlayın
9. Tabloyu oluşturmayı tamamlamak için [EndTable](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/endtable/)'i arayın

{{% alert color="primary" %}}

Önemli ayrıntılar:

* [StartTable](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/starttable/) aynı zamanda bir hücrenin içinde de çağrılabilir; bu durumda hücre içinde iç içe bir tablonun oluşturulmasını başlatır.
* [InsertCell](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/insertcell/)'i çağırdıktan sonra yeni bir hücre oluşturulur ve [DocumentBuilder](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/) sınıfının diğer yöntemlerini kullanarak eklediğiniz içerik mevcut hücreye eklenecektir. Aynı satırda yeni bir hücre oluşturmak için **InsertCell**'i tekrar çağırın.
* **InsertCell**, [EndRow](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/endrow/)'den hemen sonra ve bir satırın sonunda çağrılırsa tablo yeni bir satırda devam eder.
* Tabloyu sonlandırmak için kullanılan [EndTable](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/endtable/) yöntemi, **EndRow** çağrıldıktan sonra yalnızca bir kez çağrılmalıdır. **EndTable**'in çağrılması, imleci geçerli hücreden tablonun hemen sonraki konumuna taşır.

{{% /alert %}}

Tablo oluşturma süreci aşağıdaki resimde açıkça görülebilir:

![creating-table-process](/words/net/create-a-table/creating-table-process.jpg)

Aşağıdaki kod örneği, varsayılan biçimlendirmeyle **DocumentBuilder** kullanarak basit bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "create-simple-table.cs" >}}

Aşağıdaki kod örneği, DocumentBuilder kullanılarak biçimlendirilmiş bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "formatted-table.cs" >}}

Aşağıdaki kod örneği, DocumentBuilder kullanılarak iç içe tablonun nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "nested-table.cs" >}}

## DOM (Document Object Model) aracılığıyla Tablo Oluşturma

Belirli bir konuma yeni bir [Table](https://reference.aspose.com/words/tr/net/aspose.words.tables/table/) düğümü ekleyerek tabloları doğrudan DOM'e ekleyebilirsiniz.

Tablo düğümü oluşturulduktan hemen sonra tablonun tamamen boş olacağını, yani henüz satır ve hücre içermediğini lütfen unutmayın. Bir tabloya satır ve hücre eklemek için uygun [Row](https://reference.aspose.com/words/tr/net/aspose.words.tables/row/) ve [Cell](https://reference.aspose.com/words/tr/net/aspose.words.tables/cell/) alt düğümlerini DOM'e ekleyin.

{{% alert color="primary" %}}

Bu tablo oluşturma yöntemi, **DocumentBuilder** kullanılırken kullanılan tablo varsayılanlarının aynısını kullanır.

{{% /alert %}}

Aşağıdaki kod örneği, uygun alt düğümleri belge ağacına ekleyerek sıfırdan yeni bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-directly.cs" >}}

## HTML'den Tablo Oluşturma

Aspose.Words, [InsertHtml](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/inserthtml/) yöntemini kullanarak bir HTML kaynağından bir belgeye içerik eklenmesini destekler. Giriş, tam bir HTML sayfası veya yalnızca kısmi bir pasaj olabilir.

Kullanıcılar **InsertHtml** yöntemini kullanarak `<table>`, `<tr>`, `<td>` gibi tablo etiketleri aracılığıyla belgeye tablo ekleyebilirler.

Aşağıdaki kod örneği, HTML etiketlerini içeren bir dizeden belgeye tablonun nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-from-html.cs" >}}

## Mevcut Bir Tablonun Kopyasını Ekleme

Çoğu zaman bir belgede zaten var olan bir tabloyu temel alarak bir tablo oluşturmanız gerekir. Tüm biçimlendirmeyi korurken bir tabloyu çoğaltmanın en kolay yolu, [Clone](https://reference.aspose.com/words/tr/net/aspose.words/node/clone/) yöntemini kullanarak Tablo düğümünü klonlamaktır.

Aynı teknik, mevcut bir satırın veya hücrenin kopyalarını bir tabloya eklemek için kullanılabilir.

Aşağıdaki kod örneği, düğüm oluşturucuları kullanılarak bir tablonun nasıl çoğaltılacağını gösterir:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-complete-table.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx)'ten indirebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, bir tablonun son satırının nasıl kopyalanacağını ve tabloya nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-last-row.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx)'ten indirebilirsiniz.

{{% /alert %}}

Veri kaynağınızdaki her kayıtla dinamik olarak büyüyen bir belgede tablolar oluşturmayı düşünüyorsanız yukarıdaki yöntem önerilmez. Bunun yerine Mail merge'in bölgelerle birlikte kullanılmasıyla istenilen çıktı daha kolay elde edilir. Bu teknik hakkında daha fazla bilgiyi [Bölgelerle Mail Merge](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions) bölümünde bulabilirsiniz.

## Tablo Oluşturmanın Yollarını Karşılaştırın

Aspose.Words, bir belgede yeni tablolar oluşturmak için çeşitli yöntemler sağlar. Her yöntemin kendine özgü avantajları ve dezavantajları vardır, bu nedenle hangisinin kullanılacağının seçimi genellikle özel duruma bağlıdır.

Tablo oluşturmanın bu yollarına daha yakından bakalım ve bunların artılarını ve eksilerini karşılaştıralım:

|  Yöntem | Avantajları |  Dezavantajları |
|  :-  |  :-  |  :-  |
| `DocumentBuilder` aracılığıyla | Tabloları ve diğer belge içeriğini eklemenin standart yöntemi | Aynı oluşturucu örneğiyle aynı anda birçok tablo çeşidi oluşturmak bazen zor olabilir |
| DOM aracılığıyla |  **DocumentBuilder** kullanmadan düğümleri doğrudan DOM'e oluşturup ekleyen çevreleyen kodla daha iyi uyum sağlar | Tablo "boş" olarak oluşturulmuştur: çoğu işlemi gerçekleştirmeden önce, eksik alt düğümleri oluşturmak için [EnsureMinimum](https://reference.aspose.com/words/tr/net/aspose.words.tables/table/ensureminimum/)'i çağırmanız gerekir |
| HTML'den | `<table>`, `<tr>`, `<td>` gibi etiketleri kullanarak HTML kaynağından yeni bir tablo oluşturabilir | Mümkün olan tüm Microsoft Word tablo formatları HTML'ye uygulanamaz |
| Mevcut bir tabloyu klonlama | Tüm satır ve hücre biçimlendirmesini korurken mevcut bir tablonun bir kopyasını oluşturabilirsiniz | Tablo kullanıma hazır olmadan önce uygun alt düğümlerin kaldırılması gerekir |
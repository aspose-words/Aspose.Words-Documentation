---
title: Giriş ve Tablo Oluşturma
second_title: Python via .NET için Aspose.Words
articleTitle: Giriş ve Tablo Oluşturma
linktitle: Giriş ve Tablo Oluşturma
description: "Python'i kullanarak bir belgede tablolar oluşturun ve yönetin."
type: docs
weight: 10
url: /tr/python-net/create-a-table/
---

Aspose.Words, kullanıcıların bir belgede sıfırdan tablolar oluşturmasına olanak tanır ve bunu yapmak için birkaç farklı yöntem sunar. Bu makale, her yöntemi kullanarak belgenize biçimlendirilmiş tabloları nasıl ekleyeceğinize ilişkin ayrıntıların yanı sıra makalenin sonunda her yöntemin karşılaştırmasını sunar.

## Varsayılan Tablo Stilleri

Yeni oluşturulan tabloya Microsoft Word'te kullanılanlara benzer varsayılan değerler verilir:

| Tablo Özelliği | Aspose.Words'te varsayılan |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| `Border Color` |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

Bir tablo, sıkı bir şekilde konumlandırılmışsa satır içi olabilir veya sayfada herhangi bir yere konumlandırılabiliyorsa kayan olabilir. Varsayılan olarak Aspose.Words her zaman satır içi tablolar oluşturur.

{{% /alert %}}

## DocumentBuilder ile Tablo Oluşturma

Aspose.Words'te kullanıcılar [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)'yi kullanarak bir belgede tablo oluşturabilirler. Tablo oluşturmanın temel algoritması aşağıdaki gibidir:

1. Tabloyu [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/) ile başlatın
2. [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/)'i kullanarak tabloya bir hücre ekleyin; bu, otomatik olarak yeni bir satır başlatır
3. İsteğe bağlı olarak hücre biçimlendirmesini belirtmek için [CellFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) özelliğini kullanın
4. [Writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/#str), [InsertImage](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/#str) ve diğerleri gibi uygun **DocumentBuilder** yöntemlerini kullanarak hücre içeriğini ekleyin
5. Satır tamamlanana kadar 2-4. adımları tekrarlayın
6. Geçerli satırı sonlandırmak için [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/)'i arayın
7. İsteğe bağlı olarak satır biçimlendirmesini belirtmek için [RowFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) özelliğini kullanın
8. Tablo tamamlanana kadar 2-7 arasındaki adımları tekrarlayın
9. Tabloyu oluşturmayı tamamlamak için [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/)'i arayın

{{% alert color="primary" %}}

Önemli ayrıntılar:

- [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/) bir hücrenin içinde de çağrılabilir, bu durumda hücre içinde iç içe geçmiş bir tablonun oluşturulmasını başlatır.
- [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/)'i çağırdıktan sonra yeni bir hücre oluşturulur ve [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) sınıfının diğer yöntemlerini kullanarak eklediğiniz içerik mevcut hücreye eklenecektir. Aynı satırda yeni bir hücre oluşturmak için **InsertCell**'i tekrar çağırın.
- **InsertCell**, [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/)'den hemen sonra ve bir satırın sonunda çağrılırsa tablo yeni bir satırda devam eder.
- Tabloyu sonlandıracak [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/) yöntemi, **EndRow** çağrıldıktan sonra yalnızca bir kez çağrılmalıdır. **EndTable**'in çağrılması, imleci geçerli hücreden tablonun hemen sonraki konumuna taşır.

{{% /alert %}}

Tablo oluşturma süreci aşağıdaki resimde açıkça görülebilir:

<img src="/words/python-net/create-a-table/creating-table-process.jpg" alt="tablo oluşturma süreci" style="zoom:50%;" />

Aşağıdaki kod örneği, varsayılan biçimlendirmeyle **DocumentBuilder** kullanarak basit bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "create-simple-table.py" >}}

Aşağıdaki kod örneği, DocumentBuilder kullanılarak biçimlendirilmiş bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "formatted-table.py" >}}

Aşağıdaki kod örneği, DocumentBuilder kullanılarak iç içe tablonun nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "nested-table.py" >}}

## DOM (Document Object Model) aracılığıyla Tablo Oluşturma

Belirli bir konuma yeni bir [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) düğümü ekleyerek tabloları doğrudan DOM'e ekleyebilirsiniz.

Tablo düğümü oluşturulduktan hemen sonra tablonun tamamen boş olacağını, yani henüz satır ve hücre içermediğini lütfen unutmayın. Bir tabloya satır ve hücre eklemek için uygun [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) ve [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) alt düğümlerini DOM'e ekleyin.

{{% alert color="primary" %}}

Bu tablo oluşturma yöntemi, **DocumentBuilder** kullanılırken kullanılan tablo varsayılanlarının aynısını kullanır.

{{% /alert %}}

Aşağıdaki kod örneği, uygun alt düğümleri belge ağacına ekleyerek sıfırdan yeni bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-directly.py" >}}

##Create HTML'den bir Tablo

Aspose.Words, [InsertHtml](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/) yöntemini kullanarak bir HTML kaynağından bir belgeye içerik eklenmesini destekler. Giriş, tam bir HTML sayfası veya yalnızca kısmi bir pasaj olabilir.

Kullanıcılar **InsertHtml** yöntemini kullanarak `<table>`, `<tr>`, `<td>` gibi tablo etiketleri aracılığıyla belgeye tablo ekleyebilirler.

Aşağıdaki kod örneği, HTML etiketlerini içeren bir dizeden belgeye tablonun nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-from-html.py" >}}

## Mevcut Bir Tablonun Kopyasını Ekleme

Çoğu zaman bir belgede zaten var olan bir tabloyu temel alarak bir tablo oluşturmanız gerekir. Tüm biçimlendirmeyi korurken bir tabloyu çoğaltmanın en kolay yolu, [Clone](https://reference.aspose.com/words/python-net/aspose.words/node/clone/) yöntemini kullanarak Tablo düğümünü klonlamaktır.

Aynı teknik, mevcut bir satırın veya hücrenin kopyalarını bir tabloya eklemek için kullanılabilir.

Aşağıdaki kod örneği, düğüm oluşturucuları kullanılarak bir tablonun nasıl çoğaltılacağını gösterir:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-complete-table.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)'ten indirebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, bir tablonun son satırının nasıl kopyalanacağını ve tabloya nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-last-row.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)'ten indirebilirsiniz.

{{% /alert %}}

Veri kaynağınızdaki her kayıtla dinamik olarak büyüyen bir belgede tablolar oluşturmayı düşünüyorsanız yukarıdaki yöntem önerilmez. Bunun yerine Mail merge'in bölgelerle birlikte kullanılmasıyla istenilen çıktı daha kolay elde edilir.

## Tablo Oluşturmanın Yollarını Karşılaştırın

Aspose.Words, bir belgede yeni tablolar oluşturmak için çeşitli yöntemler sağlar. Her yöntemin kendine özgü avantajları ve dezavantajları vardır, bu nedenle hangisinin kullanılacağının seçimi genellikle özel duruma bağlıdır.

Tablo oluşturmanın bu yollarına daha yakından bakalım ve bunların artılarını ve eksilerini karşılaştıralım:

|  Yöntem | Avantajları |  Dezavantajları |
|  :-  |  :-  |  :-  |
| DocumentBuilder aracılığıyla | Tabloları ve diğer belge içeriğini eklemenin standart yöntemi | Aynı oluşturucu örneğiyle aynı anda birçok tablo çeşidi oluşturmak bazen zor olabilir |
| DOM aracılığıyla |  **DocumentBuilder** kullanmadan düğümleri doğrudan DOM'e oluşturup ekleyen çevreleyen kodla daha iyi uyum sağlar | Tablo "boş" olarak oluşturulmuştur: çoğu işlemi gerçekleştirmeden önce, eksik alt düğümleri oluşturmak için [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words.tables/table/ensure_minimum/)'i çağırmanız gerekir |
| HTML'den | `<table>`, `<tr>`, `<td>` gibi etiketleri kullanarak HTML kaynağından yeni bir tablo oluşturabilir | Mümkün olan tüm Microsoft Word tablo formatları HTML'ye uygulanamaz |
| Mevcut bir tabloyu klonlama | Tüm satır ve hücre biçimlendirmesini korurken mevcut bir tablonun bir kopyasını oluşturabilirsiniz | Tablo kullanıma hazır olmadan önce uygun alt düğümlerin kaldırılması gerekir |
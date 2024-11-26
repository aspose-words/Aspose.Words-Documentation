---
title: C++ içinde bir Tablo Nasıl Oluşturulur
second_title: Aspose.Words için C++
articleTitle: Tablo Oluşturma
linktitle: Tablo Oluşturma
description: "C++ kullanarak tablo oluşturmanın farklı yolları. Belgeniz için C++ içinde tablo oluşturun. C++ içinde bir tablo ekleyin."
type: docs
weight: 20
url: /tr/cpp/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words kullanıcıların bir belgede sıfırdan tablolar oluşturmasına izin verir ve bunu yapmak için birkaç farklı yöntem sağlar. Bu makalede, her yöntemi kullanarak belgenize biçimlendirilmiş tabloların nasıl ekleneceğine ilişkin ayrıntılar ve makalenin sonunda her yöntemin karşılaştırması sunulmaktadır.

## Varsayılan Tablo Stilleri

Yeni oluşturulan tabloya Microsoft Word 'da kullanılanlara benzer varsayılan değerler verilir.:

| Tablo Özelliği | Varsayılan Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | 1/2 puan |
| `Border Color` | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |

{{% alert color="primary" %}}

Tablo, sıkıca yerleştirilmişse satır içi veya sayfanın herhangi bir yerine yerleştirilebiliyorsa kayan olabilir. Varsayılan olarak, Aspose.Words her zaman satır içi tablolar oluşturur.

{{% /alert %}}

## DocumentBuilder ile bir Tablo oluşturun

Aspose.Words'de, kullanıcılar [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)'ı kullanarak bir belgede tablo oluşturabilirler. Bir tablo oluşturmak için temel algoritma aşağıdaki gibidir:

1. Tabloyu [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/) ile başlatın
2. [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) kullanarak tabloya bir hücre ekleyin - bu otomatik olarak yeni bir satır başlatır
3. İsteğe bağlı olarak, hücre biçimlendirmesini belirtmek için [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) özelliğini kullanın
4. [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertimage/) ve diğerleri gibi uygun **DocumentBuilder** yöntemleri kullanarak hücre içeriğini ekleyin
5. Satır tamamlanana kadar 2 -4 adımlarını tekrarlayın
6. Geçerli satırı sonlandırmak için [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) öğesini çağırın
7. İsteğe bağlı olarak, satır biçimlendirmesini belirtmek için [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) özelliğini kullanın
8. Tablo tamamlanana kadar 2 -7 adımlarını tekrarlayın
9. Tabloyu oluşturmayı bitirmek için [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) öğesini çağırın

{{% alert color="primary" %}}

Önemli ayrıntılar:

- [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/) bir hücrenin içinde de çağrılabilir, bu durumda hücre içinde iç içe geçmiş bir tablo oluşturulmasını başlatır.
- [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) çağrıldıktan sonra yeni bir hücre oluşturulur ve [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) sınıfının diğer yöntemlerini kullanarak eklediğiniz tüm içerikler geçerli hücreye eklenir. Aynı satırda yeni bir hücre oluşturmak için **InsertCell** öğesini tekrar arayın.
- [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) 'dan hemen sonra ve bir satırın sonunda **InsertCell** çağrılırsa, tablo yeni bir satırda devam eder.
- Tabloyu sonlandırmak için kullanılan [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) yöntemi, **EndRow** çağrıldıktan sonra yalnızca bir kez çağrılmalıdır. **EndTable** çağrısı, imleci geçerli hücreden tablodan hemen sonraki konuma taşır.

{{% /alert %}}

Bir tablo oluşturma işlemi aşağıdaki resimde açıkça görülebilir:

![creating-table-process](creating-table-process.jpg)

Aşağıdaki kod örneği, varsayılan biçimlendirmeyle **DocumentBuilder** kullanarak basit bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "create-simple-table.h" >}}

Aşağıdaki kod örneği, DocumentBuilder kullanarak biçimlendirilmiş bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "formatted-table.h" >}}

Aşağıdaki kod örneği, DocumentBuilder kullanarak iç içe geçmiş bir tablonun nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "nested-table.h" >}}

## DOM ile bir Tablo Oluşturun (Belge Nesne Modeli)

Belirli bir konuma yeni bir [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) düğümü ekleyerek tabloları doğrudan DOM'e ekleyebilirsiniz.

Tablo düğümü oluşturulduktan hemen sonra tablonun kendisinin tamamen boş olacağını, yani henüz satır ve hücre içermediğini lütfen unutmayın. Bir tabloya satır ve hücre eklemek için uygun [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) ve [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) alt düğümlerini DOM'ye ekleyin.

{{% alert color="primary" %}}

Bu tablo oluşturma yöntemi, **DocumentBuilder** kullanılırken olduğu gibi aynı tablo varsayılanlarını kullanır.

{{% /alert %}}

Aşağıdaki kod örneği, belge ağacına uygun alt düğümleri ekleyerek sıfırdan yeni bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-directly.h" >}}

## HTML 'dan bir Tablo oluşturun

Aspose.Words, [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/) yöntemini kullanarak bir HTML kaynağından bir belgeye içerik eklemeyi destekler. Girdi tam bir HTML sayfa veya yalnızca kısmi bir snippet olabilir.

**InsertHtml** yöntemini kullanarak, kullanıcılar aşağıdaki gibi tablo etiketleri aracılığıyla belgeye tablo ekleyebilir `<table>`, `<tr>`, `<td>`.

Aşağıdaki kod örneği, HTML etiketlerini içeren bir dizeden belgeye nasıl tablo ekleneceğini gösterir:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-from-html.h" >}}

## Varolan Bir Tablonun Kopyasını Ekleme

Bir belgede zaten var olan bir tabloyu temel alan bir tablo oluşturmanız gereken zamanlar vardır. Tüm biçimlendirmeyi korurken bir tabloyu çoğaltmanın en kolay yolu, Tablo düğümünü [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/) yöntemini kullanarak klonlamaktır.

Aynı teknik, varolan bir satırın veya hücrenin kopyalarını bir tabloya eklemek için de kullanılabilir.

Aşağıdaki kod örneği, düğüm oluşturucularını kullanarak bir tablonun nasıl çoğaltılacağını gösterir:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-complete-table.h" >}}

Aşağıdaki kod örneği, bir tablonun son satırının nasıl kopyalanacağını ve tabloya nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-last-row.h" >}}

Veri kaynağınızdaki her kayıtla dinamik olarak büyüyen bir belgede tablolar oluşturmaya çalışıyorsanız, yukarıdaki yöntem önerilmez. Bunun yerine, bölgelerle Mail merge kullanılarak istenen çıktı daha kolay elde edilir. Bu teknik hakkında daha fazla bilgiyi [Mail Merge bölgelerle](/words/cpp/types-of-mail-merge-operations/) bölüm.

## Tablo Oluşturmanın Yollarını Karşılaştırın

Aspose.Words bir belgede yeni tablolar oluşturmak için çeşitli yöntemler sağlar. Her yöntemin kendine özgü avantajları ve dezavantajları vardır, bu nedenle hangisinin kullanılacağı seçimi genellikle belirli duruma bağlıdır.

Tablo oluşturmanın bu yollarına daha yakından bakalım ve artılarını ve eksilerini karşılaştıralım:

| Yöntem | Avantajlar | Dezavantajlar |
| :- | :- | :- |
| `DocumentBuilder` | Tablo ve diğer belge içeriği eklemek için standart yöntem | Bazen aynı oluşturucu örneğiyle aynı anda birçok tablo çeşidi oluşturmak zordur |
| Üzerinden DOM | Bir **DocumentBuilder** kullanmadan düğümleri doğrudan DOM 'e oluşturan ve ekleyen çevreleyen kodla daha iyi uyum sağlar | Tablo "boş" olarak oluşturulur: çoğu işlemi gerçekleştirmeden önce, eksik alt düğümleri oluşturmak için [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words.tables/table/ensureminimum/) öğesini çağırmanız gerekir |
| Başlangıç HTML | Aşağıdaki gibi etiketleri kullanarak HTML kaynağından yeni bir tablo oluşturabilir `<table>`, `<tr>`, `<td>` | Tüm olası Microsoft Word tablo biçimleri HTML'e uygulanamaz |
| Varolan bir tabloyu klonlama | Tüm satır ve hücre biçimlendirmesini korurken mevcut bir tablonun kopyasını oluşturabilirsiniz | Tablo kullanıma hazır olmadan önce uygun alt düğümler kaldırılmalıdır |

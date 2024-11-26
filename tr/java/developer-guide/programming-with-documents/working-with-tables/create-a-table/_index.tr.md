---
title: Java 'da Bir Tablo Nasıl Oluşturulur?
second_title: Aspose.Words için Java
articleTitle: Bir Tablo Oluşturun
linktitle: Bir Tablo Oluşturun
description: "Belgenizde tablolar oluşturmak için farklı yollar Java kullanarak."
type: docs
weight: 20
url: /tr/java/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words kullanıcıların bir belge içinde sıfırdan tablolar oluşturmasına olanak tanır ve bunu yapmak için birçok farklı yöntem sağlar. Bu makale her bir yöntem kullanarak belgenize biçimlendirilmiş tablolar ekleme hakkında ayrıntılar sunar ve makalenin sonunda her yöntemi karşılaştırır.

## Varsayılan Tablo stilleri

Yeni oluşturulan tabloya, Microsoft Word'ta kullanılanlara benzer varsayılan değerler verilir:

| Tablo Özelliği | Varsayılan Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | `1/2 pt` |
| Sınır Rengi | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |
{{% alert color="primary" %}}

Bir tablo sıkıca yerleştirilmişse veya sayfadaki herhangi bir yerde yerleştirilebileceğinde iç içe bir tablo olabilir. Varsayılan olarak, Aspose.Words her zaman satır içi tablolar oluşturur.

{{% /alert %}}

## DocumentBuilder ile Tablo Oluşturun

B Aspose.Words, kullanıcılar bir belge içinde bir tablo oluşturmak için [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) kullanabilir. Bir tablo oluşturmak için temel algoritma şöyledir:

1. Masayı [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) ile başlatın
2. Tabloya bir hücre eklemek için [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) – bu otomatik olarak yeni bir satır başlatır
3. İsteğe bağlı olarak, hücre biçimlendirmesi belirtmek için [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) özelliğini kullanın
4. Cell içeriğini uygun **DocumentBuilder** yöntemleriyle yerleştirin örneğin [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) ve diğerleri
5. 2-4 adımları tekrarlayın, satır tamamlanana kadar
6. Çağrı [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) geçerli satırı sonlandırmak için
7. İsteğe bağlı olarak, " [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat)" özelliğini satır biçimlendirmesini belirtmek için kullanın
8. 2-7 adım tekrarlayın, tablo tamamlanana kadar
9. Tablo oluşturmayı tamamlamak için [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) çağırın

{{% alert color="primary" %}}

Önemli ayrıntılar:

- [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) bir hücre içinde de çağrılabilir, bu durumda hücre içindeki iç içe geçmiş bir tablo oluşturmaya başlar.
- Bir sonraki çağrı [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), yeni bir hücre oluşturulur ve diğer yöntemlerle sınıf [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)'nin içeriğini eklediğinizde geçerli hücrenin içine eklenecektir. Aynı satırda yeni bir hücre oluşturmak için **InsertCell**'a tekrar çağrıda bulunun.
- Eğer **InsertCell**, [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)'den hemen sonra çağrılır ve satırın sonunda yapılırsa, tablo yeni bir satırda devam eder.
- Tablonun [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) yöntemi sadece **EndRow**'un çağrılmasından sonra bir kez çağrılmalıdır. Sürükleme **EndTable** geçerli hücreden tablonun hemen ardındaki konuma imleci taşır.

{{% /alert %}}

Bir tablo oluşturma işlemi aşağıdaki resimde açıkça görülmektedir:

![creating-table-process](creating-table-process.jpg)

Aşağıdaki kod örneği, varsayılan biçimlendirmeyi kullanarak bir tablo oluşturmak için **DocumentBuilder** nasıl kullanılacağını göstermektedir:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

Aşağıdaki kod örneği, DocumentBuilder kullanarak bir biçimlendirilmiş tablo oluşturmayı gösterir

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

Aşağıdaki kod örneği, bir alt tablonun nasıl ekleneceğini gösterir. DocumentBuilder kullanarak:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## Bir tablo oluşturun DOM (Document Object Model) aracılığıyla

Sizi belirli bir konuma yeni bir [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) düğümü ekleyerek doğrudan DOM'e tablolar ekleyebilirsiniz.

Lütfen unutmayın ki tablo düğüm oluşturma hemen ardından, tablo tamamen boş olacaktır, yani henüz satır ve hücreler içermez. Bir tabloya satır ve hücre eklemek için, uygun [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) ve [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) alt düğümleri DOM'e ekleyin.

{{% alert color="primary" %}}

Bu tablo oluşturma yöntemi, **DocumentBuilder** kullanırken olduğu gibi aynı tablo varsayılarını kullanır.

{{% /alert %}}

Aşağıdaki kod örneği, bir belge ağacına uygun alt düğümler ekleyerek sıfırdan yeni bir tablo oluşturmayı gösterir:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## HTML'den Tablo Oluştur

Bir belgeden bir HTML kaynağı kullanılarak içeriği eklemek için [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String)'u kullanan Aspose.Words destekler. Giriş, bir tam HTML sayfası veya sadece kısmi bir parçacıktan oluşabilir.

Bu **InsertHtml** yöntemini kullanarak kullanıcılar tablo etiketleri aracılığıyla belgeye tablo girebilirler. `<table>`, `<tr>`, `<td>`

Aşağıdaki kod örneği, bir belgeye bir HTML etiketi içeren bir dizeden tablo eklemeyi gösterir:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## Mevcut Bir Tablonun Bir Kopiasını Ekle

Bir belgedeki zaten var olan bir tablodan dayalı bir tablo oluşturmanız gerektiğinde sık sık zamanlar vardır. Tablo biçimlendirmesini koruyarak bir tablonun kolayca çoğaltılmasının en kolay yolu, [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) yöntemi kullanılarak Tablo düğümünü kopyalamaktır.

Bu tekniği mevcut bir satır ya da hücrenin kopyalarını bir tabloya eklemek için kullanılabilir.

Aşağıdaki kod örneği düğüm oluşturucular kullanarak bir tabloyu nasıl çoğaltacağınızı göstermektedir:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

Bu örneği gösteren örnek dosyayı [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)'dan indirebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği bir tablonun son satırını nasıl klonlayacağını ve tabloya ekleyeceğini gösterir:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)'dan indirebilirsiniz.

{{% /alert %}}

Verilerinizden gelen her kayıtla birlikte dinamik olarak büyüyen bir belge içinde tablolar oluşturmayı düşünüyorsanız, yukarıdaki yöntem tavsiye edilmez. Bunun yerine, istenilen çıktı daha kolay Mail merge ile bölgelerin kullanılması ile elde edilir. Bu tekniği hakkında daha fazla bilgi [Mail Merge with Regions](/words/java/types-of-mail-merge-operations/)'daki bölümde edinebilirsiniz.

## Tablo Oluşturmanın Yollarını Karşılaştırın

Aspose.Words bir belge içinde yeni tablolar oluşturmak için birkaç yöntem sağlar. Her yöntemin kendi avantajları ve dezavantajları vardır, bu nedenle hangi yöntemi kullanacağına karar vermek genellikle spesifik duruma bağlıdır.

Masaları oluşturmak için bu yöntemlere daha yakından bakalım ve avantajlarını ve dezavantajlarını karşılaştıralım:

| Yöntem | Avantajlar | Dezavantajlar |
| :- | :- | :- |
| Via `DocumentBuilder` | Tablolar ve diğer belge içeriği eklemek için standart yöntem | Aynı anda aynı yapı örneğiyle birçok çeşit tablo oluşturmak zor olabilir |
| Via DOM | Çevreleyen kodun içine doğrudan DOM'e düğüm ekleyerek bir **DocumentBuilder** kullanmadan daha iyi uyum sağlar | Tablo oluşturulur "boş": çoğu işlemi gerçekleştirmeden önce, eksik olan alt düğümleri oluşturmak için [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum)'ı çağırmanız gerekir |
| HTML'den | Can create a new table from HTML source using tags like `<table>`, `<tr>`, `<td>` | Tüm olası Microsoft Word tablo biçimleri HTML'e uygulanamaz |
| Mevcut bir tablonun kopyalanması | Varolan bir tabloya tüm satır ve hücre biçimlendirmesini koruyarak bir kopyasını oluşturabilirsiniz | Masa kullanıma hazır hale gelmeden önce uygun alt düğümler kaldırılmalıdır |

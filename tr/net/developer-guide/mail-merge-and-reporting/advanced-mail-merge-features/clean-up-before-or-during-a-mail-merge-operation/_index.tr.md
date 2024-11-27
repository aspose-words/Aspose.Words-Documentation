---
title: Temizlik Öncesi veya Sırasında Mail Merge
second_title: Aspose.Words için .NET
articleTitle: Mail Merge İşleminden Önce veya Sırasında Temizlik Yapın
linktitle: Mail Merge İşleminden Önce veya Sırasında Temizlik Yapın
type: docs
description: "Mail Merge işlemi gerçekleştirmeden önce birleştirme alanlarını silme veya C# kullanarak Mail Merge işlemi sırasında kullanılmayan bölgeleri kaldırma gibi farklı temizleme ve kaldırma seçenekleri uygulayın."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /tr/net/clean-up-before-or-during-mail-merge/
timestamp: 2024-07-11-08-07-06
---

Aspose.Words, Mail Merge işlemi gerçekleştirmeden önce birleştirme alanlarını silme veya Mail Merge işlemi sırasında kullanılmayan bölgeleri kaldırma gibi farklı temizleme ve kaldırma seçenekleri uygulamanıza olanak tanır. Bu bölümde birleştirilmiş alanların nasıl silineceği ve bir kaldırma seçeneğinin nasıl kurulacağı açıklanacaktır.

## Birleştirilmiş Alanları Sil

Bir başkası tarafından oluşturulan uzun bir şablon kullanırken, Mail Merge işlemi gerçekleştirmeden önce bu şablonda zaten var olan tüm birleştirme alanlarını silmek isteyebilirsiniz. Mail Merge işlemi gerçekleştirmeden bir belgedeki tüm birleştirme alanlarını silmek istiyorsanız [DeleteFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/deletefields/) yöntemini kullanabilirsiniz. Bu yöntem, [CleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/cleanupoptions/) özelliğinin herhangi bir kaldırma seçeneğinden etkilenmez ve bunu yürütmek, yalnızca birleştirilmiş alanları kaldırır, içeren alanları veya boş paragrafları kaldırmaz.

Aşağıdaki kod örneği, bir Mail Merge işlemi yürütmeden şablonunuzdaki tüm birleştirme alanlarının nasıl silineceğini gösterir:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "delete-fields.cs" >}}

## Bir `Removing` Seçeneği Ayarlama

Aspose.Words Mail Merge işlemi sırasında birleştirilmemiş alanları, bölgeleri ve paragrafları şablondan kaldırma seçeneklerini kullanarak kaldırmanızı sağlar.

Kaldırma seçeneğini ayarlamak için [MailMergeCleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergecleanupoptions/) numaralandırmasıyla birlikte **CleanupOptions** özelliğini kullanın. Aşağıdaki seçenekleri seçerek hangi öğeleri kaldırmak istediğinizi belirtin (birden fazla öğeyi birleştirebilirsiniz):

* Boş paragrafları kaldır
* Kullanılmayan bölgeleri kaldırın
* Kullanılmayan alanları kaldır
* İçeren alanları kaldır
* Statik alanları kaldır
* Boş tablo satırlarını kaldır

Birleştirme alanını aşağıdaki koşullardan birinde birleştirilmemiş olarak düşünebilirsiniz:

1. Veri kaynağındaki birleştirme alanında sütun veya eşleme alanı yoksa.
2. Veri kaynağındaki birleştirme alanı bir eşleme alanı içeriyorsa ancak veriler boşsa.

{{% alert color="primary" %}}

Verileri ayrı veri kaynakları kullanarak birleştiriyorsanız, bu kaldırma seçenekleri yalnızca Mail Merge yürütme yönteminin son çağrısıyla etkinleştirilir.

{{% /alert %}}

### Boş Paragrafları Kaldır

Mail Merge işlemi tüm birleştirme alanlarını birleştirilmemiş olarak kaldırdığında, yalnızca birleştirme alanlarını içeren bir paragraf boş olacaktır. Bu boş paragraflar istenmeyen alan ekleyebilir ve oluşturulan raporun nasıl görüneceğini değiştirebilir. Mail Merge işlemi sırasında paragraf içeren iki durumla karşılaşabilirsiniz:

1. Mail Merge alanı boş verilerle birleştirilecektir.
2. Birleştirme alanı kullanılmaz ve kaldırılır.

Her iki durumda da **RemoveEmptyParagraphs** seçeneği boş paragrafları belgeden otomatik olarak kaldıracaktır. Ayrıca, paragrafın geri kalanı boşsa `TableStart` ve TableEnd birleştirme alanlarını kaldıracaktır.

Aşağıdaki kod örneği, boş paragrafların nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-empty-paragraphs.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20fields.docx).

{{% /alert %}}

### Kullanılmayan Bölgeleri Kaldırın

Aspose.Words'in önceki sürümlerinde, Mail Merge işlemi sırasında boş Mail Merge bölgeler belgeden otomatik olarak kaldırıldı. Aspose'un en son sürümü ile.sözcükler, varsayılan olarak Mail Merge işleminden sonra boş Mail Merge bölgeler kalır. Ancak, Mail Merge işlemi sırasında kullanılmayan Mail Merge bölgeleri kaldırmak için **RemoveUnusedRegions** seçeneğini kullanabilirsiniz. Örneğin, bir belgeyi, belgede kullanılmayan bölgelere götüren veri tabloları içermeyen boş bir veri kaynağıyla birleştirebilirsiniz.

Aşağıdaki kod örneği, kullanılmayan birleştirme bölgelerinin nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-unmerged-regions.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

**Not**

### Kullanılmayan Alanları Kaldır

Aspose.Words **RemoveUnusedFields** bayrağını **CleanupOptions**'e atayarak kullanılmayan Mail Merge alanları kaldırmanıza izin verir. Bu seçenek, veri kaynağında karşılık gelen verilere sahip olmayan birleştirme alanlarını kaldıracaktır.

Aşağıdaki kod örneği, Mail Merge işlemi sırasında kullanılmayan birleştirme alanlarının bir belgeden otomatik olarak nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-unused-fields.cs" >}}

### İçeren Alanları Kaldırma

Birleştirme alanı, **IF** alanı veya formül alanı gibi başka bir alanda bulunabilir. Birleştirme alanı birleştirildiğinde veya belgeden kaldırıldığında bu dış alanı kaldırın.

Aşağıdaki kod örneği, belgeden birleştirme alanları içeren alanların nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-containing-fields.cs" >}}

**Not**

### Boş Tablo Satırlarını Kaldır

Aspose.Words, **RemoveEmptyTableRows** bayrağını **CleanupOptions**'e atayarak boş tablo satırlarını kaldırmanıza olanak tanır. Bu seçenek, boş birleştirme alanları içeren tablo satırlarını kaldıracaktır.

Aşağıdaki kod örneği, bir belgeden Mail Merge bölge içeren boş tablo satırlarının nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-empty-table-rows.cs" >}}

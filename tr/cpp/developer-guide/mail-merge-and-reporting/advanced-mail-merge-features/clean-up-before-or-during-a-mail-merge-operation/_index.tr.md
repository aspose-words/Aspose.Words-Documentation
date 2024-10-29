---
title: Önce veya Sırasında Temizleyin Mail Merge Operasyon
second_title: Aspose.Words için C++
articleTitle: Önce veya Sırasında Temizleyin Mail Merge Operasyon
linktitle: Önce veya Sırasında Temizleyin Mail Merge Operasyon
type: docs
description: "Birleştirme alanlarını gerçekleştirmeden önce silme gibi farklı temizleme ve kaldırma seçenekleri uygulayın. mail merge bir işlem sırasında kullanılmayan bölgelerin çalıştırılması veya çıkarılması mail merge operasyon."
keywords: "cleanup options mail merge c#"
weight: 10
url: /tr/cpp/clean-up-before-or-during-mail-merge/
---

Aspose.Words birleştirme alanlarını silme gibi farklı temizleme ve kaldırma seçeneklerini uygulamadan önce uygulamanıza olanak tanır. mail merge bir işlem sırasında kullanılmayan bölgelerin çalıştırılması veya çıkarılması mail merge operasyon. Bu bölümde birleştirilmiş alanların nasıl silineceği ve bir kaldırma seçeneğinin nasıl kurulacağı açıklanacaktır.

## Birleştirilmiş Alanları Sil

Başka biri tarafından oluşturulan uzun bir şablon kullanırken, bir şablon oluşturmadan önce o şablonda zaten var olan tüm birleştirme alanlarını silmek isteyebilirsiniz. mail merge operasyon. Kullanabilirsiniz [DeleteFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/deletefields/) bir belgedeki tüm birleştirme alanlarını yürütmeden silmek istiyorsanız yöntem mail merge operasyon. Bu yöntem, kaldırma seçeneklerinden etkilenmez. [CleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_cleanupoptions/) özellik ve yürütme, yalnızca birleştirilmiş alanları kaldırır, içeren alanları veya boş paragrafları kaldırmaz.

Aşağıdaki kod örneği, tüm birleştirme alanlarını şablonunuzdan bir birleştirme yürütmeden nasıl sileceğinizi gösterir. mail merge operasyon:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-DeleteFields.h" >}}

## Bir tane ayarla `Removing` Seçenek

Aspose.Words birleştirilmemiş alanları, bölgeleri ve paragrafları bir şablondan kaldırmanızı sağlar. mail merge kaldırma seçeneklerini kullanarak işlem.

Kullan... **CleanupOptions** mülkiyet ile birlikte [MailMergeCleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergecleanupoptions/) kaldırma seçeneğini ayarlamak için numaralandırma. Aşağıdaki seçenekleri seçerek hangi öğeleri kaldırmak istediğinizi belirtin (birden fazla öğeyi birleştirebilirsiniz):

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

Verileri ayrı veri kaynakları kullanarak birleştiriyorsanız, bu kaldırma seçenekleri yalnızca son çağrıyla etkinleştirilir. mail merge yürütme yöntemi.

{{% /alert %}}

### Boş Paragrafları Kaldır

Yalnızca birleştirme alanlarını içeren bir paragraf boş olduğunda mail merge işlem, tüm birleştirme alanlarını birleştirilmemiş olarak kaldırır. Bu boş paragraflar istenmeyen alan ekleyebilir ve oluşturulan raporun nasıl görüneceğini değiştirebilir. Bir paragraf sırasında iki durumla karşılaşabilirsiniz mail merge operasyon:

1. Bu mail merge alan boş verilerle birleştirilecektir.
2. Birleştirme alanı kullanılmaz ve kaldırılır.

Her iki durumda da **RemoveEmptyParagraphs** seçenek, boş paragrafları belgeden otomatik olarak kaldıracaktır. Ayrıca, kaldıracaktır `TableStart` ve TableEnd paragrafın geri kalanı boşsa alanları birleştirin.

Aşağıdaki kod örneği, boş paragrafların nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Mail Merge and Reporting-Working with CleanupOptions-RemoveEmptyParagraphs.h" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Kullanılmayan Alanları Kaldır

Aspose.Words kullanılmayan herhangi bir şeyi kaldırmanıza izin verir mail merge alanları atayarak **RemoveUnusedFields** için işaretle **CleanupOptions**. Bu seçenek, veri kaynağında karşılık gelen verilere sahip olmayan birleştirme alanlarını kaldıracaktır.

Aşağıdaki kod örneği, kullanılmayan birleştirme alanlarının bir belgeden otomatik olarak nasıl kaldırılacağını gösterir. mail merge operasyon:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveUnusedFields.cpp" >}}

### İçeren Alanları Kaldırma

Birleştirme alanı, aşağıdaki gibi başka bir alanda bulunabilir: **IF** alan veya formül alanı. Birleştirme alanı birleştirildiğinde veya belgeden kaldırıldığında bu dış alanı kaldırın.

Aşağıdaki kod örneği, belgeden birleştirme alanları içeren alanların nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveContainingFields.cpp" >}}

**Not**

### Boş Tablo Satırlarını Kaldır

Aspose.Words boş tablo satırlarını atayarak kaldırmanızı sağlar **RemoveEmptyTableRows** için işaretle **CleanupOptions**. Bu seçenek, boş birleştirme alanları içeren tablo satırlarını kaldıracaktır.

Aşağıdaki kod örneği, aşağıdakileri içeren boş tablo satırlarının nasıl kaldırılacağını gösterir mail merge bir belgedeki bölgeler:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveEmptyTableRows.cpp" >}}

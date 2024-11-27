---
title: C# içindeki Gelişmiş Mail Merge Özellikler
second_title: Aspose.Words için .NET
articleTitle: Gelişmiş Mail Merge Özellikler
linktitle: Gelişmiş Mail Merge Özellikler
type: docs
description: ".NET için Aspose.Words, C# kullanarak daha fazla Mail Merge özelleştirme gerçekleştirmenize olanak tanıyan bazı gelişmiş Mail Merge özellikler sağlar. Örneğin, şablon yapısı hakkında bilgi edinme, kurallar belirleme, Mail Merge işleminden sonra temizleme ve diğerleri."
keywords: "use advanced Mail Merge features c#"
weight: 50
url: /tr/net/advanced-mail-merge-features/
timestamp: 2024-07-11-08-07-06
---

Aspose.Words, Mail Merge işleminin basit Mail Merge veya Mail Merge bölgelerle daha fazla özelleştirilmesini gerçekleştirmenize olanak tanıyan bazı ek Mail Merge özellikleri ve yöntemleri sağlar.

Gelişmiş Mail Merge özellikleri, bir Mail Merge işlemi gerçekleştirmeden önce şablon yapısı hakkında bilgi edinmeyi, bir Mail Merge işlemi için kurallar belirlemeyi ve bir Mail Merge işlemi sırasında temizlemeyi içerir, ancak bunlarla sınırlı değildir. Bu makale, gelişmiş özelliklerin nasıl kullanılacağını göstermek için yalnızca birkaç özelliği ve örneği kapsayacaktır.

## Mail Merge İşlemleri için Kurallar Belirleyin

Şablonunuza kurallar eklemek, iş akışı sürecini daha etkili ve esnek hale getirmenize olanak tanır. Mail Merge kurallarını kullanarak, hızlı bir şekilde değiştirilebilen içerik ayarlayabilir ve birden çok belge oluşturma gereksinimini önleyebilirsiniz.

Aspose.Words, Mail Merge işlemini gerçekleştirdiğinizde ve bilgileri birleştirmeyi denetlediğinizde çalışan kurallara göre Mail Merge'i özelleştirmenize olanak tanır. Örneğin, tüm müşterilerinize göndermek üzere bir e-posta veya mektup oluşturduğunuzda. Mektubun, veri kaynağınızın belirli alanlarındaki farklı değerlere dayalı olarak çeşitli veriler içerebilmesi için bir kural ayarlayabilirsiniz.

Uygulayabileceğiniz bazı Mail Merge kurallara bir göz atın.

### Geçerli Belgedeki Veri Kayıtlarını Birleştirmek için Bir Sonraki alanı uygulama

Yeni bir birleştirilmiş belge başlatmak yerine, bir sonraki veri kaydını geçerli sonuç birleştirilmiş belgeye birleştirmek için [Next](https://reference.aspose.com/words/net/aspose.words.fields/fieldnext/) alanını uygulayabilirsiniz. Tek bir belgede birden çok kaydı görüntülemek için kullanılır.

### İki İfadeyi Karşılaştırmak için NextIf ve SkipIf Alanlarını Uygulayın

İki ifadeyi ([right](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/rightexpression/) ve [left](https://reference.aspose.com/words/net/aspose.words.fields/fieldnextif/leftexpression/) ifadeleri) [operator](https://reference.aspose.com/words/net/aspose.words.fields/fieldskipif/comparisonoperator/) ile karşılaştırmak istiyorsanız [NextIf](https://reference.aspose.com/words/net/aspose.words.fields/fieldnextif/) alanını veya [SkipIf](https://reference.aspose.com/words/net/aspose.words.fields/fieldskipif/) alanını kullanabilirsiniz.

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words sonraki veri kaydını geçerli birleştirme belgesine birleştirir ve şablondaki *NextIf* alanından sonraki tüm birleştirme alanları, geçerli veri kaydı yerine sonraki veri kaydındaki değerlerle değiştirilir. | Aspose.Words bir sonraki veri kaydını yeni bir birleştirme belgesinde birleştirir. |
| `SkipIf` | Aspose.Words geçerli birleştirme belgesini iptal eder, veri kaynağındaki bir sonraki veri kaydına geçer ve yeni bir birleştirme belgesi başlatır. | Aspose.Words geçerli birleştirme belgesine devam edecektir. |

Aşağıdaki kod örneği, iki ifadenin **NextIf** veya **SkipIf** ile nasıl karşılaştırılacağını gösterir:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "field-next.cs" >}}

## Şablon Yapısı Hakkında Bilgi Edinme

Aspose.Words şablonunuzda birçok yöntemle farklı bilgiler toplamanızı sağlar. Örneğin, şablonunuzdaki bazı birleştirme alanlarının adlarını veya bölgeler hiyerarşisini almanız gerekebilir. Şimdi şablonunuzdan bazı özel bilgiler elde etmek için olası varyantları açıklayacağız.

### Alan Adlarını Birleştir

Verileri başkaları tarafından oluşturulan birleştirme alanlarıyla birleştirmek isteyeceğiniz bir senaryoya rastlayabilirsiniz ve bu durumda birleştirme alanlarının tam adlarından emin olamazsınız. Bu nedenle, Mail Merge amacına ulaşmak için önce tüm birleştirme alanlarının adlarını okumanız ve görüntülemeniz gerekir. Aspose.Words [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) yöntemini kullanarak birleştirme alanı adlarından oluşan bir koleksiyon elde etmenizi sağlar.

Aşağıdaki kod örneği, şablondaki tüm birleştirme alanlarının adlarının nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-field-names.cs" >}}

### Birleştirme Bölgeleri Hakkında Bilgi Alın

Şablonunuzun belirtilen birleştirme bölgeleri aracılığıyla nasıl yapılandırıldığını anlamak istediğiniz bir senaryonuz olabilir. Birleştirme bölgeleri hakkında gerekli tüm bilgileri toplamak veya şablonunuzda [GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) yöntemi gibi birleştirme bölgeleri hiyerarşisini elde etmek için bazı yöntemler kullanabilirsiniz. [MailMergeRegionInfo](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/) sınıfının özelliklerini ve yöntemlerini kullanabilirsiniz.Aşağıdaki kod örneği, birleştirme bölgeleri hiyerarşisinin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-regions-hierarchy.cs" >}}

Aşağıdaki kod örneği, şablonunuzun içindeki belirli birleştirme bölgelerinin adlarına göre nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-regions-by-name.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20regions.docx).

{{% /alert %}}

### Eşlenen Alanları Ekle

Aspose.Words veri kaynağınızdaki alanların adlarını ve [MappedDataFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/mappeddatafields/) özelliğini kullanarak şablondaki Mail Merge alanların adlarını otomatik olarak eşlemenizi sağlar. Örneğin, şablonunuzda "Soyadı" adlı bir alan adınız varsa ve veri kaynağınızda "Soyadı" alan adınız veya "Last_Name" veya "LastName" gibi başka bir varyasyon varsa, veri kaynağındaki alan otomatik olarak şu şekilde eşlenir: ilgili eşlenen alan. Birleştirme şablonu birçok veri kaynağıyla birleştirilecekse, eşlenen alanlar veritabanındaki alan adlarıyla aynı fikirde olmak için alanları şablona yeniden girmeyi gereksiz kılar.

Aşağıdaki kod örneği, bir şablondaki birleştirme alanı ile veri kaynağındaki veri alanı farklı adlara sahip olduğunda [Add](https://reference.aspose.com/words/net/aspose.words.mailmerging/mappeddatafieldcollection/add/) yöntemini kullanarak eşlenen bir alanın nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "mapped-data-fields.cs" >}}

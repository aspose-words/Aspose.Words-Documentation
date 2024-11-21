---
title: Gelişmiş Mail Merge İçindeki özellikler C++
second_title: Aspose.Words için C++
articleTitle: Gelişmiş Mail Merge Özellikler
linktitle: Gelişmiş Mail Merge Özellikler
type: docs
description: "Aspose.Words için C++ bazı gelişmiş özellikler sağlar mail merge daha fazla performans göstermenizi sağlayan özellikler mail merge özelleştirme. Örneğin, şablon yapısı hakkında bilgi edinmek, kurallar koymak, bir şablondan sonra temizlik yapmak. mail merge operasyon ve diğerleri."
keywords: "use advanced mail merge features c++"
weight: 50
url: /tr/cpp/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words bazı ek özellikler sağlar mail merge daha fazla özelleştirme yapmanıza izin veren özellikler ve yöntemler mail merge basit bir şekilde işleyin mail merge veya mail merge bölgelerle.

Gelişmiş mail merge özellikler, bir şablon gerçekleştirmeden önce şablon yapısı hakkında bilgi edinmeyi içerir, ancak bunlarla sınırlı değildir. mail merge operasyon, bir kural belirleme mail merge operasyon ve temizlik sırasında mail merge operasyon. Bu makale, gelişmiş özelliklerin nasıl kullanılacağını göstermek için yalnızca birkaç özelliği ve örneği kapsayacaktır.

## İçin Kurallar belirleyin Mail Merge Operasyonlar

Şablonunuza kurallar eklemek, iş akışı sürecini daha etkili ve esnek hale getirmenize olanak tanır. Kullanım mail merge kurallar, hızlı bir şekilde değiştirilebilen içerik ayarlayabilir ve birden fazla belge oluşturma ihtiyacını önleyebilirsiniz.

Aspose.Words özelleştirmenizi sağlar mail merge gerçekleştirdiğinizde çalışan kurallara göre mail merge bilgi birleştirme işlemi ve kontrolü. Örneğin, tüm müşterilerinize göndermek üzere bir e-posta veya mektup oluşturduğunuzda. Mektubun, veri kaynağınızın belirli alanlarındaki farklı değerlere dayalı olarak çeşitli veriler içerebilmesi için bir kural ayarlayabilirsiniz.

Bazılarına bir göz atın mail merge uygulayabileceğiniz kurallar.

### Geçerli Belgedeki Veri Kayıtlarını Birleştirmek için Bir Sonraki alanı uygulama

Sen uygulayabilirsiniz [Next](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnext/) yeni bir birleştirilmiş belge başlatmak yerine, bir sonraki veri kaydını geçerli birleştirilmiş belgeyle birleştirmek için kullanılan alan. Tek bir belgede birden çok kaydı görüntülemek için kullanılır.

### Uygulamak NextIf ve SkipIf İki ifadeyi karşılaştırmak için alanlar

İkisini de kullanabilirsiniz [NextIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnextif) alan veya [SkipIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/) iki ifadeyi karşılaştırmak istiyorsanız alan ([right]https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/) and [left](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/get_leftexpression/) ifadeler) bazıları tarafından [operator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/get_comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words bir sonraki veri kaydını geçerli birleştirme belgesine ve şablondaki sonraki tüm birleştirme alanlarına birleştirir *NextIf* alan, geçerli veri kaydı yerine bir sonraki veri kaydındaki değerlerle değiştirilir. | Aspose.Words bir sonraki veri kaydını yeni bir birleştirme belgesinde birleştirir. |
| `SkipIf` | Aspose.Words geçerli birleştirme belgesini iptal eder, veri kaynağındaki bir sonraki veri kaydına geçer ve yeni bir birleştirme belgesi başlatır. | Aspose.Words geçerli birleştirme belgesine devam eder. |

## Şablon Yapısı Hakkında Bilgi Edinme

Aspose.Words şablonunuzda birçok yöntemle farklı bilgiler toplamanıza olanak tanır. Örneğin, şablonunuzdaki bazı birleştirme alanlarının adlarını veya bölgeler hiyerarşisini almanız gerekebilir. Şimdi şablonunuzdan bazı özel bilgiler elde etmek için olası varyantları açıklayacağız.

### Alan Adlarını Birleştir

Verileri başkaları tarafından oluşturulan birleştirme alanlarıyla birleştirmek isteyeceğiniz bir senaryoya rastlayabilirsiniz ve bu durumda birleştirme alanlarının tam adlarından emin olamazsınız. Yani, elde etmek için mail merge amaç, öncelikle tüm birleştirme alanlarının adlarını okumanız ve görüntülemeniz gerekir. Aspose.Words birleştirme alanı adlarını kullanarak bir koleksiyon elde etmenizi sağlar [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/) yöntem.

Aşağıdaki kod örneği, şablondaki tüm birleştirme alanlarının adlarının nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### Birleştirme Bölgeleri Hakkında Bilgi Alın

Şablonunuzun belirtilen birleştirme bölgeleri aracılığıyla nasıl yapılandırıldığını anlamak istediğiniz bir senaryonuz olabilir. Birleştirme bölgeleri hakkında gerekli tüm bilgileri toplamak veya şablonunuzdaki birleştirme bölgeleri hiyerarşisini elde etmek için bazı yöntemler kullanabilirsiniz, örneğin [GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/) yöntem. 'Nin özelliklerini ve yöntemlerini kullanabilirsiniz. [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) sınıf.Aşağıdaki kod örneği, birleştirme bölgeleri hiyerarşisinin nasıl alınacağını gösterir:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Eşlenen Alanları Ekle

Aspose.Words veri kaynağınızdaki alanların adlarını ve veri kaynağınızdaki alanların adlarını otomatik olarak eşlemenizi sağlar. mail merge şablondaki alanları kullanarak [MappedDataFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_mappeddatafields/) mülk. Örneğin, şablonunuzda "Soyadı" adlı bir alan adınız varsa ve veri kaynağınızda "Soyadı" alan adınız veya "Last_Name" veya "" gibi başka bir varyasyonunuz varsaLastName", ardından veri kaynağındaki alan otomatik olarak ilgili eşlenen alana eşlenir. Birleştirme şablonu birçok veri kaynağıyla birleştirilecekse, eşlenen alanlar veritabanındaki alan adlarıyla aynı fikirde olmak için alanları şablona yeniden girmeyi gereksiz kılar.

Aşağıdaki kod örneği, kullanarak eşlenen bir alanın nasıl ekleneceğini gösterir. [Add](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mappeddatafieldcollection/add/) şablondaki birleştirme alanı ile veri kaynağındaki veri alanı farklı adlara sahip olduğunda yöntem:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}

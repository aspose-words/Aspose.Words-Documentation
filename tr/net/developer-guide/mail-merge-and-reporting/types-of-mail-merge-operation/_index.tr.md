---
title: C# içindeki Mail Merge İşlem Türleri
second_title: Aspose.Words için .NET
articleTitle: Mail Merge İşlem Türleri
linktitle: Mail Merge İşlem Türleri
type: docs
description: "İki farklı türde Mail Merge işlem gerçekleştirin: C# kullanan bölgelerle basit Mail Merge ve Mail Merge. Simple Mail Merge, her veri kaynağı kaydı başına belgenin tamamını tekrarlar, oysa Mail Merge with regions, kayıt başına yalnızca belirlenmiş bölgeleri tekrarlar."
keywords: "how to execute Mail Merge c#"
weight: 20
url: /tr/net/types-of-mail-merge-operations/
timestamp: 2024-07-11-08-07-06
---

Mail Merge 'in ana fikri, şablonunuza ve veri kaynağınızdan getirilen verilere dayalı olarak otomatik olarak bir belge veya birden çok belge oluşturmaktır. Aspose.Words iki farklı türde Mail Merge işlemi gerçekleştirmenizi sağlar: bölgelerle basit Mail Merge ve Mail Merge.

Simple Mail Merge kullanmanın en yaygın örneği, farklı istemciler için adlarını belgenin başına ekleyerek bir belge göndermek istediğiniz zamandır. Bunu yapmak için şablonunuzda *First Name* ve *Last Name* gibi birleştirme alanları oluşturmanız ve ardından bunları veri kaynağınızdaki verilerle doldurmanız gerekir. Mail Merge 'yi bölgelerle kullanmanın en yaygın örneği, her sipariş içindeki tüm öğelerin listesini içeren belirli siparişleri içeren bir belge göndermek istediğiniz zamandır. Bunu yapmak için, öğeler için gerekli tüm verilerle doldurmak için şablonunuzun içinde birleştirme bölgeleri oluşturmanız gerekir – her sipariş için kendi bölgeniz.

Her iki birleştirme işlemi arasındaki temel fark, basit Mail Merge 'ın (bölgeler olmadan) her veri kaynağı kaydı başına belgenin tamamını yinelemesi, bölgelerle Mail Merge ise kayıt başına yalnızca belirlenmiş bölgeleri yinelemesidir. Basit bir Mail Merge işlemi, tek bölgenin tüm belge olduğu bölgelerle belirli bir birleştirme durumu olarak düşünebilirsiniz.

{{% alert color="primary" %}}

[MailMerge](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/) sınıfı bir Mail Merge işlevini temsil eder. Özellikleriyle, bir Mail Merge işlemi gerçekleştirmeden önce gerekli davranışı özelleştirebilirsiniz.

{{% /alert %}}

## Basit Mail Merge İşlem {#simple-mail-merge-operation}

Şablonunuzun içindeki Mail Merge alanlarını veri kaynağınızdan gerekli verilerle doldurmak için basit bir Mail Merge kullanılır (tek tablo gösterimi). Yani Microsoft Word 'daki klasik Mail Merge 'e benzer.

Şablonunuza bir veya daha fazla birleştirme alanı ekleyebilir ve ardından basit Mail Merge işlemini gerçekleştirebilirsiniz. Şablonunuzda herhangi bir birleştirme bölgesi yoksa bunu kullanmanız önerilir.

Bu türü kullanmanın temel sınırlaması, veri kaynağındaki her kayıt için tüm belge içeriğinin tekrarlanacağıdır.

### Basit Bir Mail Merge İşlemi Nasıl Yürütülür {#how-to-execute-a-simple-mail-merge-operation}

Şablonunuz hazır olduğunda, basit Mail Merge işlemini gerçekleştirmeye başlayabilirsiniz. Aspose.Words, veri kaynağı olarak çeşitli veri nesnelerini kabul eden farklı [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/#execute/) kullanarak basit bir Mail Merge işlemi gerçekleştirmenize olanak tanır.

Aşağıdaki kod örneği, [Execute](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/) yönteminden birini kullanarak basit bir Mail Merge işleminin nasıl yürütüleceğini gösterir:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "execute-simple-mail-merge.cs" >}}

Basit mail merge çalıştırmadan önce belge arasındaki farkı fark edebilirsiniz:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template" style="width:300px"/>

Ve basit çalıştırdıktan sonra mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge" style="width:300px"/>

### Birden Çok Birleştirilmiş Belge Nasıl Oluşturulur

Aspose.Words'da, standart Mail Merge işlemi yalnızca tek bir belgeyi veri kaynağınızdaki içerikle doldurur. Bu nedenle, çıktı olarak birden çok birleştirilmiş belge oluşturmak için Mail Merge işlemini birden çok kez yürütmeniz gerekecektir.

Aşağıdaki kod örneği, Mail Merge işlemi sırasında birden çok birleştirilmiş belgenin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "produce-multiple-documents.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

## Mail Merge bölgelerle

Verilerinizle kolayca doldurabileceğiniz özel alanlara sahip olmak için şablonunuzda farklı bölgeler oluşturabilirsiniz. Şablonunuzda bu bölgeleri belirterek belgelerinizin dinamik olarak büyümesini sağlamak için tablolar, yinelenen veriler içeren satırlar eklemek istiyorsanız bölgelerle Mail Merge öğesini kullanın.

Bölgeleri birleştirmenin yanı sıra iç içe geçmiş (alt) bölgeler oluşturabilirsiniz. Bu türü kullanmanın temel avantajı, bir belgenin içindeki parçaları dinamik olarak artırmaktır. Bir sonraki makalede daha fazla ayrıntıya bakın "Bölgelerle İç içe Mail Merge".

{{% alert color="primary" %}}

Bir Mail Merge bölge hakkında bilgi [MailMergeRegionInfo](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/) sınıfı kullanılarak elde edilebilir.

{{% /alert %}}

### Bölgelerle Mail Merge Nasıl Yürütülür

Mail Merge bölgesi, bir belgenin içinde başlangıç noktası ve bitiş noktası olan belirli bir bölümdür. Her iki nokta da *"TableStart:XXX"* ve *"TableEnd:XXX"* belirli adlara sahip Mail Merge alanlar olarak temsil edilir. Mail Merge bölgesinde bulunan tüm içerikler, veri kaynağındaki her kayıt için otomatik olarak tekrarlanacaktır.

Aspose.Words, veri kaynağı olarak çeşitli veri nesnelerini kabul eden farklı [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/) kullanan bölgelerle Mail Merge yürütmenize olanak tanır.

İlk adım olarak, daha sonra `ExecuteWithRegions` yöntemine bir giriş parametresi olarak iletmek için `DataSet` 'i oluşturmamız gerekiyor:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "create-data-set.cs" >}}

Aşağıdaki kod örneği, [ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/) yöntemini kullanarak bölgelerle Mail Merge'in nasıl çalıştırılacağını gösterir:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "mail-merge-with-regions.cs" >}}

Bölgelerle Mail Merge çalıştırmadan önce belge arasındaki farkı fark edebilirsiniz:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

Ve Mail Merge 'ı bölgelerle çalıştırdıktan sonra:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

### Mail Merge 'ın Bölgelerle Sınırlamaları

Bölgelerle Mail Merge gerçekleştirirken göz önünde bulundurmanız gereken bazı önemli noktalar vardır:

* Başlangıç noktasının *TableStart:Orders* ve bitiş noktasının *TableEnd:Orders* her ikisinin de aynı satırda veya hücrede olması gerekir. Örneğin, bir tablonun hücresinde birleştirme bölgesi başlatırsanız, birleştirme bölgesini ilk hücreyle aynı satırda sonlandırmanız gerekir.
* Birleştirme alanı adı, DataTable öğenizdeki sütunun adıyla eşleşmelidir. Eşlenen alanları belirtmediğiniz sürece, bölgeleri olan Mail Merge, sütunun adından farklı bir ada sahip herhangi bir birleştirme alanı için başarılı olmaz.

Bu kurallardan biri ihlal edilirse, beklenmeyen sonuçlar alırsınız veya bir istisna atılabilir.

{{% alert color="primary" %}}

Mail Merge bölgeleri kullanmazsanız, Microsoft Word mail merge 'ye benzer ve veri kaynağındaki her kayıt için tüm belge içeriği tekrarlanır.

{{% /alert %}}


---
title: Mail Merge bölgelerle birlikte C++
second_title: Aspose.Words için C++
articleTitle: Mail Merge bölgelerle
linktitle: Mail Merge bölgelerle
type: docs
description: "Verilerinizle kolayca doldurabileceğiniz özel alanlara sahip olmak için şablonunuzda farklı bölgeler oluşturun. Kullan... Mail Merge tablo eklemek istiyorsanız, belgelerinizin dinamik olarak büyümesini sağlamak için yinelenen verilere sahip satırlar ekleyin."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /tr/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

Verilerinizle kolayca doldurabileceğiniz özel alanlara sahip olmak için şablonunuzda farklı bölgeler oluşturabilirsiniz. Kullan... Mail Merge tablo eklemek istiyorsanız, şablonunuzda bu bölgeleri belirterek belgelerinizin dinamik olarak büyümesini sağlamak için yinelenen verilere sahip satırlar ekleyin.

Bölgeleri birleştirmenin yanı sıra iç içe geçmiş (alt) bölgeler oluşturabilirsiniz. Bu türü kullanmanın temel avantajı, bir belgenin içindeki parçaları dinamik olarak artırmaktır. Bir sonraki makalede daha fazla ayrıntıya bakın "İç içe geçmiş Mail Merge bölgelerle".

{{% alert color="primary" %}}

A hakkında bilgi Mail Merge bölge kullanılarak elde edilebilir [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) sınıf.

{{% /alert %}}

## Nasıl Yürütülür Mail Merge bölgelerle

A Mail Merge bölge, belgenin içinde başlangıç noktası ve bitiş noktası olan belirli bir bölümdür. Her iki nokta da şu şekilde temsil edilir Mail Merge belirli adlara sahip alanlar *"TableStart:XXX"* ve *"TableEnd:XXX"*. A'da yer alan tüm içerik Mail Merge veri kaynağındaki her kayıt için bölge otomatik olarak tekrarlanacaktır.

Aspose.Words yürütmenizi sağlar Mail Merge birini kullanan bölgelerle [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/) kabul eden yöntemler [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) özel veri kaynağı.

Aşağıdaki kod örneği nasıl yürütüleceğini gösterir Mail Merge sqlite veritabanından bölgelerle [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

Yürütmeden önce belge arasındaki farkı fark edebilirsiniz Mail Merge bölgeler ile:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

Ve yürüttükten sonra Mail Merge bölgelerle:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## Sınırlamaları Mail Merge bölgelerle

Bir işlemi gerçekleştirirken göz önünde bulundurmanız gereken bazı önemli noktalar vardır. Mail Merge bölgelerle:

* Başlangıç noktası *TableStart:Orders* ve son nokta *TableEnd:Orders* her ikisinin de aynı satırda veya hücrede olması gerekir. Örneğin, bir tablonun hücresinde birleştirme bölgesi başlatırsanız, birleştirme bölgesini ilk hücreyle aynı satırda sonlandırmanız gerekir.
  Birleştirme alanı adı, alanınızdaki sütun adıyla eşleşmelidir. DataTable. Eşlenen alanları belirtmediğiniz sürece, Mail Merge bölgeler ile sütun adı dışında bir adı olan herhangi bir birleştirme alanı için başarılı olmaz.
* Aspose.Words için C++ sadece destekler [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) ve [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) tabanlı veri kaynakları. Aksine .NET ve Java, C++ genel kabul görmüş bir çapraz platforma sahip değildir API veritabanlarıyla çalışmak için (örneğin ADODB, ODBC, veya JDBC). Belirli bir veri kaynağıyla çalışmak için şunları uygulamanız gerekir [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) veya [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) arayüz.

Bu kurallardan biri ihlal edilirse, beklenmeyen sonuçlar alırsınız veya bir istisna atılabilir.

{{% alert color="primary" %}}

Eğer kullanmazsan Mail Merge bölgeler, o zaman benzer olacaktır Microsoft Word Mail Merge ve tüm belge içeriği, veri kaynağındaki her kayıt için tekrarlanacaktır.

{{% /alert %}}


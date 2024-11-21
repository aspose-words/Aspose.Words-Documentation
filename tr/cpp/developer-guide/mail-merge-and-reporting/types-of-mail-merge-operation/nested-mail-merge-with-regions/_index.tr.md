---
title: İç içe geçmiş Mail Merge bölgelerle birlikte C++
second_title: Aspose.Words için C++
articleTitle: İç içe geçmiş Mail Merge bölgelerle
linktitle: İç içe geçmiş Mail Merge bölgelerle
type: docs
description: "Gerçekleştirmek mail merge kullanarak iç içe geçmiş bölgelerle çalışma C++. İç içe birleştirme, veri kaynağınızdaki hiyerarşik verileri birleştirme şablonunuzda birleştirmenizi sağlayan bir özelliktir."
keywords: "mail merge with nested regions c++"
weight: 30
url: /tr/cpp/nested-mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

Bazı senaryolarda, iç içe kullanmanız gerekebilir mail merge bölgelerle. İç içe birleştirme, belgenizi kolayca doldurmak için veri kaynağınızdaki hiyerarşik verileri birleştirme şablonunuzda birleştirmenize olanak tanıyan bir özelliktir. Temel olarak, hiyerarşik veriler bir dizi veri öğesi olarak temsil edilir ve hiyerarşik ilişkiler, veri öğelerinin birbirleriyle nasıl ilişkili olduğunu açıklar (bir veri öğesi diğerinin üst öğesidir).

Aspose.Words gerçekleştirmenizi sağlar mail merge iç içe geçmiş bölgelerle çalışma. Ağaç benzeri bir yapı halinde düzenlenmiş bir veri kaynağınız varsa ve bir veri kaynağı yürütmek istiyorsanız bu özelliği kullanabilirsiniz. mail merge bir şablonu hiyerarşik verilerle doldurma işlemi.

{{% alert color="primary" %}}

İç içe geçmiş mail merge yalnızca bir işlem gerçekleştirirken geçerlidir mail merge bölgelerle.

{{% /alert %}}

## İç içe Geçmiş nedir Mail Merge

Bu mail merge iki veya daha fazlasına sahipseniz bölge iç içe olarak adlandırılır mail merge birinin diğerinin içinde hiyerarşik bir biçimde olduğu bölgeler. Her bölgenin bir tablodan veri içerdiğini unutmayın.

İç içe geçmiş en yaygın örnek mail merge birçok veri tablosunu birbirine bağlamanız ve bilgileri bir şablonda sunmanız gereken birkaç öğe içeren bir sıradır.

Aşağıdaki resim, iç içe geçmiş iki bölgeyi göstermektedir. *Order* mail merge bölge, bölgenin ebeveynidir. *Item* mail merge bölge.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Nasıl işlenir Mail Merge iç içe Geçmiş Bölgelerle

Bir şablonda birleştirilecek veriler, başta ilişkisel veritabanları olmak üzere çeşitli kaynaklardan gelebilir veya XML belgeler. Örneğimizde, bir [SQLite](https://www.sqlite.org/index.html) verilerimizi depolamak ve özel veri kaynağı uygulamasıyla yüklemek için veritabanı.

Aşağıdaki resim, aşağıdaki verilerden elde edilen verilerin nasıl olduğunu göstermektedir: *Order* iç içe geçmiş birleştirme bölgelerine iletilen tablo, iç içe geçmiş birleştirme bölgelerine bağlanacaktır. *Item* tablo, birleştirme işlemi sırasında üretilen çıktının yanı sıra.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Çıktı belgesinden de görebileceğiniz gibi, her sipariş **Order** tablo, tüm siparişin ilgili öğeleriyle birleştirme şablonuna eklenir. **Item** masa. Bir sonraki sipariş, tüm siparişler ve öğeler listelenene kadar öğeleriyle birlikte eklenecektir. Yuvalama sırası mail merge şablondaki bölgeler, veri kaynağındaki tablolar arasındaki veri ilişkileriyle eşleşmelidir.

## Özel bir veri kaynağından veri ilişkileri oluşturma

Uygulamak [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) özel veri kaynağınızın üst-alt yapısında ilişkiler oluşturmak için arabirim. Kullan... [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) geçerli bir üst kaydın ilgili alt verilerini döndürme yöntemi.

Aşağıdaki kod örneği, iç içe geçmiş kullanarak bir faturanın nasıl oluşturulacağını gösterir mail merge gelen bölgelerle [SQLite](https://www.sqlite.org/index.html) veritabanı ile [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

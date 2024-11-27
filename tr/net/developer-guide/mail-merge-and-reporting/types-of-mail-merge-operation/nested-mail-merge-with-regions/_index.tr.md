---
title: C# içindeki Bölgelerle iç içe Mail Merge
second_title: Aspose.Words için .NET
articleTitle: Bölgelerle İç içe Mail Merge
linktitle: Bölgelerle İç içe Mail Merge
type: docs
description: "C# kullanarak iç içe geçmiş bölgelerle Mail Merge işlemi gerçekleştirin. İç içe birleştirme, veri kaynağınızdaki hiyerarşik verileri birleştirme şablonunuzda birleştirmenizi sağlayan bir özelliktir."
keywords: "mail merge with nested regions c#"
weight: 10
url: /tr/net/nested-mail-merge-with-regions/
timestamp: 2024-07-11-08-07-06
---

Bazı senaryolarda, bölgelerle iç içe Mail Merge kullanmanız gerekebilir. İç içe birleştirme, belgenizi kolayca doldurmak için veri kaynağınızdaki hiyerarşik verileri birleştirme şablonunuzda birleştirmenizi sağlayan bir özelliktir. Temel olarak, hiyerarşik veriler bir dizi veri öğesi olarak temsil edilir ve hiyerarşik ilişkiler, veri öğelerinin birbirleriyle nasıl ilişkili olduğunu açıklar (bir veri öğesi diğerinin üst öğesidir).

Aspose.Words iç içe geçmiş bölgelerle bir Mail Merge işlemi gerçekleştirmenizi sağlar. Ağaç benzeri bir yapı halinde düzenlenmiş bir veri kaynağınız varsa ve bir şablonu hiyerarşik verilerle doldurmak için Mail Merge işlemi yürütmek istiyorsanız bu özelliği kullanabilirsiniz.

{{% alert color="primary" %}}

İç içe Mail Merge yalnızca bölgelerle bir Mail Merge gerçekleştirirken geçerlidir.

{{% /alert %}}

## İç içe Mail Merge nedir

Birinin hiyerarşik bir biçimde diğerinin içinde olduğu iki veya daha fazla Mail Merge bölgeniz varsa Mail Merge bölgeye iç içe denir. Her bölgenin bir tablodan veri içerdiğini unutmayın.

İç içe geçmiş Mail Merge 'ın en yaygın örneği, birden çok veri tablosunu bağlamanız ve bilgileri bir şablonda sunmanız gereken birden çok öğe içeren bir sıradır.

Aşağıdaki resim, *Order* Mail Merge bölgesinin *Item* Mail Merge bölgesinin üst öğesi olduğu iç içe geçmiş iki bölgeyi göstermektedir.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Mail Merge iç İçe Geçmiş Bölgelerle Nasıl İşlenir

Bir şablonda birleştirilecek veriler, başta ilişkisel veritabanları veya XML belgeler olmak üzere çeşitli kaynaklardan gelebilir. Örneğimizde, verilerimizi depolamak ve doğrudan **DataSet** dosyasına yüklemek için bir XML dosyası kullanacağız.

Aspose.Words **DataSet**'de belirtilen veri ilişkilerini kullanarak Mail Merge'yi iç içe geçmiş bölgelerle işlemenizi sağlar. **DataSet** nesnesi XML yüklendiğinde, bunu başarmak için sağlanan şemayı kullanır veya onu XML 'ün yapısından çıkarır. Bu yapıdan, gerektiğinde tablolar arasında ilişkiler oluşturur.

Aşağıdaki resim, iç içe geçmiş birleştirme bölgelerine geçirilen *Order* tablosundaki verilerin, birleştirme işlemi sırasında oluşturulan çıktının yanı sıra *Item* tablosuna nasıl bağlanacağını göstermektedir.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Çıktı belgesinden görebileceğiniz gibi, **Order** tablosundaki her sipariş, **Item** tablosundaki tüm siparişin ilgili öğeleriyle birleştirme şablonuna eklenir. Bir sonraki sipariş, tüm siparişler ve öğeler listelenene kadar öğeleriyle birlikte eklenecektir. Mail Merge şablondaki bölgelerle iç içe geçme sırası, veri kaynağındaki tablolar arasındaki veri ilişkileriyle eşleşmelidir.

Aşağıdaki kod örneği, bölgelerle iç içe Mail Merge kullanarak nasıl fatura oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "nested-mail-merge.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Orders.xml).

Veri ilişkilerini manuel olarak ayarlama uygulamasını şu adresten kontrol edebilirsiniz: [Aspose.Words Github](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Complex%20examples%20and%20helpers/Nested%20MailMerge%20custom.cs).

{{% /alert %}}

## Bölgelerle İç İçe Mail Merge Veri ilişkileri Nasıl Kurulur

İç içe Mail Merge'ı bölgelerle doğru şekilde yürütmek için üst-alt yapıdaki tüm veri ilişkilerini ayarlamanız gerekir. Bu önemli adımın atlanması, iç içe Mail Merge 'ın bölgelerle yürütülmesinde başarısızlığa neden olabilir.

**ReadXml** yöntemini kullanarak bir XML dosyasından iç içe geçmiş bir Mail Merge için veri alınırken, ilişkiler XML belgesinin yapısına göre otomatik olarak oluşturulur. Ancak, doğru ilişkilerin oluşturulduğundan emin olmanız gerekir.

Mail Merge beklendiği gibi çalışmıyorsa, XML dosyanızı yeniden yapılandırmanız veya DataSet içindeki DataTable nesneler arasında açıkça ilişkiler oluşturmanız gerekebilir.

İlişkili veri tablolarına sahip bir `DataSet`, tablolar arasındaki üst-alt ilişkiyi temsil etmek için **DataRelation** nesnesini kullanır.

Aşağıdaki kod örneği, bir `DataRelation` nesnesini kullanarak bir müşterinin tablosu ile sipariş tablosu arasında bir `DataRelation` öğesinin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "disable-foreign-key-constraints.cs" >}}

## Özel bir veri kaynağından veri ilişkileri oluşturma

Özel veri kaynağınızın üst-alt yapısında ilişkiler oluşturmak için [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/) arabirimini uygulayın. Geçerli bir üst kaydın ilgili alt verilerini döndürmek için [GetChildDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) yöntemini kullanın.

Aşağıdaki örnek, **GetChildDataSource** kullanarak veri ilişkilerinin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "get-child-data-source.cs" >}}

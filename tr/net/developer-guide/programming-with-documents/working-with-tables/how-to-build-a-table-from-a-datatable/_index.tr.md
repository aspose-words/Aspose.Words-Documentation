---
title: C#'de DataTable'ten Tablo Nasıl Oluşturulur
second_title: .NET için Aspose.Words
articleTitle: DataTable'ten Tablo Oluşturma
linktitle: DataTable'ten Tablo Oluşturma
description: "C# kullanarak harici veritabanından belge tablosunu doldurma örneği."
type: docs
weight: 120
url: /tr/net/how-to-build-a-table-from-a-datatable/
---

Genellikle uygulamanız verileri bir veritabanından çeker ve bunu **DataTable** biçiminde saklar. Bu verileri belgenize yeni bir tablo olarak kolayca ekleyebilir ve formatlamayı tablonun tamamına hızlı bir şekilde uygulayabilirsiniz.

{{% alert color="primary" %}}

**DataTable**'ten belge tablosuna veri eklemenin tercih edilen yolunun [Bölgelerle Mail Merge](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions) kullanmak olduğunu unutmayın. Bu makalede sunulan teknik yalnızca verileri birleştirmek için önceden uygun bir şablon oluşturamıyorsanız, diğer bir deyişle her şeyin programlı olarak gerçekleşmesini istiyorsanız önerilir.

{{% /alert %}}

Aspose.Words'i kullanarak bir veritabanından kolayca veri alabilir ve bunu bir tablo olarak saklayabilirsiniz:

1. **Document**'nizde yeni bir **DocumentBuilder** nesnesi oluşturun.
1. **DocumentBuilder**'i kullanarak yeni bir tablo başlatın.
1. **DataTable**'teki her sütunun adını başlık satırı olarak eklemek istiyorsak, her veri sütununu yineleyin ve sütun adlarını tablodaki bir satıra yazın.
1. **DataTable**'deki her **DataRow**'i yineleyin:
   1. **DataRow**'teki her nesneyi yineleyin.
   1. Nesneyi **DocumentBuilder** kullanarak belgeye ekleyin. Kullanılan yöntem, eklenen nesnenin türüne bağlıdır; örneğin metin için **DocumentBuilder.Writeln** ve bir görüntüyü temsil eden bayt dizisi için **DocumentBuilder.InsertImage**.
   1. **DataRow**'in işlenmesinin sonunda, **DocumentBuilder.EndRow** kullanılarak **DocumentBuilder** tarafından oluşturulan satırı da sonlandırın.
1. **DataTable**'teki tüm satırlar işlendikten sonra **DocumentBuilder.EndTable**'yi çağırarak tabloyu bitirin.
1. Son olarak, formatlamayı tüm tabloya otomatik olarak uygulamak için **Table.StyleIdentifier** gibi uygun tablo özelliklerinden birini kullanarak istenen tablo stilini ayarlayabiliriz.

**ImportTableFromDataTable** yöntemi bir **DocumentBuilder** nesnesini, verileri içeren **DataTable**'i ve **DataTable**'deki sütun başlığının tablonun üst kısmına dahil edilip edilmeyeceğini belirten bir bayrağı kabul eder. Bu yöntem, oluşturucunun geçerli konumunu ve biçimlendirmesini kullanarak bu parametrelerden bir tablo oluşturur. `DataTable`'ten veri içe aktarmak ve DocumentBuilder'ı kullanarak bu verileri yeni bir tabloya eklemek için bir yöntem sağlar.

Bu örnekte **DataTable**'teki aşağıdaki veriler kullanılmıştır:

![how-to-build-a-table-from-a-datatable-aspose-words-net](/words/net/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Aşağıdaki kod örneği, yukarıdaki algoritmanın Aspose.Words'te nasıl yürütüleceğini gösterir:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

Yöntem daha sonra **DocumentBuilder**'iniz ve verileriniz kullanılarak kolayca çağrılabilir.

Aşağıdaki kod örneği, verilerin bir `DataTable`'ten nasıl içe aktarılacağını ve belgedeki yeni bir tabloya nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}

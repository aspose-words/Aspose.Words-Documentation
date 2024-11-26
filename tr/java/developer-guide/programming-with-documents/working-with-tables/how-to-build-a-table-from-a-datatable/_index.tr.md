---
title: Bir DataTable Java'den nasıl bir masa inşa edilir?
second_title: Aspose.Words için Java
articleTitle: Bir tablo DataTable inşa et
linktitle: Bir tablo DataTable inşa et
description: "Dış veritabanından belge tablosunu doldurmanın bir örneği Java kullanarak."
type: docs
weight: 130
url: /tr/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

Çok sık, uygulamanız veritabanından veri çekecek ve onu bir **DataTable** biçiminde depolayacak. Bu veriyi belgenize yeni bir tablo olarak kolayca eklemek ve tüm tabloya hızlıca bir biçimlendirme uygulamak isteyebilirsiniz.

{{% alert color="primary" %}}

Not edin ki, bir **DataTable** 'den bir belge tablosuna veri eklemenin tercih edilen yolu [Mail Merge with Regions](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained) kullanmaktır. Bu makalede sunulan teknik yalnızca önceden uygun bir şablon oluşturamıyorsanız verileri birleştirmek için, diğer bir deyişle her şeyin programlı olarak gerçekleşmesini gerektirdiğinde önerilir.

{{% /alert %}}

Aspose.Words kullanarak bir veritabanından verileri kolayca alabilir ve tablo olarak depolayabilirsiniz:

1. Yeni bir [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) nesnesi senin [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)de oluştur.
1. Yeni bir tablo [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)'u kullanarak başlatın.
1. Eğer her bir sütundan gelen adları, **DataTable** olarak adlandırdığımız satırı başlık satırı olarak kullanmak istiyorsak o zaman veri sütunlarında dolaşalım ve tabloya bir satırda sütun adlarını yazalım.
1. Her bir **DataRow**'te **DataTable** ile dolaşın":
   1. Her nesneyi **DataRow** içinde yinele.
   1. Nesneyi [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) kullanarak belgenin içine yerleştirin. Kullanılan yöntem nesnenin eklendiği türüne bağlıdır örneğin) [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln() için metin ve) [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[]) için bir bayt dizisi (bir görüntü temsil eder).
   1. Veri satırı işleme sonunda, [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) tarafından oluşturulan satırın sonunu [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) kullanarak da bitirmelisiniz.
1. Tüm satırlar **DataTable** 'dan işlendikten sonra tablonun tamamlanması için [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)'i çağırın.
1. Son olarak, istenilen tablo stilini uygun bir tablo özelliği kullanarak ayarlayabiliriz örneğin [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) otomatik olarak tüm tabloya biçimlendirme uygulayan.
   Aşağıdaki veriler, bu örnekte **DataTable** olarak kullanılır

![build-a-table-from-a-datatable-aspose-words-java-1](how-to-build-a-table-from-a-datatable-1.png)

Aşağıdaki örnek kod, yukarıdaki algoritmanın Aspose.Words 'da nasıl yürütüleceğini göstermektedir

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

Yöntem daha sonra kolayca **DocumentBuilder** ve veri kullanarak çağrılabilir.

Aşağıdaki kod örneği, bir `DataTable` içindeki verileri nasıl içe aktaracağınızı ve yeni bir tabloya belgeden nasıl ekleyeceğinizi göstermektedir:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

Aşağıdaki resimde gösterilen tablo, yukarıdaki kod çalıştırılarak üretilir.

![build-a-table-from-a-datatable-aspose-words-java-2](how-to-build-a-table-from-a-datatable-2.png)

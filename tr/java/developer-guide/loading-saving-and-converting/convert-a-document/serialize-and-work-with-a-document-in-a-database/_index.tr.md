---
title: Veritabanında Belgeyi Seri Hale Getir ve Çalıştır
second_title: Aspose.Words için Java
articleTitle: Veritabanında Belgeyi Seri Hale Getir ve Çalıştır
linktitle: Veritabanında Belgeyi Seri Hale Getir ve Çalıştır
description: "Bu belgeyi veritabanında çalışmak için bir bayt dizisi haline getirin. Bu belgeyi veritabanına ve veritabanından depolayabilir ve alabilirsiniz Java."
type: docs
weight: 40
url: /tr/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

Bir belge üzerinde çalışırken yapmanız gereken görevlerden biri, bir veritabanına ve geri alma işlemine **Document** nesneyi kaydetmek ve almak olabilir. Örneğin, bu, herhangi bir tür içerik yönetim sistemi uyguladığınızda gerekli olacaktır. Önceki tüm belge sürümleri veritabanı sisteminde depolanmalıdır. Uygulamanın web tabanlı bir hizmet sunduğu durumlarda belgeleri veritabanında depolama yeteneği de son derece kullanışlıdır.

Aspose.Words bir belgeyi sonraki işlem için veritabanında kullanılmak üzere bir bayt dizisi dönüştürme yeteneği sağlar.

## Bir Belgeyi Bayt Dizisine Dönüştürün

Bir belgeyi bir veritabanında depolamak veya bir belgeyi internette iletmek için bunu yapmak genellikle bir bayt dizisi elde etmek için belgenin seri hale getirilmesini gerektirir.

Bir [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) nesnesini Aspose.Words içinde seri hale getirmek için:

1. Bunu bir **MemoryStream** kullanarak kaydetmek için [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) yöntem aşırı yüklemesi **Document** sınıfını kullanın.
1. **ToArray** yöntemini çağırın, bu belgeyi bayt cinsinden temsil eden bir dizi bayt döndürür.

Yukarıdaki adımlar daha sonra bir **Document** nesne içine baytları geri yüklemek için tersine çevrilebilir.

{{% alert color="primary" %}}

Seçilen kaydetme biçimi en yüksek doğruluk elde etmek için kaydedilirken ve yeniden yüklenirken **Document** nesnesine yerleştirirken önemlidir. Bu yüzden, bu nedenle bir seri OOXML dosya biçimlerini kullanmak önerilir.

{{% /alert %}}

Aşağıdaki örnek, bir **Document** nesnesini bayt dizisi elde etmek için nasıl seri hale getirileceğini ve ardından bayt dizisini seri durumdan çıkarmak için tekrar nasıl bir **Document** nesnesi elde edileceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

Bu örnek için şablon dosyasını şu adresten indirebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Bir Veritabanı'nda Bir Belgeyi Sakla, Oku ve Sil

Bu bölüm bir belgeyi veritabanına kaydetmek ve ardından çalışmak için bunu bir `Document` nesnesine yüklemek için nasıl yapılacağını gösterir. Basitlik açısından, dosya adı veritabanından belgeleri depolamak ve almak için kullanılan anahtardır. Veritabanında iki sütun vardır. İlk sütun "FileName" bir dize olarak saklanır ve belgelerin tanımlanmasına kullanılır. İkinci sütun "FileContent" bir `BLOB` nesnesi olarak saklanır ve belge nesnesini bayt formunda depolar.

Aşağıdaki kod örneği bir veritabanına nasıl bağlanılacağını ve komutların nasıl çalıştırılacağını gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

Örnekte, bir Aspose.Words belge depolamak için MySQL veritabanını kullanırız.

{{% /alert %}}

Aşağıdaki kod örneğinde bir belgeyi veritabanına kaydetmek, aynı belgeyi tekrar okumak ve son olarak belge içeren kaydı veritabanından silmek gösterilmiştir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Bir Belgeyi Bir Veritabanına Kaydet

Bir belgeyi bir veritabanında kaydetmek için bu belgeyi, bu makalenin başında açıklandığı gibi bir bayt dizisi haline dönüştürün. Sonra, bu bayt dizisini bir veritabanı alanına kaydedin.

Aşağıdaki kod örneği, belirtilen veritabanına bir belgenin nasıl kaydedileceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Tüm işi yapan bir SQL ifadesi olan commandString belirtin:

- Bir belgeyi veritabanına kaydetmek için, "INSERT INTO" komutu kullanılır ve iki kayıt alanı değerleri - FileName ve FileContent ile birlikte bir tablo belirtilir. Ek parametreleri önlemek için dosya adı **Document** nesnesinden alınır. `FileContent` alan değeri bellek akışından baytlara atanır, bu da depolanan belgeyi içeren ikili gösterimdir.
- Kalan kod satırı, Aspose.Words belgesi veritabanında depolanmak üzere komutu yürütür.

### Bir Veritabanından Bir Belgeyi Geri Alın

Veritabanından bir belge almak için, belge verilerini bir bayt dizisi olarak içeren kayıt seçin. Sonra bayt dizisini kayıttan **MemoryStream** 'a yükleyin ve bir **Document** nesnesi oluşturun ki bu nesne **MemoryStream**'dan belgeyi yükleyecektir.

Aşağıdaki kod örneği, belirtilen veritabanından bir belgeyi almak ve döndürmek için dosya adının anahtar olarak kullanıldığı gösterilmektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

SQL komutu "SELECT * FROM" dosya adına göre uygun kayıtları almak için kullanılır.

{{% /alert %}}

### Bir Veritabanından Bir Dokümanı Sil

Veritabanından bir belgeyi silmek için **Document** nesnesi üzerinde herhangi bir manipülasyona gerek kalmadan uygun SQL komutunu kullanın.

Aşağıdaki kod örneği veritabanından bir belgenin nasıl silineceğini göstermektedir, dosya adı kullanarak kayıtları alır:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}

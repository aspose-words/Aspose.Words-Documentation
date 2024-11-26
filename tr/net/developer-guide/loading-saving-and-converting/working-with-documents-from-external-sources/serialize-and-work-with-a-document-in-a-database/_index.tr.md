---
title: Veritabanındaki Belgeyi Serileştirme
second_title: .NET için Aspose.Words
articleTitle: Veritabanındaki Bir Belgeyi Serileştirme ve Çalışma
linktitle: Veritabanındaki Bir Belgeyi Serileştirme ve Çalışma
description: "C# kullanarak bir veritabanında bu belgeyle çalışmak için bir belgeyi bayt dizisine dönüştürün. Bir belgeyi veritabanına kaydedebilir ve veritabanından alabilirsiniz."
type: docs
weight: 10
url: /tr/net/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-07-09-19-00-42
---

Belgelerle çalışırken yapmanız gerekebilecek görevlerden biri, **Document** nesnelerini veritabanına depolamak ve veritabanından almaktır. Örneğin herhangi bir türde içerik yönetim sistemi uyguluyorsanız bu gerekli olacaktır. Belgelerin önceki tüm sürümleri veritabanı sisteminde saklanmalıdır. Belgeleri veritabanında saklama yeteneği, uygulamanız web tabanlı bir hizmet sağladığında da son derece kullanışlıdır.

Aspose.Words, bir belgeyi veritabanında bu belgeyle daha sonra çalışmak üzere bir bayt dizisine dönüştürme yeteneği sağlar.

## Belgeyi Bayt Dizisine Dönüştürme

Bir belgeyi bir veritabanında saklamak veya bir belgeyi web üzerinden aktarıma hazırlamak için, genellikle bir bayt dizisi elde etmek amacıyla belgenin serileştirilmesi gerekir.

Bir [Document](https://reference.aspose.com/words/tr/net/aspose.words/document/) nesnesini Aspose.Words'de serileştirmek için:

1. **Document** sınıfının [Save](https://reference.aspose.com/words/tr/net/aspose.words/document/save/) yöntemi aşırı yüklemesini kullanarak bunu bir **MemoryStream**'e kaydedin.
1. Belgeyi bayt biçiminde temsil eden bir bayt dizisini döndüren **ToArray** yöntemini çağırın.

Baytları tekrar **Document** nesnesine yüklemek için yukarıdaki adımlar tersine çevrilebilir.

{{% alert color="primary" %}}

Seçilen kaydetme formatı, **Document** nesnesine kaydederken ve yeniden yüklerken en yüksek doğruluğun korunmasını sağlamak açısından önemlidir. Bu nedenle bir dizi OOXML dosya formatının kullanılması önerilmektedir.

{{% /alert %}}

Aşağıdaki örnek, bir bayt dizisi elde etmek için bir **Document** nesnesinin nasıl serileştirileceğini ve ardından tekrar bir **Document** nesnesi elde etmek için bayt dizisinin serileştirilmesinin nasıl yapılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToByte-ConvertDocumentToByte.cs" >}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)'ten indirebilirsiniz.

## Bir Belgeyi Veritabanında Saklayın, Okuyun ve Silin

Bu bölümde bir belgenin veritabanına nasıl kaydedileceği ve daha sonra onunla çalışmak üzere bir `Document` nesnesine nasıl geri yükleneceği gösterilmektedir. Basitlik açısından, dosya adı, belgeleri veritabanından depolamak ve almak için kullanılan anahtardır. Veritabanı iki sütun içerir. İlk sütun "DosyaAdı" bir Dize olarak saklanır ve belgeleri tanımlamak için kullanılır. İkinci sütun "FileContent", belge nesnesini bayt biçiminde saklayan bir `BLOB` nesnesi olarak saklanır.

Aşağıdaki kod örneği, bir veritabanına nasıl bağlantı kurulacağını ve komutların nasıl yürütüleceğini gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenDatabaseConnection.cs" >}}

{{% alert color="primary" %}}

Bu örnekte, bir Aspose.Words belgesini depolamak için Microsoft Access .mdb veritabanını kullanıyoruz.

{{% /alert %}}

Aşağıdaki kod örneği, bir belgenin veritabanına nasıl kaydedileceğini, ardından aynı belgenin yeniden okunacağını ve son olarak belgeyi içeren kaydın veritabanından nasıl silineceğini gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenRetrieveAndDelete.cs" >}}

### Belgeyi Veritabanına Kaydetme

Bir belgeyi veritabanına kaydetmek için, bu makalenin başında açıklandığı gibi bu belgeyi bir bayt dizisine dönüştürün. Daha sonra bu bayt dizisini bir veritabanı alanına kaydedin.

Aşağıdaki kod örneği, bir belgenin belirtilen veritabanına nasıl kaydedileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-StoreToDatabase.cs" >}}

Tüm işi yapan bir SQL ifadesi olan commandString'i belirtin:

- Bir belgeyi veritabanına kaydetmek için "INSERT INTO" komutu kullanılır ve iki kayıt alanının (DosyaAdı ve Dosyaİçeriği) değerleriyle birlikte bir tablo belirtilir. Ek parametrelerden kaçınmak için dosya adı **Document** nesnesinin kendisinden alınır. `FileContent` alan değerine, saklanan belgenin ikili gösterimini içeren bellek akışından baytlar atanır.
- Geriye kalan kod satırı, Aspose.Words belgesini veritabanında saklayan komutu çalıştırır.

### Veritabanından Belge Alma

Veritabanından bir belgeyi almak için, belge verilerini bir bayt dizisi olarak içeren kaydı seçin. Daha sonra bayt dizisini kayıttan **MemoryStream**'e yükleyin ve belgeyi **MemoryStream**'ten yükleyecek bir **Document** nesnesi oluşturun.

Aşağıdaki kod örneği, bu belgeyi getirmek için dosya adını anahtar olarak kullanarak belirtilen veritabanından bir belgenin nasıl alınacağını ve döndürüleceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-ReadFromDatabase.cs" >}}

{{% alert color="primary" %}}

Dosya adına göre uygun kaydı getirmek için "SELECT * FROM" SQL komutu kullanılır.

{{% /alert %}}

### Veritabanından Bir Belgeyi Silme

Veritabanından bir belgeyi silmek için **Document** nesnesinde herhangi bir değişiklik yapmadan uygun SQL komutunu kullanın.

Aşağıdaki kod örneği, kaydı getirmek için dosya adını kullanarak bir belgenin veritabanından nasıl silineceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-DeleteFromDatabase.cs" >}}

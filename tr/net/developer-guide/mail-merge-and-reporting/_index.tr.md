---
title: Mail Merge ve C# 'de Raporlama
second_title: Aspose.Words için .NET
articleTitle: Mail Merge ve Raporlama
linktitle: Mail Merge ve Raporlama
type: docs
description: "Mail Merge, C# kullanarak belgeleri hızlı bir şekilde oluşturmak için popüler bir özelliktir. Aspose.Words for .NET, standart Mail Merge işlevini alır ve bunu birçok adım ileriye taşıyarak raporlar, kataloglar, stoklar ve faturalar gibi daha da karmaşık belgeler oluşturmanıza olanak tanıyan tam teşekküllü bir raporlama çözümüne dönüştürür."
keywords: "how to use Mail Merge c#"
weight: 30
url: /tr/net/mail-merge-and-reporting/
timestamp: 2024-07-11-08-07-06
---

Mail Merge harfler, etiketler ve zarflar gibi belgeleri hızlı ve kolay bir şekilde oluşturmak için popüler bir özelliktir. Aspose.Words, Mail Merge alanlı şablonlardan belge oluşturmanıza olanak sağlar.

Mail Merge alanı, çıktı belgelerine bir veri kaynağı kaydından belirli değerleri eklemek için mail merge şablonuna ekleyebileceğiniz bir alandır. Örneğin, bir e-posta şablonuna bir birleştirme alanı ekleyebilirsiniz, böylece selamlamanın genel bir "Merhaba!". Aspose.Words veritabanı veya dosya gibi harici bir kaynaktan gelen verileri bu alanlara yerleştirir ve biçimlendirir. Ortaya çıkan belge belirtilen klasöre kaydedilir.

Aspose.Words standart Mail Merge işlevselliğini alır ve bunu birçok adım ileriye taşıyarak raporlar, kataloglar, stoklar ve faturalar gibi daha da karmaşık belgeler oluşturmanıza olanak tanıyan tam teşekküllü bir raporlama çözümüne dönüştürür. İşte Aspose.Words raporlama çözümünün birkaç avantajı:

- Standart Mail Merge alanlarını kullanarak Microsoft Word'da raporlar tasarlayın
- Belgede ayrıntılı sipariş satırları gibi büyüyen bölgeleri tanımlayın
- Mail merge sırasında resim ekleme
- Mail Merge olay işleyicilerini kullanarak herhangi bir özel mantığı yürütün, biçimlendirmeyi kontrol edin veya karmaşık içerik ekleyin
- Belgeleri her tür veri kaynağından gelen verilerle doldurun

{{% alert color="primary" %}}

[Aspose.Words.MailMerging](https://reference.aspose.com/words/net/aspose.words.mailmerging/) ad alanı, posta birleştirme ile çalışmak için kullanılır.

{{% /alert %}}

## Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation} 'ın Mekanizması ve Ana Bileşenleri

Aspose.Words, belgeleri çeşitli [supported formats](https://reference.aspose.com/words/net/aspose.words/loadformat/) 'a yükleme olanağı sağlar ve ardından kullanıcıların bir Mail Merge işlemi gerçekleştirmesine izin verir.

Genellikle, yüklenen bir belge birleştirme alanlarını, örneğin DOCX biçimindeki bir belgeyi saklamanıza izin verir. Ancak bu tür alanları saklamayan biçimler vardır, örneğin TXT. Aspose.Words bu tür dosya biçimlerinin yüklenmesini destekliyorsa, birleştirme alanlarını doğrudan belge modeline ekleyebilir, belgeyi uygun bir [supported format](https://reference.aspose.com/words/net/aspose.words/saveformat/) dosyasına kaydedebilir ve Mail Merge işlemini gerçekleştirebilirsiniz.

Mail Merge işlemi, tek tek *merged documents* oluşturmak için *mail merge template* ve *data source* işleminizi birleştirecektir.

## Mail Merge Şablonu nedir {#what-is-a-mail-merge-template}

Birleştirme şablonu kullanarak mail merge işlemi uygulamanın amacı, belge oluşturma işlemini basitleştirmektir.

Birleştirme şablonu oluşturmanın ve tasarlamanın birkaç yolu vardır. Microsoft Word kullanabilirsiniz ve birleştirme şablonunun Microsoft Word şablonu olması gerekmez, yani DOT veya DOTX biçiminde bir belge, DOC veya DOCX biçiminde normal bir belge olabilir. Veri kaynağınızdaki verilerin daha sonra eklenmesini istediğiniz yerlere bu şablona birleştirme alanları adı verilen bazı özel alanlar eklemeniz gerekir. Veya [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) sınıfını kullanarak programlı olarak bir birleştirme şablonu oluşturabilirsiniz.

Birleştirme şablonu, Mail Merge işlemini gerçekleştirdikten sonra tüm çıktı belgelerinde aynı olması gereken ana metni içerir. Şablonunuza birleştirme alanları ekleme olanağı varsa, şablonunuz için herhangi bir biçimi kullanabilirsiniz. Mail Merge işlemi sırasında şablonunuzdaki tüm birleştirme alanları veri kaynağınızdan doldurulur.

## Mail Merge İşlemi için Veri Kaynakları {#data-source-types-for-a-mail-merge-operation}

Aspose.Words Mail Merge çeşitli veri kaynaklarını kabul eder. Bu ikisi de olabilir DataTable, DataView, DataSet, IDataReader, ADO .NET tarafından desteklenen değerler dizisi veya [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/) uygulamalarıyla temsil edilen özel veri kaynakları.

Veri kaynağı, tek tek e-postaları ve belgeleri kişiselleştirmek için Mail Merge işlemi sırasında çekilen tüm bilgileri içerir. Veri kaynakları manuel olarak oluşturulabilir veya mevcut bir veritabanından veya uygulamadan raporlanarak oluşturulabilir. XML biçiminde verileriniz varsa, bunları DataSet biçimiyle yükleyebilir ve birleştirebilirsiniz. Mail Merge işlemi tüm veri kaynağı kayıtlarından geçecek ve bunları belgedeki Mail Merge alanlarına ekleyecektir. Bir LINQ sorgusu, bir XML dosyası veya iş nesneleri de dahil olmak üzere herhangi bir veri kaynağından verileri birleştirmek için [IMailMergeDataSourceRoot](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasourceroot/) gibi bazı mail merge arabirimleri uygulayabilirsiniz.

Aşağıdaki kod örneği, Mail Merge işlemi için veri kaynağı olarak bir veri tablosunun nasıl yükleneceğini gösterir:

{{< gist "aspose-words-gists" "de5e13f5d5bb7d8cb88da900b4f9ed8b" "execute-with-regions-data-table.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Orders.docx).

{{% /alert %}}

## Mail Merge İşleminin Birleştirilmiş Belgeleri {#merged-documents-of-a-mail-merge-operation}

Birleştirilmiş belge, şablonu veri kaynağıyla birleştirdiğinizde Mail Merge işleminin sonucudur. Birleştirilmiş belgedeki tüm birleştirme alanları, veri kaynağınızdaki gerçek verilerle değiştirilir.

Aşağıdaki resimde Mail Merge işlemini gerçekleştirmeden önce birleştirilmiş alanlarla birleştirme şablonunun bir örneği gösterilmektedir.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

Aşağıdaki resim, Mail Merge işleminin gerçekleştirilmesinin bir sonucu olarak birleştirilmiş çıktı belgesinin bir örneğini göstermektedir.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## Ayrıca bakınız

- [Word içindeki Mail Merge şablonlarla çalışma](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)

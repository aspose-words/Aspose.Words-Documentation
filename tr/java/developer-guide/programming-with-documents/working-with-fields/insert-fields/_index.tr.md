---
title: Insert Fields in Java
second_title: Aspose.Words için Java
articleTitle: Insert Fields
linktitle: Insert Fields
description: "Belgenize Java kullanarak farklı alan ekleme yöntemleri."
type: docs
weight: 20
url: /tr/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

Bir belgeye alanlar eklemek için farklı birkaç yol vardır:''

- [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) kullanıyor
– [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) kullanıyor
- kullanmak [Aspose.Words Document Object Model (DOM)](/words/java/aspose-words-document-object-model/)

Bu makale içinde her bir yolu daha detaylı inceleyip bu seçenekleri kullanarak belirli alanları nasıl ekleyeceğimizi analiz edeceğiz.

## Bir Belgeye Alanlar Ekleme kullanarak Belge Oluşturucu

Aspose.Words 'de yeni alanları bir belgenin içine eklemek için [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean) ) yöntemi kullanılır. İlk parametre eklenecek alanın tam alan kodunu alır. İkinci parametre isteğe bağlıdır ve alanı el ile belirtebilme imkanı verir. Bu parametre sağlanmazsa alan otomatik olarak güncellenir. Bu parametreye null veya boş geçerseniz boş değerli bir alan eklenir. Belirli bir alan kodunun sözdizimi hakkında emin değilseniz önce Microsoft Word 'de alanı oluşturup geçiş yaparak alan kodunu görebilirsiniz.

{{% alert color="primary" %}}

Eğer alan kodunuz bir boşluk içeren bir parametre içeriyorsa, bu parantez içinde olmalıdır. Yoksa hem Microsoft Word ve Aspose.Words içindeki alan beklendiği gibi çalışmayabilir çünkü parametre her ikisi tarafından da kesildiği düşünülür.

{{% /alert %}}

Örnek kodun aşağıdaki kısmı, bir belgeye **DocumentBuilder** kullanarak bir birleştirme alanı eklemeyi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

Diğer alanları içeren alanların içine girilmesi için aynı teknik kullanılır.

Aşağıdaki kod örneği, başka bir alanın içinden iç içe geçmiş alanlar eklemek için **DocumentBuilder** kullanmanın nasıl yapılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Bölgeyi Alan Düzeyinde Belirtin

Bir dil tanımlayıcısı bir ülke veya coğrafi bölgede kullanılan bir dilin standart uluslararası sayısal kısaltmasıdır. Aspose.Words ile, bir alan seviyesinde bölgeyi belirtmek için [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) özelliğini kullanarak bölgeyi belirtebilirsiniz, bu özellik alanı alır ya da ayarlar.

Aşağıdaki kod örneği bu seçeneği nasıl kullanacağınızı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Untइप Edilmiş/Boş Alan Ekle

Eğer boş alanlar girmeniz/boş bırakmanız gerekirse {}, tıpkı Microsoft Word'ün izin verdiği gibi, [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) metodunu ve [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) parametresini kullanabilirsiniz. Bir Word belgesine alan eklemek için, "Ctrl+F9" tuş kombinasyonuna basabilirsiniz.

Aşağıdaki kod örneğinde belgeye boş bir alan eklemenin nasıl yapılacağını gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Sıra `COMPARE` Alanını Girin

1 `COMPARE` alanı, iki değeri karşılaştırır ve karşılaştırma true ise sayısal değer 1'i, false ise 0'ı döndürür.

Aşağıdaki kod örneği, DocumentBuilder kullanarak `COMPARE` alanını nasıl ekleyeceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Girdi `IF` Alanı

The `IF` alanı koşullu olarak bağımsız değişkenleri değerlendirmek için kullanılabilir.

Aşağıdaki kod örneği, DocumentBuilder kullanarak `IF` alanı nasıl ekleneceğini göstermektedir

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## フィールドビルダーを使用したドキュメントへのフィールドの挿入

Aspose.Words'deki alanları eklemenin alternatif yolu [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) sınıfıdır. Alan anahtarlarını ve bağımsız değişken değerlerini metin, düğümler veya hatta iç içe geçmiş alanlar olarak belirtmek için pürüzsüz bir arayüz sağlar.

Aşağıdaki kod örneği bir belgeye alan eklemek için **FieldBuilder** kullanmayı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Alanları DOM kullanarak ekleme yapın

Ayrıca çeşitli türde alanları [Aspose.Words Document Object Model (DOM)](/words/java/aspose-words-document-object-model/) kullanarak ekleyebilirsiniz. Bu bölümde, birkaç örneğe göz atacağız.

### Bir Belgeye DOM kullanarak Birleştirme Alanı Ekleme

Word belgesindeki `MERGEFIELD` alanı [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) sınıfı ile temsil edilebilir. Aşağıdaki işlemleri yapmak için **FieldMergeField** sınıfını kullanabilirsiniz:

- birleştirme alanının adını belirtin
- birleştirme alanının biçimini belirtin
- birleştirme alanındaki alan ayırıcı ile alan sonu arasındaki metni belirtin
- birleştirme alanı boş değilse, birleştirme sonrası eklenmesini istenen metni belirtin
- birleştirme alanının boş olmadığı durumlarda ekleyilecek metni belirtin

{{% alert color="primary" %}}

Daha fazla ayrıntı için [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) sınıfına bakın API.

{{% /alert %}}

Aşağıdaki kod örneği bir belgedeki paragrafta bir `MERGE` alanı eklemek için DOM'in nasıl kullanılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Bir Dokümanda DOM kullanarak Mail Merge `ADDRESSBLOCK` alanını ekler

The `ADDRESSBLOCK` alanı bir Word belgesine bir Mail Merge adres bloğu eklemek için kullanılır. Word belgesindeki `ADDRESSBLOCK` alanı [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) sınıfıyla temsil edilebilir. Aşağıdaki işlemleri gerçekleştirmek için **FieldAddressBlock** sınıfını kullanabilirsiniz:

- bu alanda ülkenin/bölgenin adını dahil edip etmemeye karar verin
- alıcının bulunduğu ülke/bölgeye göre adresin biçimlendirilip edilmeyeceğini belirtir, Postcode (Evrensel Posta Birliği 2006) tarafından tanımlanır
- hariç tutulan ülke/bölge adını belirtin
- ad ve adres formatını belirtin
Adresi biçimlendirmek için kullanılan dil kimliğini belirtir

{{% alert color="primary" %}}

Daha fazla ayrıntı için [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) sınıfına bakın API.

{{% /alert %}}

Aşağıdaki kod örneğinde, bir belgedeki bir paragrafta bir Mail Merge `ADDRESSBLOCK` Alanı eklemek için DOM kullanmayı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### DocumentBuilder kullanmadan bir belgeye `ADVANCE` alanı eklemek

The `ADVANCE` alanı bir satır içindeki sonraki metni sola, sağa, yukarıya veya aşağıya yatay olarak doğru kaydırmak için kullanılır. Bir Word belgesindeki `ADVANCE` alanı [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) sınıfıyla temsil edilebilir. Aşağıdaki işlemleri yapmak için **FieldAdvance** sınıfını kullanabilirsiniz:

- belirtin, metin alanının altında bulunan metnin sayfa üst kenarının dikey olarak ne kadar hareket ettirileceğini belirten nokta sayısı
- belirtin alanın ardından gelen metnin sütun, çerçeve veya metin kutusu sol kenarından yatay olarak taşınması gereken nokta sayısı
- aşağıdaki alanı izleyen metni sola, sağa, yukarı veya aşağı taşımak için gereken noktaların sayısını belirtin

{{% alert color="primary" %}}

Daha fazla ayrıntı için [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) sınıfını API'e bakın.

{{% /alert %}}

Aşağıdaki kod örneği, bir belgeye DOM kullanarak bir paragrafta `ADVANCE` alanı eklemeyi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Bir Belgeye `ASK` alanı ekleme, BelgeBuilder kullanmadan

The `ASK` alanı, bir Word belgesindeki bir Yer İşareti için kullanıcıdan metin girmesini istemek için kullanılır. Word belgesindeki `ASK` alanı, [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) sınıfı ile temsil edilebilir. Aşağıdaki işlemleri yapmak için **FieldAsk** sınıfını kullanabilirsiniz:

- imzanın adını belirtir
- varsayılan kullanıcı yanıtını belirtin (isteme penceresinde bulunan başlangıç değeri)
- kullanıcının yanıtını bir Mail Merge işlemi başına bir kez almayı belirtin
- istemi metnini (istemi penceresinin başlığı) belirtin

{{% alert color="primary" %}}

Daha fazla ayrıntı için [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) sınıfına bakın API.

{{% /alert %}}

Aşağıdaki kod örneği bir belgedeki bir paragrafına `ASK` alanı eklemek için DOM kullanmayı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Bir Belge içine bir `AUTHOR` alanı ekleme, Belge oluşturucu kullanmadan

The `AUTHOR` alanı, `Document` özelliklerinden yazarın adını belirtmek için kullanılır. Word belgesindeki `AUTHOR` alanını [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) sınıfı temsil edebilir. Aşağıdaki işlemleri yapmak için **FieldAuthor** sınıfını kullanabilirsiniz:

- belge yazarının adını belirtir

{{% alert color="primary" %}}

Daha detaylı bilgi için [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) sınıfını API görün.

{{% /alert %}}

Aşağıdaki kod örneği bir belgedeki bir paragrafta `AUTHOR` alanını nasıl ekleyeceğinizi gösterir: DOM

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Bir belgeye DocumentBuilder kullanmadan `INCLUDETEXT` alanı ekleme

The `INCLUDETEXT` alanı, alan kodunda belirtilen belge içindeki metni ve grafikleri ekler. Tüm belgeyi veya bir işaretçiye atıfta bulunan bir belgenin parçasını ekleyebilirsiniz. Word belgesindeki bu alan IncluSetext ile temsil edilir. Aşağıdaki işlemleri yapmak için [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) sınıfını kullanabilirsiniz:

- dahil edilen belge için yer imi adı belirtin
- belgenin konumunu belirtin

{{% alert color="primary" %}}

Daha fazla ayrıntı için, [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) sınıfını API'e bakın.

{{% /alert %}}

Aşağıdaki kod örneği bir belgeye bir paragrafta `INCLUDETEXT` alanını eklemek için DOM kullanımını gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Bir belgeye DocumentBuilder kullanmadan `TOA` alanını ekleme

The `TOA` (*Table of Authorities*) alanı bir tablo oluşturur ve ekler. The `TOA` alanı `TA` (*Table of Authority Entry*) alanlarıyla işaretlenmiş girdileri toplar. Microsoft Office Word, **References** sekmesindeki **Yetkililerin Tablosu** grubundaki *Insert Table of Authorities* düğmesine tıkladığınızda `TOA` alanını ekler. Dokümanınızda `TOA` alanına baktığınızda sözdizimi şu gibi görünecektir:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Daha fazla ayrıntı için [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) sınıfı API'e bakın.

{{% /alert %}}

Aşağıdaki kod örneği, bir belgedeki bir paragrafta `TOA` alanı eklemek için DOM'i nasıl kullanıldığını göstermektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}

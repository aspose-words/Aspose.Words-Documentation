---
title: C#'e Alan Ekle
second_title: .NET için Aspose.Words
articleTitle: Alan Ekle
linktitle: Alan Ekle
description: "C# kullanarak bir belgeye alanlar nasıl eklenir – kod örnekleriyle farklı yolları öğrenin."
type: docs
weight: 20
url: /tr/net/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

Bir belgeye alan eklemenin birkaç farklı yolu vardır:

*[DocumentBuilder](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/) kullanarak
*[FieldBuilder](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldbuilder/) kullanarak
*[Aspose.Words Document Object Model (DOM)](/words/tr/net/aspose-words-document-object-model/) kullanarak

Bu yazıda her bir yolu daha ayrıntılı olarak ele alacağız ve bu seçenekleri kullanarak belirli alanların nasıl ekleneceğini analiz edeceğiz.

## DocumentBuilder'ı Kullanarak Bir Belgeye Alan Ekleme

Aspose.Words'te, bir belgeye yeni alanlar eklemek için [InsertField](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/insertfield/) yöntemi kullanılır. İlk parametre eklenecek alanın tam alan kodunu kabul eder. İkinci parametre isteğe bağlıdır ve alanın saha sonucunun manuel olarak ayarlanmasına olanak sağlar. Bu sağlanmazsa alan otomatik olarak güncellenir. Boş alan değerine sahip bir alan eklemek için bu parametreye null veya empty değerini iletebilirsiniz. Belirli alan kodu sözdiziminden emin değilseniz, önce alanı Microsoft Word'de oluşturun ve alan kodunu görmek için geçiş yapın.

{{% alert color="primary" %}}

Alan kodunuzda boşluk içeren bir parametre varsa, bunun konuşma işaretlerinin içine alınması gerekir. Aksi halde, hem Microsoft Word hem de Aspose.Words'deki alan, parametre her ikisi tarafından da kesilmiş olarak değerlendirileceğinden beklendiği gibi çalışmayabilir.

{{% /alert %}}

Aşağıdaki kod örneği, **DocumentBuilder** kullanarak bir belgeye birleştirme alanının nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

Aynı teknik, diğer alanların içine yerleştirilmiş alanları eklemek için de kullanılır.

Aşağıdaki kod örneği, **DocumentBuilder** kullanarak başka bir alanın içine yerleştirilmiş alanların nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}

### Alan Düzeyinde Yerel Ayarı Belirtin

Dil tanımlayıcısı, bir ülke veya coğrafi bölgedeki dilin standart uluslararası sayısal kısaltmasıdır. Aspose.Words ile, alanın yerel ayar kimliğini alan veya ayarlayan [LocaleId](https://reference.aspose.com/words/tr/net/aspose.words.fields/field/localeid/) özelliğini kullanarak Yerel Ayarı alan düzeyinde belirleyebilirsiniz.

Aşağıdaki kod örneği bu seçeneğin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}

### Yazılmamış/Boş Alan Ekle

Tıpkı Microsoft Word'nin izin verdiği gibi yazılmamış/boş alanlar ({}) eklemek istiyorsanız [FieldType.FieldNone](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldtype/) parametresi ile [InsertField](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/insertfield/) yöntemini kullanabilirsiniz. Word belgesine alan eklemek için "Ctrl + F9" tuş kombinasyonuna basabilirsiniz.

Aşağıdaki kod örneği, belgeye nasıl boş alan ekleneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}

## FieldBuilder'ı Kullanarak Belgeye Alan Ekleme
Aspose.Words'e alan eklemenin alternatif yolu [FieldBuilder](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldbuilder/) sınıfıdır. Alan anahtarlarını ve argüman değerlerini metin, düğümler ve hatta iç içe geçmiş alanlar olarak belirlemek için akıcı bir arayüz sağlar.

Aşağıdaki kod örneği, **FieldBuilder** kullanarak bir belgeye nasıl alan ekleneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder.cs" >}}

## DOM Kullanarak Alan Ekleme

[Aspose.Words Document Object Model (DOM)](/words/tr/net/aspose-words-document-object-model/)'i kullanarak çeşitli alan türlerini de ekleyebilirsiniz. Bu bölümde birkaç örneğe bakacağız.

### DOM kullanarak Birleştirme Alanını Belgeye Ekleme

Word belgesindeki `MERGEFIELD` alanı [FieldMergeField](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldmergefield/) sınıfıyla temsil edilebilir. Aşağıdaki işlemleri gerçekleştirmek için **FieldMergeField** sınıfını kullanabilirsiniz:

- birleştirme alanının adını belirtin
- birleştirme alanının formatını belirtin
- alan ayırıcı ile birleştirme alanının alan sonu arasındaki metni belirtin
- alan boş değilse birleştirme alanından sonra eklenecek metni belirtin
- alan boş değilse birleştirme alanından önce eklenecek metni belirtin

{{% alert color="primary" %}}

Daha fazla ayrıntı için [FieldMergeField](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldmergefield/) sınıfı API'ye bakın.

{{% /alert %}}

Aşağıdaki kod örneği, DOM kullanarak `MERGE` alanının bir belgedeki paragrafa nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}

### Mail Merge `ADDRESSBLOCK` alanını DOM kullanarak bir Belgeye ekleme

`ADDRESSBLOCK` alanı, Word belgesine mail merge adres bloğu eklemek için kullanılır. Word belgesindeki `ADDRESSBLOCK` alanı [FieldAddressBlock](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldaddressblock/) sınıfıyla temsil edilebilir. Aşağıdaki işlemleri gerçekleştirmek için **FieldAddressBlock** sınıfını kullanabilirsiniz:

- alana ülke/bölge adının dahil edilip edilmeyeceğini belirtin
- adresin POST*CODE (Universal Postal Union 2006) tarafından tanımlandığı şekilde alıcının ülkesine/bölgesine göre biçimlendirilip biçimlendirilmeyeceğini belirtin
- hariç tutulan ülke/bölge adını belirtin
- adı ve adres biçimini belirtin
- adresi biçimlendirmek için kullanılan dil kimliğini belirtin

{{% alert color="primary" %}}

Daha fazla ayrıntı için [FieldAddressBlock](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldaddressblock/) sınıfı API'ye bakın.

{{% /alert %}}

Aşağıdaki kod örneği, DOM kullanarak Mail Merge `ADDRESSBLOCK` Alanının bir belgedeki paragrafa nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}

### DocumentBuilder'ı kullanmadan `ADVANCE` alanını bir Belgeye ekleme

`ADVANCE` alanı bir satır içindeki sonraki metni sola, sağa, yukarı veya aşağı kaydırmak için kullanılır. Word belgesindeki `ADVANCE` alanı [FieldAdvance](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldadvance/) sınıfıyla temsil edilebilir. Aşağıdaki işlemleri gerçekleştirmek için **FieldAdvance** sınıfını kullanabilirsiniz:

- alanı takip eden metnin sayfanın üst kenarından dikey olarak taşınması gereken nokta sayısını belirtin
- alanı takip eden metnin sütunun, çerçevenin veya metin kutusunun sol kenarından yatay olarak taşınması gereken nokta sayısını belirtin
- alanı takip eden metnin sola, sağa, yukarı veya aşağı taşınması gereken nokta sayısını belirtin

{{% alert color="primary" %}}

Daha fazla ayrıntı için [FieldAdvance](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldadvance/) sınıfı API'ye bakın.

{{% /alert %}}

Aşağıdaki kod örneği, DOM kullanarak `ADVANCE` Alanının bir belgedeki paragrafa nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}

### DocumentBuilder'ı kullanmadan `ASK` alanını bir Belgeye ekleme

`ASK` alanı, kullanıcıdan Word belgesindeki bir Yer İşaretine atanacak metni istemek için kullanılır. Word belgesindeki `ASK` alanı [FieldAsk](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldask/) sınıfıyla temsil edilebilir. Aşağıdaki işlemleri gerçekleştirmek için **FieldAsk** sınıfını kullanabilirsiniz:

- yer iminin adını belirtin
- varsayılan kullanıcı yanıtını belirtin (istem penceresinde bulunan başlangıç değeri)
- mail merge işlemi başına kullanıcı yanıtının bir kez alınması gerekip gerekmediğini belirtin
- bilgi istemi metnini belirtin (bilgi istemi penceresinin başlığı)

{{% alert color="primary" %}}

Daha fazla ayrıntı için [FieldAsk](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldask/) sınıfı API'ye bakın.

{{% /alert %}}

Aşağıdaki kod örneği, DOM kullanarak `ASK` Alanının bir belgedeki paragrafa nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}

### DocumentBuilder'ı kullanmadan `AUTHOR` alanını bir Belgeye ekleme

`AUTHOR` alanı, `Document` özelliklerinden Belgenin yazarının adını belirtmek için kullanılır. Word belgesindeki `AUTHOR` alanı [FieldAuthor](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldauthor/) sınıfıyla temsil edilebilir. Aşağıdaki işlemleri gerçekleştirmek için **FieldAuthor** sınıfını kullanabilirsiniz:

- belge yazarının adını belirtin

{{% alert color="primary" %}}

Daha fazla ayrıntı için [FieldAuthor](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldauthor/) sınıfı API'ye bakın.

{{% /alert %}}

Aşağıdaki kod örneği, DOM kullanarak `AUTHOR` Alanının bir belgedeki paragrafa nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}

### DocumentBuilder'ı kullanmadan `INCLUDETEXT` alanını bir Belgeye ekleme

`INCLUDETEXT` alanı, alan kodunda adı geçen belgenin içerdiği metin ve grafikleri ekler. Belgenin tamamını veya yer imi tarafından belirtilen belgenin bir kısmını ekleyebilirsiniz. Word belgesindeki bu alan INCLUDETEXT ile temsil edilir. Aşağıdaki işlemleri gerçekleştirmek için [FieldIncludeText](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldincludetext/) sınıfını kullanabilirsiniz:

- dahil edilen belgenin yer iminin adını belirtin
- belgenin konumunu belirtin

{{% alert color="primary" %}}

Daha fazla ayrıntı için [FieldIncludeText](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldincludetext/) sınıfı API'ye bakın.

{{% /alert %}}

Aşağıdaki kod örneği, DOM kullanarak `INCLUDETEXT` alanının bir belgedeki paragrafa nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}

### DocumentBuilder'ı kullanmadan `TOA` alanını bir Belgeye ekleme

`TOA` (*Yetki Tablosu*) alanı bir yetki tablosu oluşturur ve ekler. `TOA` alanı, `TA` (*Yetki Tablosu Girişi*) alanlarıyla işaretlenen girişleri toplar. Microsoft Office Word, **References** sekmesindeki **Yetki Tablosu** grubunda *Yetki Tablosu Ekle* seçeneğini tıklattığınızda `TOA` alanını ekler. Belgenizde `TOA` alanını görüntülediğinizde söz dizimi şu şekilde görünür:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Daha fazla ayrıntı için [FieldToa](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldtoa/) sınıfı API'ye bakın.

{{% /alert %}}

Aşağıdaki kod örneği, DOM kullanarak `TOA` alanının bir belgedeki paragrafa nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}

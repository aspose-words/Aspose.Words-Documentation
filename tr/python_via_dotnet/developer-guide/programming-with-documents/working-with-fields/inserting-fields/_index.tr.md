---
title: Python'e Alan Ekleme
second_title: Python via .NET için Aspose.Words
articleTitle: Alan Ekle
linktitle: Alan Ekle
description: "Alanları Python'teki bir belgeye farklı şekillerde ekleyin: `DocumentBuilder` veya DOM (Document Object Model) kullanarak."
type: docs
weight: 20
url: /tr/python-net/inserting-fields/
---

Bir belgeye alan eklemenin birkaç farklı yolu vardır:

- [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)'i kullanma
- [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/)'i kullanma
- [Aspose.Words Document Object Model (DOM)](/words/tr/python-net/aspose-words-document-object-model/)'i kullanma

Bu yazıda her bir yolu daha ayrıntılı olarak inceleyeceğiz ve bu seçenekleri kullanarak belirli alanların nasıl ekleneceğini analiz edeceğiz.

## DocumentBuilder'ı Kullanarak Bir Belgeye Alan Ekleme

Aspose.Words'te, bir belgeye yeni alanlar eklemek için [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) yöntemi kullanılır. İlk parametre eklenecek alanın tam alan kodunu kabul eder. İkinci parametre isteğe bağlıdır ve alanın saha sonucunun manuel olarak ayarlanmasına olanak sağlar. Bu sağlanmazsa alan otomatik olarak güncellenir. Boş alan değerine sahip bir alan eklemek için bu parametreye null veya empty değerini iletebilirsiniz. Belirli alan kodu sözdiziminden emin değilseniz, önce alanı Microsoft Word'de oluşturun ve alan kodunu görmek için geçiş yapın.

{{% alert color="primary" %}}

Alan kodunuzda boşluk içeren bir parametre varsa, bunun konuşma işaretlerinin içine alınması gerekir. Aksi takdirde, hem Microsoft Word hem de Aspose.Words'deki alan, parametre her ikisi tarafından da kesilmiş olarak değerlendirileceğinden beklendiği gibi çalışmayabilir.

{{% /alert %}}

Aşağıdaki kod örneği, **DocumentBuilder** kullanarak bir belgeye birleştirme alanının nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertField.py" >}}

Aşağıdaki kod örneği, **DocumentBuilder** kullanarak bir belgeye Almanca yerel ayarlı bir birleştirme alanının nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-DocumentBuilderInsertField.py" >}}

Aynı teknik, diğer alanların içine yerleştirilmiş alanları eklemek için de kullanılır.

Aşağıdaki kod örneği, **DocumentBuilder** kullanarak başka bir alanın içine yerleştirilmiş alanların nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertNestedFields.py" >}}

### Alan Düzeyinde Yerel Ayarı Belirtin

Dil tanımlayıcısı, bir ülke veya coğrafi bölgedeki dilin standart uluslararası sayısal kısaltmasıdır. Aspose.Words ile Yerel Ayarı alan düzeyinde belirleyebilirsiniz. [locale_id](https://reference.aspose.com/words/python-net/aspose.words.fields/field/locale_id/) özelliği alanın yerel ayar kimliğini alır veya ayarlar.

Aşağıdaki kod örneği bu seçeneğin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-SpecifylocaleAtFieldlevel.py" >}}

### Yazılmamış/Boş Alan Ekle

Tıpkı Microsoft Word'nin izin verdiği gibi yazılmamış/boş alanlar ({}) eklemek istiyorsanız [FieldType.FIELD_NONE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_none) parametresi ile [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) yöntemini kullanabilirsiniz. Word belgesine alan eklemek için "Ctrl + F9" tuş kombinasyonuna basabilirsiniz.

Aşağıdaki kod örneği, belgeye nasıl boş alan ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldNone.py" >}}

## FieldBuilder'ı Kullanarak Belgeye Alan Ekleme

Aspose.Words'e alan eklemenin alternatif yolu [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/) sınıfıdır. Alan anahtarlarını ve argüman değerlerini metin, düğümler ve hatta iç içe geçmiş alanlar olarak belirlemek için akıcı bir arayüz sağlar.

Aşağıdaki kod örneği, **FieldBuilder** kullanarak bir belgeye nasıl alan ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldUsingFieldBuilder.py" >}}

## DOM Kullanarak Alan Ekleme

[Aspose.Words Document Object Model (DOM)](/words/tr/python-net/aspose-words-document-object-model/)'i kullanarak çeşitli alan türlerini de ekleyebilirsiniz. Bu bölümde birkaç örneğe bakacağız.

### DOM kullanarak Birleştirme Alanını Belgeye Ekleme

Word belgesindeki `MERGEFIELD` alanı [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) sınıfıyla temsil edilebilir. Aşağıdaki işlemleri gerçekleştirmek için [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) sınıfını kullanabilirsiniz:

- birleştirme alanının adını belirtin
- birleştirme alanının formatını belirtin
- alan ayırıcı ile birleştirme alanının alan sonu arasındaki metni belirtin
- alan boş değilse birleştirme alanından sonra eklenecek metni belirtin
- alan boş değilse birleştirme alanından önce eklenecek metni belirtin

Aşağıdaki kod örneği, bir belgedeki bir paragrafa DOM kullanarak `Merge` Alanının nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMergeFieldUsingDOM.py" >}}

### Mail Merge `ADDRESSBLOCK` alanını DOM kullanarak bir Belgeye ekleme

`ADDRESSBLOCK` alanı, Word belgesine bir mail merge adres bloğu eklemek için kullanılır. Word belgesindeki `ADDRESSBLOCK` alanı [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) sınıfıyla temsil edilebilir. Aşağıdaki işlemleri gerçekleştirmek için [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) sınıfını kullanabilirsiniz:

- alana ülke/bölge adının dahil edilip edilmeyeceğini belirtin
- adresin POST*CODE (Universal Postal Union 2006) tarafından tanımlandığı şekilde alıcının ülkesine/bölgesine göre biçimlendirilip biçimlendirilmeyeceğini belirtin
- hariç tutulan ülke/bölge adını belirtin
- adı ve adres biçimini belirtin
- adresi biçimlendirmek için kullanılan dil kimliğini belirtin

Aşağıdaki kod örneği, DOM kullanarak Mail Merge `ADDRESSBLOCK` Alanının bir belgedeki bir paragrafa nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMailMergeAddressBlockFieldUsingDOM.py" >}}

### DocumentBuilder'ı kullanmadan `ADVANCE` alanını bir Belgeye ekleme

`ADVANCE` alanı bir satır içindeki sonraki metni sola, sağa, yukarı veya aşağı kaydırmak için kullanılır. Word belgesindeki `ADVANCE` alanı [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) sınıfıyla temsil edilebilir. Aşağıdaki işlemleri gerçekleştirmek için [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) sınıfını kullanabilirsiniz:

- alanı takip eden metnin sayfanın üst kenarından dikey olarak taşınması gereken nokta sayısını belirtin
- alanı takip eden metnin sütunun, çerçevenin veya metin kutusunun sol kenarından yatay olarak taşınması gereken nokta sayısını belirtin
- alanı takip eden metnin sola, sağa, yukarı veya aşağı taşınması gereken nokta sayısını belirtin

Aşağıdaki kod örneği, DOM kullanarak `ADVANCE` Alanının bir belgedeki paragrafa nasıl ekleneceğini gösterir.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAdvanceFieldWithOutDocumentBuilder.py" >}}

### DocumentBuilder'ı kullanmadan `ASK` alanını bir Belgeye ekleme

`ASK` alanı, kullanıcıdan Word belgesindeki bir Yer İşaretine atanacak metni istemek için kullanılır. Word belgesindeki `ASK` alanı [FieldAsk](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldask/) sınıfıyla temsil edilebilir. Aşağıdaki işlemleri gerçekleştirmek için **FieldAsk** sınıfını kullanabilirsiniz:

- yer iminin adını belirtin
- varsayılan kullanıcı yanıtını belirtin (istem penceresinde bulunan başlangıç değeri)
- mail merge işlemi başına kullanıcı yanıtının bir kez alınması gerekip gerekmediğini belirtin
- bilgi istemi metnini belirtin (bilgi istemi penceresinin başlığı)

Aşağıdaki kod örneği, DOM kullanarak `ASK` Alanının bir belgedeki paragrafa nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertASKFieldWithOutDocumentBuilder.py" >}}

### DocumentBuilder'ı kullanmadan `AUTHOR` alanını bir Belgeye ekleme

`AUTHOR` alanı, `Document` özelliklerinden Belgenin yazarının adını belirtmek için kullanılır. Word belgesindeki `AUTHOR` alanı [FieldAuthor](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/) sınıfıyla temsil edilebilir. Aşağıdaki işlemleri gerçekleştirmek için **FieldAuthor** sınıfını kullanabilirsiniz:

- belge yazarının adını belirtin

Aşağıdaki kod örneği, DOM kullanarak `AUTHOR` Alanının bir belgedeki paragrafa nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAuthorField.py" >}}

### DocumentBuilder'ı kullanmadan `INCLUDETEXT` alanını bir Belgeye ekleme

`INCLUDETEXT` alanı, alan kodunda adı geçen belgenin içerdiği metin ve grafikleri ekler. Belgenin tamamını veya yer imi tarafından belirtilen belgenin bir kısmını ekleyebilirsiniz. Word belgesindeki bu alan INCLUDETEXT ile temsil edilir. Aşağıdaki işlemleri gerçekleştirmek için [FieldIncludeText](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldincludetext/) sınıfını kullanabilirsiniz:

- dahil edilen belgenin yer iminin adını belirtin
- belgenin konumunu belirtin

Aşağıdaki kod örneği, DOM kullanarak `INCLUDETEXT` alanının bir belgedeki paragrafa nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldIncludeTextWithoutDocumentBuilder.py" >}}

### DocumentBuilder'ı kullanmadan `TOA` alanını bir Belgeye ekleme

`TOA` (*Yetki Tablosu*) alanı bir yetki tablosu oluşturur ve ekler. `TOA` alanı, `TA` (*Yetki Tablosu Girişi*) alanlarıyla işaretlenen girişleri toplar. Microsoft Office Word, **References** sekmesindeki **Yetki Tablosu** grubunda *Yetki Tablosu Ekle* seçeneğini tıklattığınızda `TOA` alanını ekler. Belgenizde `TOA` alanını görüntülediğinizde söz dizimi şu şekilde görünür:

{ `TOA` [Switches ] }

`TOA` alanı ile işlemleri gerçekleştirmek için [FieldToa](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtoa/) sınıfını kullanabilirsiniz.

Aşağıdaki kod örneği, DOM kullanarak `TOA` alanının bir belgedeki paragrafa nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertTOAFieldWithoutDocumentBuilder.py" >}}

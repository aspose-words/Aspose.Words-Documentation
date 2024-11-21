---
title: C++ içine Alan Ekle
second_title: Aspose.Words için C++
articleTitle: Alanları Ekle
linktitle: Alanları Ekle
description: "C++ kullanarak belgenize alan eklemenin farklı yolları."
type: docs
weight: 20
url: /tr/cpp/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

Bir belgeye alan eklemenin birkaç farklı yolu vardır:

- [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) kullanarak
- [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/) kullanarak
- kullanım [Aspose.Words Belge Nesne Modeli (DOM)](/words/cpp/aspose-words-document-object-model/)

Bu yazıda, her bir yolu daha ayrıntılı olarak ele alacağız ve bu seçenekleri kullanarak belirli alanların nasıl ekleneceğini analiz edeceğiz.

## DocumentBuilder kullanarak Bir Belgeye Alan Ekleme

Aspose.Words 'de [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) yöntemi bir belgeye yeni alanlar eklemek için kullanılır. İlk parametre, eklenecek alanın tam alan kodunu kabul eder. İkinci parametre isteğe bağlıdır ve alanın alan sonucunun manuel olarak ayarlanmasına izin verir. Bu sağlanmazsa, alan otomatik olarak güncellenir. Boş alan değerine sahip bir alan eklemek için bu parametreye null veya empty iletebilirsiniz. Belirli alan kodu sözdiziminden emin değilseniz, önce Microsoft Word içinde alanı oluşturun ve alan kodunu görmeye geçin.

{{% alert color="primary" %}}

Alan kodunuzda boşluk içeren bir parametre varsa, bu parametre konuşma işaretlerinin içine alınmalıdır. Aksi takdirde, hem Microsoft Word hem de Aspose.Words içindeki alan beklendiği gibi çalışmayabilir, çünkü parametre her ikisi tarafından da kesilmiş olarak kabul edilir

{{% /alert %}}

Aşağıdaki kod örneği, **DocumentBuilder** kullanarak bir belgeye birleştirme alanının nasıl ekleneceğini gösterir.:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

Aynı teknik, diğer alanlara iç içe geçmiş alanlar eklemek için kullanılır.

Aşağıdaki kod örneği, **DocumentBuilder** kullanarak başka bir alana iç içe geçmiş alanların nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### Alan Düzeyinde Yerel Ayarı Belirtin

Dil tanımlayıcısı, bir ülkedeki veya coğrafi bölgedeki dilin standart uluslararası sayısal kısaltmasıdır. Aspose.Words ile, alanın yerel ayarını ID alan veya ayarlayan [LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/) özelliğini kullanarak alan düzeyinde Yerel Ayarı belirtebilirsiniz.

Aşağıdaki kod örneği, bu seçeneğin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### Yazılmamış / Boş Alan Ekle

Microsoft Word'nin izin verdiği gibi türlenmemiş / boş alanlar ({}) eklemek istiyorsanız, [FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/) parametresiyle [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield) yöntemini kullanabilirsiniz. Bir Word belgesine alan eklemek için "Ctrl + F9" tuş bileşimine basabilirsiniz.

Aşağıdaki kod örneği, belgeye boş bir alanın nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## FieldBuilder kullanarak Bir Belgeye Alan Ekleme

Aspose.Words 'e alan eklemenin alternatif yolu [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/) sınıfıdır. Alan anahtarlarını ve bağımsız değişken değerlerini metin, düğümler ve hatta iç içe geçmiş alanlar olarak belirtmek için akıcı bir arayüz sağlar.

Aşağıdaki kod örneği, **FieldBuilder** kullanarak bir belgeye nasıl alan ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## DOM kullanarak Alan ekleme

Kullanarak çeşitli alan türleri de ekleyebilirsiniz [Aspose.Words Belge Nesne Modeli (DOM)](/words/cpp/aspose-words-document-object-model/). Bu bölümde birkaç örneğe bakacağız.

### DOM kullanarak Belgeye Birleştirme Alanı Ekleme

Word belgesindeki `MERGEFIELD` alanı [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) sınıfı ile gösterilebilir. Aşağıdaki işlemleri gerçekleştirmek için **FieldMergeField** sınıfını kullanabilirsiniz:

- birleştirme alanının adını belirtin
- birleştirme alanının biçimlendirmesini belirtin
- alan ayırıcısı ile birleştirme alanının alan sonu arasındaki metni belirtin
- alan boş değilse, birleştirme alanından sonra eklenecek metni belirtin
- alan boş değilse, birleştirme alanından önce eklenecek metni belirtin

{{% alert color="primary" %}}

Daha fazla ayrıntı için bkz. [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) sınıfı API.

{{% /alert %}}

Aşağıdaki kod örneği, belgedeki bir paragrafa DOM kullanarak `MERGE` alanının nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### DOM kullanarak bir Belgeye Mail Merge Adres Bloğu alanı ekleme

`ADDRESSBLOCK` alanı, bir Word belgesine mail merge adres bloğu eklemek için kullanılır. Word belgesindeki `ADDRESSBLOCK` alanı [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/) sınıfı ile gösterilebilir. Aşağıdaki işlemleri gerçekleştirmek için **FieldAddressBlock** sınıfını kullanabilirsiniz:

- alana ülke/bölge adının eklenip eklenmeyeceğini belirtin
- adresin alıcının ülkesine/bölgesine göre POST*CODE ile tanımlandığı şekilde biçimlendirilip biçimlendirilmeyeceğini belirtin (Evrensel Posta Birliği 2006)
- hariç tutulan ülke/bölge adını belirtin
- ad ve adres biçimini belirtin
- adresi biçimlendirmek için kullanılan ID dilini belirtin

{{% alert color="primary" %}}

Daha fazla ayrıntı için bkz. [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/) sınıfı API.

{{% /alert %}}

Aşağıdaki kod örneği, belgedeki bir paragrafa DOM kullanarak Mail Merge `ADDRESSBLOCK` Alanının nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### DocumentBuilder kullanmadan bir Belgeye İlerleme alanı ekleme

`ADVANCE` alanı, bir satır içindeki sonraki metni sola, sağa, yukarı veya aşağı kaydırmak için kullanılır. Word belgesindeki `ADVANCE` alanı [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/) sınıfı ile gösterilebilir. Aşağıdaki işlemleri gerçekleştirmek için FieldAdvance sınıfını kullanabilirsiniz:

- alanı izleyen metnin sayfanın üst kenarından dikey olarak taşınması gereken nokta sayısını belirtin
- alanı izleyen metnin sütunun, çerçevenin veya metin kutusunun sol kenarından yatay olarak taşınması gereken nokta sayısını belirtin
- alanı izleyen metnin sola, sağa, yukarı veya aşağı taşınması gereken nokta sayısını belirtin

{{% alert color="primary" %}}

Daha fazla ayrıntı için bkz. [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/) sınıfı API.

{{% /alert %}}

Aşağıdaki kod örneği, belgedeki bir paragrafa DOM kullanarak `ADVANCE` Alanının nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### DocumentBuilder kullanmadan bir Belgeye `ASK` alanı ekleme

`ASK` alanı, kullanıcıdan Word belgesindeki bir Yer İmine metin atamasını istemek için kullanılır. Word belgesindeki `ASK` alanı [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/) sınıfı ile gösterilebilir. Aşağıdaki işlemleri gerçekleştirmek için **FieldAsk** sınıfını kullanabilirsiniz:

- yer iminin adını belirtin
- varsayılan kullanıcı yanıtını belirtin (bilgi istemi penceresinde bulunan başlangıç değeri)
- mail merge işlemi başına kullanıcı yanıtının bir kez alınıp alınmayacağını belirtin
- bilgi istemi metnini belirtin (bilgi istemi penceresinin başlığı)

{{% alert color="primary" %}}

Daha fazla ayrıntı için bkz. [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask) sınıfı API.

{{% /alert %}}

Aşağıdaki kod örneği, belgedeki bir paragrafa DOM kullanarak `ASK` Alanının nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### DocumentBuilder kullanmadan bir Belgeye `AUTHOR` alanı ekleme

`AUTHOR` alanı, Belgenin yazarının adını `Document` özelliklerinden belirtmek için kullanılır. Word belgesindeki `AUTHOR` alanı [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/) sınıfı ile temsil edilebilir. Aşağıdaki işlemleri gerçekleştirmek için **FieldAuthor** sınıfını kullanabilirsiniz:

- belge yazarının adını belirtin

{{% alert color="primary" %}}

Daha fazla ayrıntı için bkz. [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/) sınıfı API.

{{% /alert %}}

Aşağıdaki kod örneği, belgedeki bir paragrafa DOM kullanarak `AUTHOR` Alanının nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### DocumentBuilder kullanmadan bir Belgeye `INCLUDETEXT` alanı ekleme

`INCLUDETEXT` alanı, alan kodunda adı geçen belgede yer alan metin ve grafikleri ekler. Belgenin tamamını veya belgenin yer imiyle başvurulan bir bölümünü ekleyebilirsiniz. Word belgesindeki bu alan INCLUDETEXT ile gösterilir. Aşağıdaki işlemleri gerçekleştirmek için [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) sınıfını kullanabilirsiniz:

- yer iminin dahil edilen belgenin adını belirtin
- belgenin konumunu belirtin

{{% alert color="primary" %}}

Daha fazla ayrıntı için bkz. [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) sınıfı API.

{{% /alert %}}

Aşağıdaki kod örneği, belgedeki bir paragrafa DOM kullanarak `INCLUDETEXT` alanının nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### DocumentBuilder kullanmadan bir Belgeye `TOA` alanı ekleme

`TOA` (*Table of Authorities*) alanı bir yetki tablosu oluşturur ve ekler. `TOA` alanı, `TA` (*Table of Authorities Entry*) alanlarıyla işaretlenmiş girdileri toplar. Microsoft Office Word, **References** sekmesindeki **Table of Authorities** grubunda *Insert Table of Authorities*'yi tıklattığınızda `TOA` alanını ekler. Belgenizdeki `TOA` alanını görüntülediğinizde, sözdizimi şöyle görünür:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Daha fazla ayrıntı için bkz. [FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/) sınıfı API.

{{% /alert %}}

Aşağıdaki kod örneği, belgedeki bir paragrafa DOM kullanarak `TOA` alanının nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/

---
title: Python'te Alanlara Genel Bakış
second_title: Python via .NET için Aspose.Words
articleTitle: Alanlara Genel Bakış
linktitle: Alanlara Genel Bakış
description: "Python'i kullanarak alan değiştirmeye erişebilirsiniz. Belgenin alanları Aspose.Words Document Object Model'e (DOM) yüklenir."
type: docs
weight: 10
url: /tr/python-net/fields-overview/
---


Genellikle bir alan Microsoft Word'e eklendiğinde zaten güncel bir değer içerir. Örneğin alan bir formül veya sayfa numarasıysa, belgenin verilen sürümü için doğru hesaplanmış değeri içerecektir. Ancak alanları olan bir belge oluşturan veya değiştiren bir uygulamanız varsa (örneğin, iki belgeyi birleştiren veya verilerle dolduran), o zaman belgenin kullanışlı olması için ideal olarak tüm alanların güncellenmesi gerekir.

Bir alan şunlardan oluşur:

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- Alan başlangıcı ve ayırıcı düğümler, alan kodunu oluşturan içeriği kapsamak için kullanılır (normalde düz metin olarak)
- Alan ayırıcı ve alan ucu, saha sonucunu kapsar. Bu, metin dizilerinden paragraflara ve tablolara kadar çeşitli içerik türlerinden oluşabilir.
- Bazı alanlarda ayırıcı bulunmayabilir; bu, içeriğin tamamının alan kodunu oluşturduğu anlamına gelir.
- Alan kodu, alanın davranışını tanımlar ve alan tanımlayıcısından ve genellikle alan adı ve anahtarlar gibi diğer parametrelerden oluşur.
- Saha sonucu sahanın en güncel değerlendirmesini içerir. Bu değer alan sonucunda saklanır ve kullanıcıya gösterilir. Bazı alanlarda herhangi bir alan sonucu bulunmayabilir, dolayısıyla belgede hiçbir şey görüntülenmez. Aynı şekilde bazı alanlar henüz güncellenmemiş olabilir, bu nedenle alan sonucu da olmayabilir.

Burada, [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer)'de bulunabilen "*DocumentExplorer"* örneğini kullanarak bir alanın Aspose.Words'te nasıl saklandığına dair bir görünüm bulunmaktadır.

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words, Microsoft Word belgelerinin sunucu tarafında işlenmesi için tasarlanmış bir sınıf kitaplığıdır ve alanları aşağıdaki şekillerde destekler:

- Bir belgedeki tüm alanlar açma/kaydetme ve dönüştürmeler sırasında korunur.
- En popüler alanlardan bazılarının sonuçlarını güncellemek mümkündür.

## Microsoft Word'teki alanlar

Microsoft Word belgelerindeki alanlar karmaşıktır. 50'den fazla alan türü (her biri kendi sonuç hesaplama prosedürüne ihtiyaç duyar), formüller ve ifadeler, yer imleri ve referanslar, işlevler ve çeşitli anahtarlar vardır. Alanlar aynı zamanda iç içe de yerleştirilebilir. Normalde bir belge açıldığında, belgedeki tüm alanlar için alan sonucu (alan değeri) gösterilir. **ALT+F9** tuşuna basarak tüm alanlar için Microsoft Word'teki alan sonucu veya alan kodlarının görüntülenmesini değiştirebilirsiniz.

| Alan Kodu | Alan Sonucu |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### Microsoft Word'e Alan Ekleme

Microsoft Word'e alan eklemek için:

1. **Insert** menüsüne tıklayın.
1. **Quick Parts** açılır menüsüne tıklayın
1. **Field**'i seçin
1. Alanın detaylarını girmenizi sağlayan bir ekran karşınıza çıkar. Sol tarafta size olası alanların bir listesi verilir ve sağ tarafta alanın özelliklerini görsel olarak düzenlemek için bir ekran bulunur.<br>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1. Ayrıca doğrudan alan kodunu yazmanıza olanak tanıyan **Field Codes** düğmesine de basabilirsiniz.<br>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1. Anahtarlar **Options** düğmesi kullanılarak da eklenebilir<br>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1. Her iki yöntemden birini kullanarak istenen alanları uygun bilgilerle doldurun ve ardından **Ok**'e basın.
1. Alan belgeye geçerli imleç konumuna eklenir.<br>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### Microsoft Word'teki Alanları Güncelleme

Microsoft Word'te tek bir alanı güncellemek için:

1. İmleci güncellemek istediğiniz alana taşıyın.
1. Alanı güncellemek için **F9** tuşuna basın.

Microsoft Word'teki tüm alanları güncellemek için:

1. Belgedeki tüm içeriği seçmek için **Ctrl+A** tuşuna basın.
1. Seçimde bulunan tüm alanları güncellemek için **F9** tuşuna basın.

### Alan Kodu Görüntülemesi ile Alan Sonucu Arasında Geçiş Yapma

Microsoft Word'te tek bir alanın alan kodlarını değiştirmek için:

1. İmleci istediğiniz alana taşıyın.
1. Yalnızca bu alana ait alan kodunu değiştirmek için **ÜSTKRKT+F9** tuşuna basın.

Microsoft Word'teki tüm alanların alan kodlarını değiştirmek için:

1. **ALT+F9**'e basın

### Microsoft Word'te Alanları Statik Metne Dönüştürme

Microsoft Word'te dinamik bir alanı statik metne dönüştürmek için:

1. İmleci dönüştürmek istediğiniz alana taşıyın.
1. Alanları statik metne dönüştürmek için **Ctrl+Üst Karakter+F9** tuşuna basın.

### Microsoft Word'te Bir Alanı Kaldırma

Microsoft Word'te bir alanı kaldırmak için:

1. Alanı oluşturan içeriğin tamamını seçin. Alan kodları görüntüleniyorsa açılış ve bitiş parantezlerinin de seçilmesi gerekir.
1. Alanın tamamını kaldırmak için **Delete** tuşuna basın.

## Aspose.Words'teki alanlar

Bir belge Aspose.Words'e yüklendiğinde, belgenin alanları bir dizi ayrı bileşen (düğüm) olarak Aspose.Words Document Object Model'ye yüklenir. Tek bir alan, [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) ve [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) düğümlerinin bir koleksiyonu olarak ve bu düğümler arasındaki içerikle birlikte yüklenir. Bir alanın alan sonucu yoksa [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) düğümü olmayacaktır. Bu düğümlerin tümü her zaman satır içi olarak bulunur ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) veya [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)'nin çocukları olarak).

Alan kodunu oluşturan içerik, [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) ile [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) arasında [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) düğümleri olarak depolanır. Alan sonucu [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) ve [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) düğümleri arasında depolanır ve çeşitli içerik türlerinden oluşabilir. Normalde alan sonucu yalnızca [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) düğümlerinden oluşan metni içerir, ancak [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) düğümünün tamamen farklı bir paragrafta konumlandırılması ve dolayısıyla alan sonucunun [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) ve [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) düğümleri gibi blok düzeyinde düğümlerden oluşması da mümkündür.

Aspose.Words'te **FieldXXX** düğümlerinin her biri [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/)'den türetilir. Bu sınıf, belirtilen düğüm tarafından temsil edilen alan türünü [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/) özelliği aracılığıyla kontrol etmek için bir özellik sağlar. Örneğin [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field), belgedeki bir birleştirme alanını temsil eder.

{{% alert color="primary" %}}

Bir Word belgesinde bulunan ve Aspose.Words'e **FieldXXX** düğümlerinin bir koleksiyonu olarak aktarılmayan bazı belirli alanlar vardır. Örneğin, `LINK` alanı ve `INCLUDEPICTURE` alanı Aspose.Words'e [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) nesnesi olarak aktarılır. Bu nesne, normalde bu alanlarda depolanan görüntü verileriyle çalışacak özellikler sağlar.

Form alanları da Aspose.Words'e kendi özel sınıfları olarak aktarılır. [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) sınıfı, Word belgesindeki bir form alanını temsil eder ve form alanına özel ek yöntemler sağlar.

{{% /alert %}}

### Güncelleme Sırasında Desteklenen Alanlar

Aşağıdaki alanların hesaplanması Aspose.Words'in güncel sürümünde desteklenmektedir:

- = (formül alanı)
- `ADDRESSBLOCK`
- `AUTHOR`
- `COMPARE`
- `CREATEDATE`
- `DATE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `GREETINGLINE`
- `IF`
- `INCLUDETEXT`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NUMPAGES`
- `PAGE`
- `PAGEREF`
- `REF`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `STYLEREF`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (TOT ve TOF dahil)
- TC

### Gelişmiş Ayrıştırma

Aspose.Words, Microsoft Word'nin alanları işleme biçimini takip eder ve sonuç olarak şunları doğru şekilde işler:

- İç içe alanlar
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- Alan bağımsız değişkeni iç içe geçmiş bir alanın sonucu olabilir.
- Alanlar, alan sonucunun yanı sıra alan kodu içinde de iç içe yerleştirilebilir.
- Boşluk/boşluk yok, tırnak işaretleri/tırnak işaretleri yok, alanlardaki kaçış karakterleri vb.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- Birden fazla paragrafa yayılan alanlar.

#### Formül Alanları

Aspose.Words, formül motorunun çok ciddi bir uygulamasını sağlar ve aşağıdakileri destekler:

- Aritmetik ve mantıksal operatörler:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Fonksiyonlar:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- Yer imlerine referanslar:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- Sayı biçimlendirme anahtarları:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

İfadelerde şu işlevler desteklenir: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

#### `IF` ve `COMPARE` Alanları

Aspose.Words'nin kolayca hesaplayabildiği `IF` ifadelerinden sadece birkaçı size bu özelliğin ne kadar güçlü olduğu hakkında bir fikir vermelidir:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### `DATE` ve `TIME` Alanları

Aspose.Words, Microsoft Word'de bulunan tüm tarih ve saat biçimlendirme anahtarlarını destekler; bazı örnekler şunlardır:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Mail Merge Alanları

Aspose.Words, belgelerinizdeki mail merge alanlarının karmaşıklığına herhangi bir sınırlama getirmez ve iç içe `IF` ve formül alanlarını destekler ve hatta bir formül kullanarak birleştirme alanının adını hesaplayabilir.

Aspose.Words'nin desteklediği mail merge alanlarına bazı örnekler:

- Mail merge alan anahtarları:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- Bir formülde iç içe geçmiş birleştirme alanları:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- Çalışma zamanında birleştirme alanının adını hesaplayın:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- Veri kaynağındaki bir sonraki kayda koşullu geçiş:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

#### Format Anahtarları

Belgedeki bir alan, elde edilen değerin nasıl biçimlendirilmesi gerektiğini belirten biçimlendirme anahtarlarına sahip olabilir. Aspose.Words aşağıdaki format anahtarlarını destekler:

- @ - tarih ve saat biçimlendirmesi
- \\\# - sayı biçimlendirmesi
- \\\\\\\\* Büyük harfler
- \\\\\\\\* İlk Başlık
- \\\\\\\\* Daha düşük
- \\\\\\\\* Üst
- \\\\\\\\* CHARFORMAT – sonucu alan kodunun ilk karakterine göre biçimlendir.
- \\\\\\\\* MERGEFORMAT – sonucu, eski sonucun nasıl biçimlendirildiğine göre biçimlendirin.

#### Alanlarda Date ve Sayı Biçimlendirmesi

Aspose.Words bir alan sonucunu hesapladığında, genellikle bir dizeyi bir sayı veya tarih değerine ayrıştırması ve ayrıca onu tekrar bir dizeye biçimlendirmesi gerekir. Aspose.Words, alan güncellemesi sırasında alan değerlerini hesaplarken varsayılan olarak ayrıştırma ve biçimlendirmeyi gerçekleştirmek için geçerli iş parçacığı kültürünü kullanır. ve mail merge. Alan güncellemesi sırasında hangi kültürün kullanıldığı üzerinde daha fazla kontrole olanak tanıyan [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/) sınıfı biçiminde sağlanan seçenekler de vardır.

- Varsayılan olarak [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) özelliği, alanları geçerli iş parçacığı kültürünü kullanarak biçimlendiren [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread) olarak ayarlanmıştır.
- Bu özellik [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code) olarak ayarlanabilir, böylece alanın alan kodundan ayarlanan dil bunun yerine biçimlendirme için kullanılır.

#### Geçerli Konunun Kültürünü Kullanarak Biçimlendirme

Alan hesaplaması sırasında kullanılan kültürü kontrol etmek için, alan hesaplamasını başlatmadan önce **yerel ayar.setlocale** yöntemini kullanarak istediğiniz kültürü ayarlayın.
Aşağıdaki örnekte, güncelleme sırasında biçimlendirme alanlarında kullanılan kültürün nasıl değiştirileceği gösterilmektedir.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

Alanları biçimlendirmek için mevcut kültürün kullanılması, sistemin alan güncellemesi sırasında belgedeki tüm alanların nasıl biçimlendirileceğini kolay ve tutarlı bir şekilde kontrol etmesine olanak tanır.

#### Belgedeki Kültürü Kullanarak Biçimlendirme

Öte yandan Microsoft Word, her bir alanı, alanda bulunan metnin diline (özellikle alan kodundaki çalıştırmalara) göre biçimlendirir. Bazen alan güncellemesi sırasında bu istenen davranış olabilir; örneğin, birçok farklı dilden oluşan içerik içeren küreselleştirilmiş belgeleriniz varsa ve her alanın metinde kullanılan yerel ayarı dikkate almasını istiyorsanız. Aspose.Words de bu işlevselliği destekler.

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/) sınıfı, alanların belge içinde nasıl güncellendiğini kontrol etmek için kullanılabilecek üyeleri içeren bir [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) özelliği sağlar. Aşağıdaki örnekte, alan güncellemesi sırasında tarih biçimlendirmesi için kullanılan kültürün ve mail merge'in seçildiği yerin nasıl belirleneceği gösterilmektedir.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## Alan Kodunu ve Alan Sonucunu Bulma

[DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) kullanılarak eklenen alan bir [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) nesnesi döndürür. Bu, bir alanın bu tür özelliklerini hızlı bir şekilde bulmak için kullanışlı yöntemler sağlayan bir cephe sınıfıdır. Belgede yalnızca birleştirme alanlarının adlarını arıyorsanız, bunun yerine yerleşik [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) yöntemini kullanabileceğinizi unutmayın. Aşağıdaki örnek, bir belgedeki tüm birleştirme alanlarının adlarının nasıl alınacağını gösterir.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## Birleştirme Alanlarını Yeniden Adlandırma

Aşağıdaki örnek, bir Word belgesindeki birleştirme alanlarının nasıl yeniden adlandırılacağını gösterir.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

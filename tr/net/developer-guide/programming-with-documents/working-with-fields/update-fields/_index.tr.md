---
title: Alanları Güncelle C#
second_title: .NET için Aspose.Words
articleTitle: Alanları Güncelle
linktitle: Alanları Güncelle
description: "C#'teki alanları nasıl güncelleyeceğinizi öğrenin. Alanları programlı olarak güncelleyin veya .NET API kullanarak otomatik alan güncellemesini kullanın."
type: docs
weight: 30
url: /tr/net/update-fields/
timestamp: 2024-01-27-14-07-04
---

Genellikle Microsoft Word'e eklenen bir alan zaten güncel bir değer içerir. Örneğin alan bir formül veya sayfa numarasıysa, belgenin verilen sürümü için doğru hesaplanan değeri içerecektir. Ancak, iki belgeyi birleştirmek veya onu verilerle doldurmak gibi alanlarla bir belge oluşturan veya değiştiren bir uygulamanız varsa, o zaman ideal olarak belgenin kullanışlı olması için tüm alanların güncellenmesi gerekir.

## Alanlar Nasıl Güncellenir?

Bir belge yüklendiğinde Aspose.Words, alanları otomatik olarak güncelleme seçeneği kapatılarak Microsoft Word'nin davranışını taklit eder. Davranış şu şekilde özetlenebilir:

- bir belgeyi açtığınızda/kaydettiğinizde alanlar olduğu gibi kalır
- ihtiyaç duyduğunuzda bir belgedeki tüm alanları açıkça güncelleyebilirsiniz; örneğin `TOC`'i yeniden oluşturabilirsiniz
- PDF veya XPS'e yazdırdığınızda/oluşturduğunuzda üstbilgi/altbilgilerdeki sayfa numaralandırmayla ilgili alanlar güncellenir
- mail merge'i çalıştırdığınızda tüm alanlar otomatik olarak güncellenir

### Alanları Program Aracılığıyla Güncelleme

Belgenin tamamındaki alanları açıkça güncellemek için [UpdateFields](https://reference.aspose.com/words/tr/net/aspose.words/document/updatefields/) yöntemini çağırmanız yeterlidir. Belgenin bir bölümünde yer alan alanları güncellemek için bir [Range](https://reference.aspose.com/words/tr/net/aspose.words/range/) nesnesi edinin ve [UpdateFields](https://reference.aspose.com/words/tr/net/aspose.words/range/updatefields/) yöntemini çağırın. Aspose.Words'de, [Node.Range](https://reference.aspose.com/words/tr/net/aspose.words/node/range/) özelliğini kullanarak belge ağacındaki [Section](https://reference.aspose.com/words/tr/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/tr/net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/tr/net/aspose.words/paragraph/) vb. gibi herhangi bir düğüm için bir **Range** alabilirsiniz. Tek bir alanın sonucunu [Update](https://reference.aspose.com/words/tr/net/aspose.words.fields/field/update/) yöntemini çağırarak güncelleyebilirsiniz.

### İşleme Sırasında Sayfayla İlgili Alanların Otomatik Güncellenmesi

Bir belgeyi PDF veya XPS gibi sabit sayfalı bir formata dönüştürme işlemini gerçekleştirdiğinizde, Aspose.Words, belgenin üst bilgilerinde/alt bilgilerinde bulunan sayfa düzeniyle ilgili `PAGE`, `PAGEREF` alanlarını otomatik olarak güncelleyecektir. Bu davranış, bir belge yazdırılırken Microsoft Word'un davranışını taklit eder.

Belgedeki diğer tüm alanları güncellemek istiyorsanız belgeyi oluşturmadan önce [UpdateFields](https://reference.aspose.com/words/tr/net/aspose.words/document/updatefields/)'i aramanız gerekir.

Aşağıdaki kod örneği, bir belgeyi oluşturmadan önce tüm alanların nasıl güncelleştirileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

{{% /alert %}}

### Mail Merge Sırasında Otomatik Alan Güncellemesi

Bir Mail Merge çalıştırdığınızda belgedeki tüm alanlar otomatik olarak güncellenecektir. Bunun nedeni mail merge'in bir alan güncellemesi durumu olmasıdır. Program bir Mail Merge alanıyla karşılaşır ve sonucunu güncellemesi gerekir; bu, veri kaynağından değerin alınıp alana eklenmesini içerir. Mantık elbette daha karmaşıktır; örneğin, belgenin/mail merge bölgesinin sonuna gelindiğinde ancak birleştirilecek daha fazla veri olduğunda, bölgenin kopyalanması ve yeni alan kümesinin güncellenmesi gerekir.

## Kirli Niteliğe Sahip Alanları Güncelle

w:dirty, belge açıldığında yalnızca belirttiğiniz alanı yenileyecek alan düzeyinde bir özelliktir. MS Word'e bu alanı yalnızca belgenin bir sonraki açılışında yenilemesini söyler. Alanların kirli özniteliğiyle güncellenip güncellenmeyeceğini belirtmek için [UpdateDirtyFields](https://reference.aspose.com/words/tr/net/aspose.words.loading/loadoptions/updatedirtyfields/) özelliğini kullanabilirsiniz. **UpdateDirtyFields** değeri *true* olarak ayarlandığında [Field.IsDirty](https://reference.aspose.com/words/tr/net/aspose.words.fields/field/isdirty/) veya [FieldChar.IsDirty](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldchar/isdirty/) özelliği için *true* değeri olan tüm alanlar belge yüklendiğinde güncellenir.

Aşağıdaki kod örneği, kirli özelliğine sahip alanların nasıl güncelleştirileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## Kaydetmeden Önce LastSavedTime Özelliğini Güncelleyin

Belgeyi kaydederken ilgili yerleşik belge özelliği [LastSavedTime](https://reference.aspose.com/words/tr/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/)'nin güncellenip güncellenmeyeceği [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/tr/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) özelliğini kullanabilirsiniz.

Aşağıdaki kod örneği bu özelliğin nasıl güncelleştirileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}

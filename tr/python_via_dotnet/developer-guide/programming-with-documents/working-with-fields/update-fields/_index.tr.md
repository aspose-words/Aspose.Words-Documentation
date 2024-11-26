---
title: Python Alanlarını Güncelleme
second_title: Python via .NET için Aspose.Words
articleTitle: Alanları Güncelle
linktitle: Alanları Güncelle
description: "Bir belgedeki alanları farklı şekillerde ve Python'teki farklı seçenekleri kullanarak güncelleyin."
type: docs
weight: 30
url: /tr/python-net/update-fields/
timestamp: 2024-01-27-14-07-04
---

Genellikle Microsoft Word'e eklenen bir alan zaten güncel bir değer içerir. Örneğin alan bir formül veya sayfa numarasıysa, belgenin verilen sürümü için doğru hesaplanan değeri içerecektir. Ancak, iki belgeyi birleştirmek veya onu verilerle doldurmak gibi alanlarla bir belge oluşturan veya değiştiren bir uygulamanız varsa, o zaman ideal olarak belgenin kullanışlı olması için tüm alanların güncellenmesi gerekir.

## Alanlar Nasıl Güncellenir?

Bir belge yüklendiğinde Aspose.Words, alanları otomatik olarak güncelleme seçeneği kapatılarak Microsoft Word'nin davranışını taklit eder. Davranış şu şekilde özetlenebilir:

- bir belgeyi açtığınızda/kaydettiğinizde alanlar bozulmadan kalır
- ihtiyaç duyduğunuzda bir belgedeki tüm alanları açıkça güncelleyebilirsiniz (örn. İçindekiler Tablosunu yeniden oluşturabilirsiniz)
- PDF veya XPS'e yazdırdığınızda/oluşturduğunuzda üstbilgi/altbilgilerdeki sayfa numaralandırmayla ilgili alanlar güncellenir
- mail merge'i çalıştırdığınızda tüm alanlar otomatik olarak güncellenir

### Alanları Program Aracılığıyla Güncelleme

Belgenin tamamındaki alanları açıkça güncellemek için [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/)'i aramanız yeterlidir. Belgenin bir bölümünde yer alan alanları güncellemek için bir [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) nesnesi edinin ve [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/) yöntemini çağırın. Aspose.Words'de, [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) özelliğini kullanarak belge ağacındaki [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) vb. gibi herhangi bir düğüm için bir **Range** alabilirsiniz. Tek bir alanın sonucunu [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/) yöntemini çağırarak güncelleyebilirsiniz.

### İşleme Sırasında Sayfayla İlgili Alanların Otomatik Güncellenmesi

Bir belgeyi PDF veya XPS gibi sabit sayfalı bir formata dönüştürme işlemini gerçekleştirdiğinizde, Aspose.Words, belgenin üst bilgilerinde/alt bilgilerinde bulunan sayfa düzeniyle ilgili `PAGE`, `PAGEREF` alanlarını otomatik olarak güncelleyecektir. Bu davranış, bir belge yazdırılırken Microsoft Word'un davranışını taklit eder.

Belgedeki diğer tüm alanları güncellemek istiyorsanız belgeyi oluşturmadan önce [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/)'i aramanız gerekir.

Aşağıdaki kod örneği, bir belgeyi oluşturmadan önce tüm alanların nasıl güncelleştirileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

{{% /alert %}}

### Mail Merge Sırasında Otomatik Alan Güncellemesi

Bir Mail Merge çalıştırdığınızda belgedeki tüm alanlar otomatik olarak güncellenecektir. Bunun nedeni mail merge'in bir alan güncellemesi durumu olmasıdır. Program bir Mail Merge alanıyla karşılaşır ve sonucunu güncellemesi gerekir; bu, veri kaynağından değerin alınıp alana eklenmesini içerir. Mantık elbette daha karmaşıktır; örneğin, belgenin/mail merge bölgesinin sonuna gelindiğinde ancak birleştirilecek daha fazla veri olduğunda, bölgenin kopyalanması ve yeni alan kümesinin güncellenmesi gerekir.

## Kirli Niteliğe Sahip Alanları Güncelle

w:dirty, belge açıldığında yalnızca belirttiğiniz alanı yenileyecek alan düzeyinde bir özelliktir. MS Word'e bu alanı yalnızca belgenin bir sonraki açılışında yenilemesini söyler. Alanların kirli özniteliğiyle güncellenip güncellenmeyeceğini belirlemek için [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) özelliğini kullanabilirsiniz. **update_dirty_fields** değeri `True` olarak ayarlandığında [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) veya [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) özelliği için `True` değeri olan tüm alanlar belge yüklendiğinde güncellenir.

Aşağıdaki kod örneği, kirli özelliğine sahip alanların nasıl güncelleştirileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## Kaydetmeden Önce LastSavedTime Özelliğini Güncelleyin

Belgeyi kaydederken ilgili yerleşik belge özelliği [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/)'nin güncellenip güncellenmeyeceği [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) özelliğini kullanabilirsiniz.

Aşağıdaki kod örneği bu özelliğin nasıl güncelleştirileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}


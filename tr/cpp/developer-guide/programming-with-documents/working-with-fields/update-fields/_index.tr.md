---
title: C++ içindeki Alanları Güncelle
second_title: Aspose.Words için C++
articleTitle: Alanları Güncelle
linktitle: Alanları Güncelle
description: "C++ içindeki alanları nasıl güncelleyeceğinizi öğrenin. Alanları programlı olarak güncelleyin veya C++ API kullanarak otomatik alan güncellemesini kullanın."
type: docs
weight: 30
url: /tr/cpp/update-fields/
timestamp: 2024-01-27-14-07-04
---

Genellikle Microsoft Word içine eklenen bir alan zaten güncel bir değer içerir. Örneğin, alan bir formül veya sayfa numarasıysa, belgenin verilen sürümü için doğru hesaplanan değeri içerecektir. Ancak, iki belgeyi birleştirmek veya verilerle doldurmak gibi alanlara sahip bir belge oluşturan veya değiştiren bir uygulamanız varsa, belgenin yararlı olması için ideal olarak tüm alanların güncellenmesi gerekir.

## Alanlar Nasıl Güncellenir

Bir belge yüklendiğinde, Aspose.Words davranışını taklit eder Microsoft Word alanları otomatik güncelleme seçeneği ile kapatılır. Davranış şu şekilde özetlenebilir:

- bir belgeyi açtığınızda / kaydettiğinizde alanlar bozulmadan kalır
- bir belgedeki tüm alanları açıkça güncelleştirebilirsiniz, örneğin, gerektiğinde `TOC`'ı yeniden oluşturabilirsiniz
- PDF veya XPS konumuna getirdiğinizde, üstbilgi / altbilgilerdeki sayfa numaralandırmasıyla ilgili alanlar güncellenir
- Mail Merge çalıştırdığınızda tüm alanlar otomatik olarak güncellenir

### Alanları Programlı Olarak Güncelle

Tüm belgedeki alanları açıkça güncellemek için [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) yöntemini çağırmanız yeterlidir. Belgenin bir bölümünde yer alan alanları güncellemek için bir [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) nesnesi edinin ve [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/) yöntemini çağırın. Aspose.Words 'da, belge ağacındaki herhangi bir düğüm için **Range** alabilirsiniz, örneğin [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), vb. [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/) özelliğini kullanarak.[Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/) yöntemini çağırarak tek bir alanın sonucunu güncelleyebilirsiniz.

### Oluşturma Sırasında Sayfayla İlgili Alanların Otomatik Olarak Güncellenmesi

Bir belgeyi PDF veya XPS gibi sabit sayfa biçimine dönüştürdüğünüzde, Aspose.Words belgenin üstbilgilerinde / altbilgilerinde bulunan sayfa düzeni ile ilgili alanları `PAGE`, `PAGEREF` otomatik olarak güncelleyecektir. Bu davranış, bir belgeyi yazdırırken Microsoft Word davranışını taklit eder.

Belgedeki diğer tüm alanları güncellemek istiyorsanız, belgeyi oluşturmadan önce [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) öğesini çağırmanız gerekir.

Aşağıdaki kod örneği, bir belgeyi oluşturmadan önce tüm alanların nasıl güncelleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### Mail Merge Sırasında Otomatik Alan Güncellemesi

Bir Mail Merge çalıştırdığınızda, belgedeki tüm alanlar otomatik olarak güncellenir. Bunun nedeni, Mail Merge bir alan güncellemesi durumudur. Program bir Mail Merge alanıyla karşılaşır ve değerini veri kaynağından alıp alana eklemeyi içeren sonucunu güncellemesi gerekir. Mantık elbette daha karmaşıktır, örneğin, belgenin / Mail Merge bölgesinin sonuna ulaşıldığında, ancak birleştirilecek daha fazla veri olduğunda, bölgenin çoğaltılması ve yeni alan kümesinin güncellenmesi gerekir.

## Kaydetmeden Önce LastSavedTime Özelliğini Güncelleyin

Belgeyi kaydederken karşılık gelen yerleşik belge özelliğinin [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) güncellenip güncellenmeyeceğini [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/) özelliğini kullanabilirsiniz.

Aşağıdaki kod örneği, bu özelliğin nasıl güncelleştirileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}



---
title: Java 'daki Alanları Güncelle
second_title: Aspose.Words için Java
articleTitle: Güncelleme Alanları
linktitle: Güncelleme Alanları
description: "Alanları nasıl güncelleyeceğinizi öğrenin Java. Alanları programlı olarak veya otomatik alan güncellemesi kullanarak Java API"
type: docs
weight: 30
url: /tr/java/update-field/
timestamp: 2024-01-27-14-07-04
---

Tipik olarak, Microsoft Word'e bir alan eklemek zaten güncel bir değer içerir. Örneğin, alan bir formül ya da sayfa numarasıysa, bu verilen belgenin versiyonu için doğru hesaplanmış değeri içerecektir. Ama eğer senin bir uygulamanda iki belgeyi birleştirme ya da verilerle doldurma gibi belgede alanlar olan ya da alanları değiştiren bir uygulama varsa, o zaman ideal olarak tüm alanlar belgeden faydalanmak için güncellenmelidir.

## Alanları Nasıl Güncelleştirirsiniz?

Bir belge yüklendiğinde, Aspose.Words otomatik alan güncelleme seçeneği kapalı olduğunda Microsoft Word'in davranışını taklit eder. Davranışı aşağıdaki şekilde özetlenebilir:

- bir belgeyi açtığınızda/kaydettiğinizde alanlar bütün kalır
- belgenin tüm alanlarını açıkça güncelleyebilirsiniz mesela, yeniden oluştur `TOC` ihtiyacınız olduğunda
- baston bir PDF veya XPS yazdığınızda başlık / altbilgiler içindeki sayfa numaralandırma alanlarıyla ilgili alanlar güncellenir
- siz çalıştırdığınızda mail merge tüm alanlar otomatik olarak güncellenir

### Alanları Programatik Olarak Güncelle

Tüm belgedeki alanları açıkça güncellemek için sadece [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) yöntemini çağırın. Belgenin bir bölümünde bulunan alanları güncellemek için bir [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) nesnesi elde edin ve [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) yöntemini çağırın. Aspose.Words 'da, belgedeki herhangi bir düğüme karşılık gelen bir **Range** elde edebilirsiniz, örneğin, [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) vb. [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) özelliğini kullanarak. Tek bir alanın sonucunu güncellemek için [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) yöntemini çağırın.

### Rendirirken Sayfa İlgili Alanların Otomatik Güncellenmesi

Bir belgeyi sabit sayfa biçimine dönüştürdüğünüzde örneğin PDF veya XPS'e, Aspose.Words otomatik olarak sayfa düzeniyle ilgili alanları günceller; `PAGE`, `PAGEREF` belgenin başlık/altbilgilerindeki alanlar. Bu davranış, bir belgeyi yazdırabilirken Microsoft Word'un davranışını taklit eder.

Eğer belgenin diğer tüm alanları güncellenmek istiyorsanız, sonra belgeyi işlemekten önce [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) çağırmanız gerekir.

Aşağıdaki örnek, bir belge işlenmeden önce tüm alanları nasıl güncelleyeceğinizi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Otomatik Alan Güncelleme Mail Merge

Bir mail merge çalıştırdığınızda, belgedeki tüm alanlar otomatik olarak güncellenecek. Çünkü mail merge bir alan güncellemesi durumudur. Programı bir mail merge alanı ile karşılaştığında ve sonucunu güncellemesi gerekiyorsa, bu da veri kaynağından değer almasını ve onu alana eklemesini gerektirir. Tabii ki mantık daha karmaşıktır, mesela belgenin/ mail merge bölgenin sonunda ulaşılır ancak birleştirilecek daha fazla veri varsa bölge çoğaltılmalı ve yeni alan kümesi güncellenmelidir.

## Güncelleştir Kirli Öznitelik İçeren Alanlar

The w:dirty bir alan düzeyinde özniteliktir ve belge açıldığında yalnızca belirttiğiniz alanı yeniler. Bu, MS Word'e bir sonraki belgenin açıldıktan sonra bu alanı yalnızca yenilemesini söyler. Alanların güncellenip güncellenmeyeceğini belirtmek için LoadOptions.setUpdateDirtyFields() özelliğini kullanabilirsiniz. LoadOptions.setUpdateDirtyFields()'ın değeri *true* olarak ayarlandığında, `Field.IsDirty` veya `FieldChar.IsDirty` özelliği *true* değerine sahip tüm alanlar belge yüklendiğinde güncellenir

Aşağıdaki kod örneği, kirli özniteliğe sahip alanları güncelleme şeklini gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## LastSavedTime özelliğini kaydetmeden önce güncelle

Bu [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) özelliğini kullanabilir veya belgenin kaydedilmesi sırasında ilgili yerleşik belge özelliği [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime)'i güncellemek için.

Aşağıdaki kod örneğinde bu özelliğin nasıl güncelleneceği gösterilmiştir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}

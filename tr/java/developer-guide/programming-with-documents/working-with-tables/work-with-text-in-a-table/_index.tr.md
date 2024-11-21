---
title: Bir Tabloda Metinle Çalışın
second_title: Aspose.Words için Java
articleTitle: Bir Tabloda Metinle Çalışın
linktitle: Bir Tabloda Metinle Çalışın
description: "Bir tablodaki metni Java ile değiştirin. Tablo veya Hücreden Basit Metni Java kullanarak ayıkla."
type: docs
weight: 60
url: /tr/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Önceki makalelerde bahsedildiği gibi, bir tablo genellikle düz metin içerir, diğer içerikler, resimler veya hatta diğer tablolar bile bir hücrede olabilir.

Tabloya metin veya diğer içerik eklemek, [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) sınıfının uygun yöntemlerini kullanarak yapılır ve bu, **"Bir Masa Oluştur"** makalesinde açıklanmıştır. Bu makale, zaten var olan bir tabloda metinle nasıl çalışılacağı hakkında konuşacaktır.

## Bir Tablo İçindeki Metni Değiştir

Tablo, Aspose.Words içindeki herhangi bir düğüm gibi, [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) nesnesüne erişebilir. Masa aralığı nesnesini kullanarak bir tablodaki metni değiştirebilirsiniz.

Değiştirme sırasında özel karakterler kullanma kabiliyeti şu anda destekleniyor, bu yüzden mevcut metni çoklu paragraf metniyle değiştirmek mümkün. Bunu yapmak için, buna karşılık gelen [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) yönteminde açıklanan özel karakterlerinizi kullanmanız gerekir.

{{% alert color="primary" %}}

Tipik olarak, metin yer değiştirme hücre düzeyinde (hücre başına) veya paragraf düzeyinde yapılmalıdır.

{{% /alert %}}

Aşağıdaki kod örneği bir tablo tüm hücrelerindeki bir metin dizgisinin tüm örneklerini nasıl değiştirdiğini göstermektedir:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## Bir Tablodan Basit Metni Çıkartın

**Range** nesnesi kullanarak, tüm tablo aralığında yöntemleri de çağırabilir ve tabloyu düz metin olarak ayıklayabilirsiniz. Bunu yapmak için, [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text) özelliğini kullanın

Aşağıdaki kod örneği bir tablonun metin aralığını yazdırma gösteriyor:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

Tek tek tablo hücrelerinden içerik ayıklamak için aynı teknik kullanılır.

Aşağıdaki kod örneği bir satır ve tablo öğelerinin metin aralığını yazdırmayı gösterir:

{{% /alert %}}

Aşağıdaki kod örneği satır ve tablo öğelerinin metin aralığını nasıl yazdığını gösterir.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## Alternatif Tablo Metinle Çalışma

Microsoft Word tablolarının bir `table title` ve bir `table description`'i var ki tablo içinde bulunan bilgilerin alternatif bir metin gösterimini sağlar.

Aspose.Words'de, ayrıca bir tablo başlığı ve açıklamayı [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) ve [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) özellikleri kullanarak da ekleyebilirsiniz. Bu özellikler ISO/IEC 29500'e uygun olan DOCX belgeleri için anlamlıdır. Formatları ISO/IEC 29500'ten daha yeni kaydetmeyi" den "Bu özellikler göz ardı edilir.

Aşağıdaki kod örneği bir tablonun başlığı ve açıklaması özelliklerini ayarlama nasıl gösteriyor:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}

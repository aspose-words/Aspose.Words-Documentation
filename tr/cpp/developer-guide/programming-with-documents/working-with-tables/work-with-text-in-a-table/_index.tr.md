---
title: Tablodaki Metinle Çalışma
second_title: Aspose.Words için C++
articleTitle: Tablodaki Metinle Çalışma
linktitle: Tablodaki Metinle Çalışma
description: "Tablodaki metni C++ olarak değiştirin. C++ kullanarak Tablodan veya Hücreden Düz Metin ayıklayın."
type: docs
weight: 60
url: /tr/cpp/work-with-text-in-a-table/
---

Önceki makalelerde belirtildiği gibi, bir tablo genellikle düz metin içerir, ancak resimler ve hatta diğer tablolar gibi diğer içerikler tablo hücrelerine yerleştirilebilir.

Tabloya metin veya başka içerik eklemek, [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) sınıfının uygun yöntemleri kullanılarak gerçekleştirilir ve **"Create a Table"** makalesinde açıklanır. Bu yazıda, zaten var olan bir tablodaki metinle nasıl çalışılacağı hakkında konuşacağız.

## Tablodaki Metni Değiştirme

Tablo, Aspose.Words içindeki diğer düğümler gibi, [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) nesnesine erişebilir. Tablo aralığı nesnesini kullanarak tablodaki metni değiştirebilirsiniz.

Değiştirirken özel karakterler kullanma yeteneği şu anda desteklenmektedir, bu nedenle mevcut metni çok paragraflı metinle değiştirmek mümkündür. Bunu yapmak için, ilgili [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) yönteminde açıklanan özel meta karakterleri kullanmanız gerekir.

{{% alert color="primary" %}}

Tipik olarak, metin değiştirme hücre düzeyinde (hücre başına) veya paragraf düzeyinde yapılmalıdır.

{{% /alert %}}

Aşağıdaki kod örneği, tüm tablonun hücrelerindeki bir metin dizesinin tüm örneklerinin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "replace-text.h" >}}

## Tablodan veya Hücreden Düz Metin Çıkarma

**Range** nesnesini kullanarak, tüm tablo aralığındaki yöntemleri de çağırabilir ve tabloyu düz metin olarak ayıklayabilirsiniz. Bunu yapmak için [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/) özelliğini kullanın.

Aşağıdaki kod örneği, bir tablonun metin aralığının nasıl yazdırılacağını gösterir:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "extract-text.h" >}}

Aynı teknik, yalnızca tek tek tablo hücrelerinden içerik çıkarmak için kullanılır.

Aşağıdaki kod örneği, satır ve tablo öğelerinden oluşan bir metin aralığının nasıl yazdırılacağını gösterir:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "print-text-range-row-and-table.h" >}}

## Alternatif Tablo Metni ile Çalışma

Microsoft Word tablolarda, tabloda yer alan bilgilerin alternatif bir metinsel temsilini sağlayan bir `table title` ve `table description` bulunur.

Aspose.Words içinde [Title](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_title/) ve [Description](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_description/) özelliklerini kullanarak bir tablo başlığı ve açıklaması da ekleyebilirsiniz. Bu özellikler, ISO / IEC 29500'e uygun DOCX belgeler için anlamlıdır. ISO /IEC 29500'den önceki biçimlerde kaydederken, bu özellikler göz ardı edilir.

Aşağıdaki kod örneği, bir tablonun başlık ve açıklama özelliklerinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "table-title-and-description.h" >}}
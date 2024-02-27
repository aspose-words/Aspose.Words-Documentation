---
title: Tablodaki Metinle Çalışma
second_title: Python için Aspose.Words
articleTitle: Tablodaki Metinle Çalışma
linktitle: Tablodaki Metinle Çalışma
description: "Python'teki bir tablodaki metni değiştirin. Python'i kullanarak Tablodan veya Hücreden Düz Metin Çıkarın."
type: docs
weight: 60
url: /tr/python-net/work-with-text-in-a-table/
---

Önceki makalelerde de belirtildiği gibi, bir tablo genellikle düz metin içerir, ancak resimler ve hatta başka tablolar gibi diğer içerikler de tablo hücrelerine yerleştirilebilir.

Tabloya metin veya başka içerik eklemek, [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) sınıfının uygun yöntemleri kullanılarak gerçekleştirilir ve **"Tablo Oluştur"** makalesinde anlatılmıştır. Bu yazımızda mevcut bir tablodaki metinle nasıl çalışılacağından bahsedeceğiz.

## Tablodaki Metni Değiştirme

Aspose.Words'teki diğer düğümler gibi tablonun da [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) nesnesine erişimi vardır. Tablo aralığı nesnesini kullanarak tablodaki metni değiştirebilirsiniz.

Değiştirme sırasında özel karakterleri kullanma yeteneği şu anda desteklenmektedir, dolayısıyla mevcut metni çok paragraflı metinle değiştirmek mümkündür. Bunu yapmak için ilgili [Replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/#str_str) yönteminde açıklanan özel meta karakterleri kullanmanız gerekir.

{{% alert color="primary" %}}

Tipik olarak metin değiştirme işlemi hücre düzeyinde (hücre başına) veya paragraf düzeyinde yapılmalıdır.

{{% /alert %}}

Aşağıdaki kod örneği, bir tablonun tamamının hücrelerindeki bir metin dizesinin tüm örneklerinin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "replace-text.py" >}}

## Düz Metni Tablodan veya Hücreden Çıkarma

**Range** nesnesini kullanarak ayrıca tüm tablo aralığındaki yöntemleri çağırabilir ve tabloyu düz metin olarak çıkarabilirsiniz. Bunu yapmak için [Text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) özelliğini kullanın

Aşağıdaki kod örneği, bir tablonun metin aralığının nasıl yazdırılacağını gösterir:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "extract-text.py" >}}

Aynı teknik yalnızca tek tek tablo hücrelerinden içerik çıkarmak için kullanılır.

Aşağıdaki kod örneği, satır ve tablo öğelerinden oluşan bir metin aralığının nasıl yazdırılacağını gösterir:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "print-text-range-row-and-table.py" >}}

## Alternatif Tablo Metni ile Çalışmak

Microsoft Word tabloları, tabloda yer alan bilgilerin alternatif metinsel temsilini sağlayan bir `table title` ve `table description`'e sahiptir.

Aspose.Words'de [Title](https://reference.aspose.com/words/python-net/aspose.words.tables/table/title/) ve [Description](https://reference.aspose.com/words/python-net/aspose.words.tables/table/description/) özelliklerini kullanarak tablo başlığı ve açıklaması da ekleyebilirsiniz. Bu özellikler, ISO/IEC 29500'e uygun DOCX belgeleri için anlamlıdır. ISO/IEC 29500'den önceki formatlarda kaydederken bu özellikler dikkate alınmaz.

Aşağıdaki kod örneği, bir tablonun başlık ve açıklama özelliklerinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "table-title-and-description.py" >}}


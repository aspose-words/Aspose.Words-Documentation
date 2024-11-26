---
title: Tablodaki Metinle Çalışma
second_title: .NET için Aspose.Words
articleTitle: Tablodaki Metinle Çalışma
linktitle: Tablodaki Metinle Çalışma
description: "C#'teki bir tablodaki metni değiştirin. C#'i kullanarak Tablodan veya Hücreden Düz Metin Çıkarın."
type: docs
weight: 60
url: /tr/net/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Önceki makalelerde de belirtildiği gibi, bir tablo genellikle düz metin içerir, ancak resimler ve hatta başka tablolar gibi diğer içerikler de tablo hücrelerine yerleştirilebilir.

Tabloya metin veya başka içerik eklemek, [DocumentBuilder](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/) sınıfının uygun yöntemleri kullanılarak gerçekleştirilir ve **"Tablo Oluştur"** makalesinde anlatılmıştır. Bu yazımızda mevcut bir tablodaki metinle nasıl çalışılacağından bahsedeceğiz.

## Tablodaki Metni Değiştirme

Aspose.Words'teki diğer düğümler gibi tablonun da [Range](https://reference.aspose.com/words/tr/net/aspose.words/range/) nesnesine erişimi vardır. Tablo aralığı nesnesini kullanarak tablodaki metni değiştirebilirsiniz.

Değiştirme sırasında özel karakterleri kullanma yeteneği şu anda desteklenmektedir, dolayısıyla mevcut metni çok paragraflı metinle değiştirmek mümkündür. Bunu yapmak için ilgili [Replace](https://reference.aspose.com/words/tr/net/aspose.words/range/replace/) yönteminde açıklanan özel meta karakterleri kullanmanız gerekir.

{{% alert color="primary" %}}

Tipik olarak metin değiştirme işlemi hücre düzeyinde (hücre başına) veya paragraf düzeyinde yapılmalıdır.

{{% /alert %}}

Aşağıdaki kod örneği, bir tablonun tamamının hücrelerindeki bir metin dizesinin tüm örneklerinin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "replace-text.cs" >}}

## Düz Metni Tablodan veya Hücreden Çıkarma

**Range** nesnesini kullanarak ayrıca tüm tablo aralığındaki yöntemleri çağırabilir ve tabloyu düz metin olarak çıkarabilirsiniz. Bunu yapmak için [Text](https://reference.aspose.com/words/tr/net/aspose.words/range/text/) özelliğini kullanın

Aşağıdaki kod örneği, bir tablonun metin aralığının nasıl yazdırılacağını gösterir:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "extract-text.cs" >}}

Aynı teknik yalnızca tek tek tablo hücrelerinden içerik çıkarmak için kullanılır.

Aşağıdaki kod örneği, satır ve tablo öğelerinden oluşan bir metin aralığının nasıl yazdırılacağını gösterir:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "print-text-range-row-and-table.cs" >}}

## Alternatif Tablo Metni ile Çalışmak

Microsoft Word tabloları, tabloda yer alan bilgilerin alternatif metinsel temsilini sağlayan bir `table title` ve `table description`'e sahiptir.

Aspose.Words'de [Title](https://reference.aspose.com/words/tr/net/aspose.words.tables/table/title/) ve [Description](https://reference.aspose.com/words/tr/net/aspose.words.tables/table/description/) özelliklerini kullanarak tablo başlığı ve açıklaması da ekleyebilirsiniz. Bu özellikler, ISO/IEC 29500'e uygun DOCX belgeleri için anlamlıdır. ISO/IEC 29500'den önceki formatlarda kaydederken bu özellikler dikkate alınmaz.

Aşağıdaki kod örneği, bir tablonun başlık ve açıklama özelliklerinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "table-title-and-description.cs" >}}

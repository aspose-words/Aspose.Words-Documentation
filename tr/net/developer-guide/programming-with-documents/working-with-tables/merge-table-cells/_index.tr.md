---
title: C#'te Tablo Hücrelerini Birleştir
second_title: .NET için Aspose.Words
articleTitle: Tablo Hücrelerini Birleştir
linktitle: Tablo Hücrelerini Birleştir
description: "C#'te tablo hücreleri nasıl birleştirilir? Bir tablodaki hücrelerin C# kullanılarak birleştirilip birleştirilmediğini kontrol edin."
type: docs
weight: 40
url: /tr/net/working-with-merged-cells/
---

Bazen bir tablodaki belirli satırlar, tablonun tüm genişliğini kaplayan bir başlık veya büyük metin blokları gerektirir. Tablonun doğru tasarımı için kullanıcı birkaç tablo hücresini tek bir hücrede birleştirebilir. Aspose.Words, HTML içeriğinin içe aktarılması da dahil olmak üzere tüm giriş formatlarıyla çalışırken birleştirilmiş hücreleri destekler.

## Tablo Hücreleri Nasıl Birleştirilir

Aspose.Words'te birleştirilmiş hücreler, [CellFormat](https://reference.aspose.com/words/tr/net/aspose.words.tables/cellformat/) sınıfının aşağıdaki özellikleriyle temsil edilir:

- Hücrenin yatay hücre birleşiminin parçası olup olmadığını açıklayan [HorizontalMerge](https://reference.aspose.com/words/tr/net/aspose.words.tables/cellformat/horizontalmerge/)
- Hücrenin dikey hücre birleşiminin parçası olup olmadığını açıklayan [VerticalMerge](https://reference.aspose.com/words/tr/net/aspose.words.tables/cellformat/verticalmerge/)

Bu özelliklerin değerleri hücrelerin birleştirme davranışını belirler:

- Birleştirilmiş hücre dizisindeki ilk hücre [CellMerge.First](https://reference.aspose.com/words/tr/net/aspose.words.tables/cellmerge/)'e sahip olacaktır
- Daha sonra birleştirilen tüm hücrelerde [CellMerge.Previous](https://reference.aspose.com/words/tr/net/aspose.words.tables/cellmerge/) bulunur
- Birleştirilmemiş bir hücrede [CellMerge.None](https://reference.aspose.com/words/tr/net/aspose.words.tables/cellmerge/) bulunur

{{% alert color="primary" %}}

Bazen mevcut belge hücreleri bir tabloya yüklenirken birleştirilmiş görünebilirler. Ancak aslında tek bir uzun hücre olabilir; bazen Microsoft Word birleştirilmiş hücreleri bu şekilde dışa aktarır. Bireysel hücrelerle çalışmaya çalışırken bu kafa karıştırıcı olabilir, ancak bunun ne zaman olacağına dair belirli bir model yok gibi görünüyor.

{{% /alert %}}

## Hücrenin Birleştirilip Birleştirilmediğini Kontrol Edin

Bir hücrenin birleştirilmiş hücre dizisinin parçası olup olmadığını kontrol etmek için **HorizontalMerge** ve **VerticalMerge** özelliklerini kontrol etmemiz yeterlidir.

Aşağıdaki kod örneği, yatay ve dikey hücre birleştirme türünün nasıl yazdırılacağını gösterir:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "check-cells-merged.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx)'ten indirebilirsiniz.

{{% /alert %}}

## DocumentBuilder'ı Kullanırken Tablo Hücrelerini Birleştir

[DocumentBuilder](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/) ile oluşturulan bir tablodaki hücreleri birleştirmek için, birleştirmenin beklendiği her hücre için uygun birleştirme türünü (önce **CellMerge.First**, ardından **CellMerge.Previous**) ayarlamanız gerekir.

Ayrıca, birleştirmenin gerekli olmadığı hücreler için birleştirme ayarını temizlemeyi de unutmamalısınız; bu, birleştirilmeyen ilk hücreyi **CellMerge.None** olarak ayarlayarak yapılabilir. Bu yapılmazsa tablodaki tüm hücreler birleştirilecektir.

Aşağıdaki kod örneği, ilk satırdaki hücrelerin yatay olarak birleştirildiği iki satırlı bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-merge.cs" >}}

Aşağıdaki kod örneği, ilk sütundaki hücrelerin dikey olarak birleştirildiği iki sütunlu bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "vertical-merge.cs" >}}

## Diğer Durumlarda Tablo Hücrelerini Birleştir

Mevcut bir tabloda olduğu gibi **DocumentBuilder**'in kullanılmadığı diğer durumlarda, hücreleri önceki yöntemle birleştirmek o kadar kolay olmayabilir. Bunun yerine, birleştirme özelliklerinin hücrelere uygulanmasıyla ilgili temel işlemleri, görevi çok daha kolay hale getiren bir yöntemle tamamlayabiliriz. Bu yöntem, bir tablodaki hücre aralığını birleştirmek için çağrılan Birleştirme otomasyonu yöntemine benzer.

Aşağıdaki kod, belirtilen aralıktaki tablo hücrelerini, verilen hücreden başlayıp son hücreye kadar birleştirecektir. Bu durumda aralık birden çok satıra veya sütuna yayılabilir:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cells.cs" >}}

Aşağıdaki kod örneği, belirli iki hücre arasında bir hücre aralığının nasıl birleştirileceğini gösterir:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cell-range.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx)'ten indirebilirsiniz.

{{% /alert %}}

Kullandığınız .NET Framework sürümüne bağlı olarak bu yöntemi bir uzantı yöntemine dönüştürerek geliştirmek isteyebilirsiniz. Bu durumda, `cell1.Merge(cell2)` gibi bir hücre aralığını birleştirmek için bu yöntemi doğrudan bir hücre üzerinde çağırabilirsiniz.

## HTML Tablosunda Dikey ve Yatay Birleştirilmiş Hücreler

Önceki yazılarımızda da söylediğimiz gibi Microsoft Word'teki bir tablo, bağımsız satırlardan oluşan bir kümedir. Her satırda diğer satırların hücrelerinden bağımsız bir dizi hücre bulunur. Dolayısıyla Microsoft Word tablosunda "sütun" diye bir nesne yoktur ve "1. sütun", "tablodaki her satırın 1. hücrelerinin kümesi" gibi bir şeydir. Bu, kullanıcıların örneğin 1. satırın 2cm ve 1cm genişliğinde iki hücreden oluştuğu ve 2. satırın 1cm ve 2cm genişliğinde iki farklı hücreden oluştuğu bir masaya sahip olmasına olanak tanır. Ve Aspose.Words bu tablo konseptini desteklemektedir.

HTML'deki bir tablo temelde farklı bir yapıya sahiptir: her satır aynı sayıda hücreye sahiptir ve (görev için önemlidir) her hücre, bir sütundaki tüm hücreler için aynı olan, karşılık gelen sütunun genişliğine sahiptir. **HorizontalMerge** ve **VerticalMerge** yanlış bir değer döndürürse aşağıdaki kod örneğini kullanın:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "print-horizontal-and-vertical-merged.cs" >}}

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-and-vertical-merge-helper-classes.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Yatay Olarak Birleştirilmiş Hücrelere Dönüştür

Bazen Microsoft Word'in bazı yeni sürümleri, hücreler yatay olarak birleştirildiğinde artık birleştirme işaretlerini kullanmadığından hangi hücrelerin birleştirildiğini tespit etmek mümkün olmayabilir. Ancak hücrelerin, birleştirme bayrakları kullanılarak genişliklerine göre yatay olarak bir hücrede birleştirildiği durumlarda, Aspose.Words, hücreleri dönüştürmek için `ConvertToHorizontallyMergedCells` yöntemini sağlar. Bu yöntem basitçe tabloyu dönüştürür ve gerektiğinde yeni hücreler ekler.

Aşağıdaki kod örneği, yukarıdaki yöntemin çalışmasını gösterir:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "convert-to-horizontally-merged-cells.cs" >}}

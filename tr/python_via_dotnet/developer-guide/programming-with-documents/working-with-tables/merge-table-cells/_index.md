---
title: Tablo Hücrelerini Birleştir
second_title: Python via .NET için Aspose.Words
articleTitle: Tablo Hücrelerini Birleştir
linktitle: Tablo Hücrelerini Birleştir
description: "Python'te tablo hücreleri nasıl birleştirilir? Bir tablodaki hücrelerin Python kullanılarak birleştirilip birleştirilmediğini kontrol edin."
type: docs
weight: 40
url: /tr/python-net/working-with-merged-cells/
---

Bazen bir tablodaki belirli satırlar, tablonun tüm genişliğini kaplayan bir başlık veya büyük metin blokları gerektirir. Tablonun doğru tasarımı için kullanıcı birkaç tablo hücresini tek bir hücrede birleştirebilir. Aspose.Words, HTML içeriğinin içe aktarılması da dahil olmak üzere tüm giriş formatlarıyla çalışırken birleştirilmiş hücreleri destekler.

## Tablo Hücreleri Nasıl Birleştirilir

Aspose.Words'te birleştirilmiş hücreler, [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) sınıfının aşağıdaki özellikleriyle temsil edilir:

- Hücrenin yatay hücre birleşiminin parçası olup olmadığını açıklayan [HorizontalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/horizontal_merge/)
- Hücrenin dikey hücre birleşiminin parçası olup olmadığını açıklayan [VerticalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/vertical_merge/)

Bu özelliklerin değerleri hücrelerin birleştirme davranışını belirler:

- Birleştirilmiş hücre dizisindeki ilk hücre [CellMerge.First](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#first)'e sahip olacaktır
- Daha sonra birleştirilen tüm hücrelerde [CellMerge.Previous](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#previous) bulunur
- Birleştirilmemiş bir hücrede [CellMerge.None](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#none) bulunur

{{% alert color="primary" %}}

Bazen, mevcut belge hücreleri bir tabloya yüklenirken birleştirilmiş görünebilirler. Ancak aslında tek bir uzun hücre olabilir; bazen Microsoft Word birleştirilmiş hücreleri bu şekilde dışa aktarır. Tek tek hücrelerle çalışmaya çalışırken bu kafa karıştırıcı olabilir, ancak bunun ne zaman olacağına dair belirli bir model yok gibi görünüyor.

{{% /alert %}}

## Hücrenin Birleştirilip Birleştirilmediğini Kontrol Edin

Bir hücrenin birleştirilmiş hücre dizisinin parçası olup olmadığını kontrol etmek için **HorizontalMerge** ve **VerticalMerge** özelliklerini kontrol etmemiz yeterlidir.

Aşağıdaki kod örneği, yatay ve dikey hücre birleştirme türünün nasıl yazdırılacağını gösterir:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "check-cells-merged.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx)'ten indirebilirsiniz.

{{% /alert %}}

## DocumentBuilder'ı Kullanırken Tablo Hücrelerini Birleştir

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ile oluşturulan bir tablodaki hücreleri birleştirmek için, birleştirmenin beklendiği her hücre için uygun birleştirme türünü (önce **CellMerge.First**, ardından **CellMerge.Previous**) ayarlamanız gerekir.

Ayrıca, birleştirmenin gerekli olmadığı hücreler için birleştirme ayarını temizlemeyi de unutmamalısınız; bu, birleştirilmeyen ilk hücreyi **CellMerge.None** olarak ayarlayarak yapılabilir. Bu yapılmazsa tablodaki tüm hücreler birleştirilecektir.

Aşağıdaki kod örneği, ilk satırdaki hücrelerin yatay olarak birleştirildiği iki satırlı bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "horizontal-merge.py" >}}

Aşağıdaki kod örneği, ilk sütundaki hücrelerin dikey olarak birleştirildiği iki sütunlu bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "vertical-merge.py" >}}

## Diğer Durumlarda Tablo Hücrelerini Birleştir

Mevcut bir tabloda olduğu gibi **DocumentBuilder**'in kullanılmadığı diğer durumlarda, hücreleri önceki yöntemle birleştirmek o kadar kolay olmayabilir. Bunun yerine, birleştirme özelliklerinin hücrelere uygulanmasıyla ilgili temel işlemleri, görevi çok daha kolay hale getiren bir yöntemle tamamlayabiliriz. Bu yöntem, bir tablodaki hücre aralığını birleştirmek için çağrılan Birleştirme otomasyonu yöntemine benzer.

Aşağıdaki kod, belirtilen aralıktaki tablo hücrelerini, verilen hücreden başlayıp son hücreye kadar birleştirecektir. Bu durumda aralık birden çok satıra veya sütuna yayılabilir:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cells.py" >}}

Aşağıdaki kod örneği, belirli iki hücre arasında bir hücre aralığının nasıl birleştirileceğini gösterir:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cell-range.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx)'ten indirebilirsiniz.

{{% /alert %}}

Kullandığınız Framework sürümüne bağlı olarak bu yöntemi bir uzantı yöntemine dönüştürerek geliştirmek isteyebilirsiniz. Bu durumda, `cell1.Merge(cell2)` gibi bir hücre aralığını birleştirmek için bu yöntemi doğrudan bir hücre üzerinde çağırabilirsiniz.

## Yatay Olarak Birleştirilmiş Hücrelere Dönüştür

Bazen Microsoft Word'in bazı yeni sürümleri, hücreler yatay olarak birleştirildiğinde artık birleştirme işaretlerini kullanmadığından hangi hücrelerin birleştirildiğini tespit etmek mümkün olmayabilir. Ancak hücrelerin, birleştirme bayrakları kullanılarak genişliklerine göre yatay olarak bir hücrede birleştirildiği durumlarda, Aspose.Words, hücreleri dönüştürmek için `ConvertToHorizontallyMergedCells` yöntemini sağlar. Bu yöntem basitçe tabloyu dönüştürür ve gerektiğinde yeni hücreler ekler.

Aşağıdaki kod örneği, yukarıdaki yöntemin çalışmasını gösterir:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "convert-to-horizontally-merged-cells.py" >}}

---
title: Tablo Hücrelerini C++ içinde Birleştir
second_title: Aspose.Words için C++
articleTitle: Tablo Hücrelerini Birleştir
linktitle: Tablo Hücrelerini Birleştir
description: "Tablo hücreleri C++ içinde nasıl birleştirilir. Tablodaki hücrelerin C++ kullanılarak birleştirilip birleştirilmediğini kontrol edin."
type: docs
weight: 40
url: /tr/cpp/merge-table-cells/
timestamp: 2024-01-27-14-07-04
---

Bazen bir tablodaki belirli satırlar, tablonun tüm genişliğini kaplayan bir başlık veya büyük metin blokları gerektirir. Tablonun doğru tasarımı için, kullanıcı birkaç tablo hücresini bir araya getirebilir. Aspose.Words HTML içeriğin içe aktarılması da dahil olmak üzere tüm giriş biçimleriyle çalışırken birleştirilmiş hücreleri destekler.

## Tablo Hücreleri Nasıl Birleştirilir

Aspose.Words'de, birleştirilmiş hücreler [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) sınıfının aşağıdaki özellikleriyle temsil edilir:

- [HorizontalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_horizontalmerge/) hücrenin yatay hücre birleşmesinin bir parçası olup olmadığını açıklar
- [VerticalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_verticalmerge/) hücrenin dikey hücre birleşmesinin bir parçası olup olmadığını açıklar

Bu özelliklerin değerleri, hücrelerin birleştirme davranışını belirler:

- Birleştirilmiş hücreler dizisindeki ilk hücre [CellMerge.First](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/) değerine sahip olacaktır
- Sonradan birleştirilen tüm hücreler [CellMerge.Previous](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/) değerine sahip olacaktır
- Birleştirilmemiş bir hücrede [CellMerge.None](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/) olacaktır

{{% alert color="primary" %}}

Bazen, mevcut belge hücrelerini bir tabloya yüklerken birleştirilmiş olarak görünürler. Ancak, aslında bir uzun hücre olabilir - bazen Microsoft Word birleştirilmiş hücreleri bu şekilde dışa aktarır. Bu, tek tek hücrelerle çalışmaya çalışırken kafa karıştırıcı olabilir, ancak bunun ne zaman gerçekleştiğine dair belirli bir model yok gibi görünüyor.

{{% /alert %}}

## Hücrenin Birleştirilip Birleştirilmediğini kontrol edin

Bir hücrenin birleştirilmiş hücreler dizisinin bir parçası olup olmadığını kontrol etmek için **HorizontalMerge** ve **VerticalMerge** özelliklerini kontrol etmemiz yeterlidir.

Aşağıdaki kod örneği, yatay ve dikey hücre birleştirme türünün nasıl yazdırılacağını gösterir:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "check-cells-merged.h" >}}

## Tablodaki Birleştirilmiş Hücreler {#merge-cells-in-a-table}

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) ile oluşturulan bir tablodaki hücreleri birleştirmek için, birleştirmenin beklendiği her hücre için uygun birleştirme türünü ayarlamanız gerekir – önce **CellMerge.First** ve sonra **CellMerge.Previous**.

Ayrıca, birleştirmenin gerekli olmadığı hücreler için birleştirme ayarını temizlemeyi de unutmamalısınız – bu, birleştirilmeyen ilk hücreyi **CellMerge.None** olarak ayarlayarak yapılabilir. Bu yapılmazsa, tablodaki tüm hücreler birleştirilir.

Aşağıdaki kod örneği, ilk satırdaki hücrelerin yatay olarak birleştirildiği iki satırlık bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-merge.h" >}}

Aşağıdaki kod örneği, ilk sütundaki hücrelerin dikey olarak birleştirildiği iki sütunlu bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "vertical-merge.h" >}}

## Diğer Durumlarda Tablo Hücrelerini Birleştir

Varolan bir tabloda olduğu gibi **DocumentBuilder** 'ın kullanılmadığı diğer durumlarda, hücreleri önceki şekilde birleştirmek o kadar kolay olmayabilir. Bunun yerine, birleştirme özelliklerini hücrelere uygulamakla ilgili temel işlemleri, görevi çok daha kolaylaştıran bir yöntemle sarabiliriz. Bu yöntem, bir tablodaki hücre aralığını birleştirmek için çağrılan Birleştirme otomasyonu yöntemine benzer.

Aşağıdaki kod, belirtilen hücreden başlayıp son hücrede biten tablo hücrelerini belirtilen aralıkta birleştirecektir. Bu durumda, aralık birden çok satır veya sütunu kapsayabilir:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cells.h" >}}

Aşağıdaki kod örneği, belirtilen iki hücre arasında bir hücre aralığının nasıl birleştirileceğini gösterir:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cell-range.h" >}}

Kullandığınız Çerçevenin sürümüne bağlı olarak, bu yöntemi bir uzantı yöntemine dönüştürerek daraltmak isteyebilirsiniz. Bu durumda, `cell1.Merge(cell2)` gibi bir hücre aralığını birleştirmek için bu yöntemi doğrudan bir hücrede çağırabilirsiniz.

## Tablodaki Dikey ve Yatay Birleştirilmiş Hücreler {#vertical-and-Horizontal-merged-cells-in-the-table}

Önceki makalelerde söylediğimiz gibi, Microsoft Word içindeki bir tablo bağımsız satırlar kümesidir. Her satır, diğer satırların hücrelerinden bağımsız bir dizi hücreye sahiptir. Bu nedenle, Microsoft Word tablosunda "sütun" diye bir nesne yoktur ve "1 st sütunu", "tablodaki her satırın 1 st hücrelerinin kümesi" gibi bir şeydir. Bu, kullanıcıların örneğin 1 st satırının iki hücreden (2 cm ve 1 cm) ve 2 nd satırının iki farklı hücreden (1 cm ve 2 cm genişliğinde) oluştuğu bir tabloya sahip olmalarını sağlar. Ve Aspose.Words bu tablo kavramını destekler.

HTML 'deki bir tablo esasen farklı bir yapıya sahiptir: her satır aynı sayıda hücreye sahiptir ve (görev için önemlidir) her hücre karşılık gelen sütunun genişliğine sahiptir, bir sütundaki tüm hücreler için aynıdır. Bu nedenle, **HorizontalMerge** ve **VerticalMerge** yanlış bir değer döndürürse, aşağıdaki kod örneğini kullanın:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "print-horizontal-and-vertical-merged.h" >}}

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-and-vertical-merge-helper-classes.h" >}}

## Yatay Olarak Birleştirilmiş Hücrelere Dönüştür {#convert-to-horizontally-merged-cells}

Hücreler yatay olarak birleştirildiğinde Microsoft Word'in bazı yeni sürümleri artık birleştirme bayraklarını kullanmadığı için bazen hangi hücrelerin birleştirildiğini tespit etmek mümkün değildir. Ancak, hücrelerin birleştirme bayrakları kullanılarak genişliklerine göre yatay olarak bir hücreye birleştirildiği durumlar için Aspose.Words, hücreleri dönüştürmek için `ConvertToHorizontallyMergedCells` yöntemini sağlar. Bu yöntem yalnızca tabloyu dönüştürür ve gerektiğinde yeni hücreler ekler.

Aşağıdaki kod örneği, işlemdeki yukarıdaki yöntemi gösterir:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "convert-to-horizontally-merged-cells.h" >}}

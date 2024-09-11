---
title: Birleştirme Tablo Hücreleri içinde Java
second_title: Aspose.Words için Java
articleTitle: Birleştir Tabloları Hücreleri
linktitle: Birleştir Tabloları Hücreleri
description: "Java 'da tablo hücrelerini nasıl birleştireceğiniz. Bir tablodaki hücrelerin birleştirilip birleştirilmediğini kontrol edin Java."
type: docs
weight: 40
url: /tr/java/working-with-merged-cells/
---

Bazen bir tablodaki bazı satırlar bir başlık veya tam tablo genişliğini kaplayan büyük metin blokları gerektirir. İyi bir tablo tasarımı için kullanıcı, birkaç tablo hücresini tek bir hücrede birleştirebilir. Aspose.Words, tüm giriş formatlarında çalışırken birleştirilmiş hücreleri destekler, hatta html içeriği içe aktarırken bile.

## Tablo Hücrelerini Birleştirme Nasıl Yapılır?

Aspose.Words 'da birleştirilmiş hücreler aşağıdaki özelliklerle temsil edilir: [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) sınıfı

- [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) bir hücrenin hücrelerin yatay birleşiminden bir parçası olup olmadığını açıklar
- [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) hücrenin bir hücrelerin dikey birleşmesinin bir parçası olup olmadığını açıklar

Bu özelliklerin değerleri hücre birleşim davranışını belirler:

- Bir dizi birleştirilmiş hücrelerin ilk hücresi [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST) ile işaretlenecektir
- Birden fazla birleştirilmiş hücreler [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)'a sahip olacaktır
Bir hücre birleşmemişse, [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE) olacak

![work-with-merged-cells-aspose-words-java](working-with-merged-cells-1.png)

{{% alert color="primary" %}}

Bazen, mevcut belge hücrelerinin bir tabloya yüklenmesi sırasında onlar birleşmiş olarak görünürler. Ancak, aslında bir uzun hücre olabilir - bazen Microsoft Word bu şekilde birleştirilmiş hücreleri dışarı aktarır. Bu tek tek hücrelerle çalışmayı denediğinde kafa karıştırıcı olabilir ama bunun ne zaman meydana geldiğiyle ilgili bir kalıp gibi görünmüyor.

{{% /alert %}}

## Hücre Birleşip Birleşmediğini Kontrol Etmek

Bir hücrenin birleştirilmiş hücrelerin bir dizisinin parçası olup olmadığını kontrol etmek için, sadece **HorizontalMerge** ve **VerticalMerge** özelliklerini kontrol ederiz.

Aşağıdaki kod örneğinde yatay ve dikey hücre birleşimi türü nasıl yazdırılır gösterilmektedir:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## DocumentBuilder Kullanırken Tablo Hücrelerini Birleştirin

Bir [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ile oluşturulan tabloda hücreleri birleştirmeniz için, her birinde birleştirmenin gerçekleşmesi beklenen hücreler için uygun birleştirme türünü ayarlamanız gerekir – önce **CellMerge.First** sonra **CellMerge.Previous**.

Ayrıca, birleştirme ayarını gereksiz olan hücrelerde temizlemeyi hatırlamalısınız - bu, **CellMerge.None**'a ilk birleştirme olmayan hücreyi ayarlayarak yapılabilir. Böyle yapılmazsa tablo içindeki tüm hücreler birleşir.

Aşağıdaki kod örneği, iki satır içeren bir tablo oluşturmak için nasıl kullanılacağını göstermektedir ve ilk satırdaki hücreler yatay olarak birleştirilir:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

Aşağıdaki kod örneğinde ilk sütundaki hücrelerin dikey olarak birleştirilmesiyle nasıl iki sütunlu bir tablo oluşturulduğu gösterilmiştir:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## Diğer Durumlarda Tablo Hücrelerini Birleştir

Diğer durumlarda **DocumentBuilder** kullanılmadığında, örneğin mevcut bir tabloya, bu şekilde hücrelerin birleştirilmesi o kadar kolay olmayabilir. Bunun yerine, hücrelere birleştirme özellikleri uygulayacak temel işlemleri kapsayan bir yöntemle sarabiliriz ki bu, görevi çok daha kolay hale getirir. Bu yöntem, bir tablodaki hücrelerin bir aralığını birleştirmek için çağrılan Birleştir otomasyon yöntemine benzer.

Aşağıdaki kod belirtilen aralıkta tablo hücrelerini birleştirerek başlayacak verilen hücrede ve bitiş hücresinde sonlandıracak. Bu durumda aralığın birden fazla satır veya sütun kapsayabileceği:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

Aşağıdaki kod örneği iki belirtilen hücreler arasındaki bir hücre aralığını birleştirme gösteriyor:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## HTML Tablosunda Dikey ve Yatay Birleştirilmiş Hücreler

Önceki makalelerde söylediğimiz gibi, bir tablo Microsoft Word içindeki bağımsız satırların bir kümesidir. Her satır diğer satırlardaki hücrelerden bağımsız bir dizi hücreye sahiptir. Böylece, Microsoft Word tablosunda böyle bir nesne yoktur 'bir sütun', ve '' 1. sütun '' her satırdaki ilk hücrelerin kümesi gibi şeydir 1. Bu kullanıcıların örneğin 1. satırda iki hücre - 2 cm ve 1 cm, ve 2. satırda iki farklı hücre - genişlikleri 1 cm ve 2 cm olan bir tabloya sahip olmasına izin verir. Ve Aspose.Words bu tablo kavramını destekler.

HTML'de bir tablo esasen farklı bir yapıya sahiptir: Her satır aynı sayıda hücreye sahiptir ve (görev için önemlidir) her hücre karşılık gelen sütunun genişliğini gösterir, tüm hücreler bir sütunda olduğu gibi. Eğer **HorizontalMerge** ve **VerticalMerge** yanlış bir değer döndürürse, aşağıdaki kod örneğini kullanın:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## HorizontallyMergedCells'e Dönüştür

Bazen birleştirilmiş hücrelerin hangilerinin olduğunu tespit etmek mümkün değildir çünkü bazı yeni sürümler Microsoft Word daha fazla yatay olarak birleştirilmiş olduğunda birleştirme bayraklarını kullanmaz. Ancak hücrelerin genişlikleri ile yatay olarak bir hücreye birleştirilirken "birleştirme bayrakları" kullanılarak oluşturulan durumlarda Aspose.Words sağlar `ConvertToHorizontallyMergedCells` yöntemini hücrelere dönüştürmek için. Bu yöntem tabloyu yalnızca dönüştürür ve gerektiğinde yeni hücreler ekler.

Aşağıdaki kod örneği yukarıdaki yöntemi çalışırken göstermektedir:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}

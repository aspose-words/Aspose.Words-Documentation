---
title: Masa Pozisyonu Java
second_title: Aspose.Words için Java
articleTitle: Masaya Konumlandırma
linktitle: Masaya Konumlandırma
description: "Masa pozisyonunu belirtin Java. Bir tablo hizalaması al, bir yüzen masa pozisyonu almak ve ayarlamak için Java kullanın."
type: docs
weight: 50
url: /tr/java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Kayan tablolar ve satır içi tablolar var:

* **İnline tablolar** metniyle aynı katmanda yerleştirilir ve sadece tabloyu yukarıdan ve aşağıdan saran bir metin akışı içinde yer alırlar. İç içe geçmiş tablolar her zaman, onları koyduğunuz paragraflar arasında görünecektir.
*) **Yüzen tablolar** metni üzerine katmanlarla ve tablonun paragraf içindeki göreli konumu, tablo kotası tarafından belirlenir. Bunun için, yüzen tablonun belgedeki pozisyonu dikey ve yatay konumlandırma ayarları tarafından etkilenir.

Bazen bir masayı bir belgedeki belirli bir şekilde konumlandırmanız gerekir. Bunu yapmak için, hizalama araçlarını kullanmanız ve tablo ile çevreleyen metin arasında girintileri ayarlamanız gerekir.

Bu makalede konumlandırma için Aspose.Words'ın ne seçenekleri sağladığını tartışacağız.

## Çizgili Tablo Konumunu Belirtin

Bir satır içi tablonun konumunu Aspose.Words, API ve [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) özelliğini kullanarak ayarlayabilirsiniz. Böylece, tablonun belgenin sayfasına göre hizalamasını ayarlayabilirsiniz.

Aşağıdaki kod örneği, bir tablonun konumunu nasıl ayarlayacağını göstermektedir:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Yüzen Masa Hizalama Alın

Tablo metin sarma ayarı **Around**'a ayarlanırsa, tablo'nun yatay ve dikey hizalamasını [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) ve [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) özelliklerini kullanarak elde edebilirsiniz.

**diğer türdeki metin sarma** ile, satır içi tablo hizalaması almak için **Alignment** özelliğini kullanabilirsiniz.

Aşağıdaki kod örneği tablo hizalaması alma şeklin gösterilmektedir:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Yüzen Masa Pozisyonu Alın

 Kayan bir tablonun pozisyonu aşağıdaki özelliklere göre belirlenir:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) – bir yüzen tablonun yatay konumlandırmasını hesaplamak için bir nesne
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) – bir yüzen tablonun dikey konumlandırılmasını hesaplamak için bir nesne
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) - mutlak yatay yüzer masa pozisyonu
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) – mutlak dikey yüzen tablo pozisyonu
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) – diğer yüzen nesnelerle örtüşme etkinleştirme/devre dışı bırakma seçeneği
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) - yüzen tablo göreceli yatay hizalama.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) – yüzer tablo göreceli dikey hizalama.

Aşağıdaki kod örneği bir yüzen masanın pozisyonunu nasıl alacağını göstermektedir:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Türevi Masa Pozisyonunu Ayarla

Almak gibi, bir yüzen masanın konumunu aynı Aspose.Words API kullanarak ayarlayabilirsin.

Hizalama ve dikey ve yatay mesafenin birleştirilmiş özellikler olduğu ve birinin diğerini sıfırlayabileceği gerçeğini bilmenin önemi vardır. Örneğin, **RelativeHorizontalAlignment** ayarlamak, **AbsoluteHorizontalDistance**'i varsayılan değerine sıfırlayacak ve bunun tersini de yapar. Aynısı true dikey düzenleme için de geçerlidir.

Aşağıdaki kod örneği bir yüzen tablonun konumunu ayarlamaya nasıl bakılır olduğunu göstermektedir:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Tablo ile Çevresindeki Metnin Arasındaki Mesafe Al

Aspose.Words ayrıca tablolar ve çevreleyen metinler arasındaki mesafeleri bulmak için bir fırsat sağlar:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) -- yukarıdan uzaklığın değeri
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) algılanan uzaklığın değeri
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) – sağdaki mesafe değeri
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) - soldaki mesafe değeri

Aşağıdaki kod örneği bir tablo ve onun etrafındaki metnin arasındaki mesafeyi nasıl alacağınızı gösterir:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}

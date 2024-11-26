---
title: Python'te Tablo Konumu
second_title: Python için Aspose.Words
articleTitle: Bir Tabloyu Konumlandırın
linktitle: Bir Tabloyu Konumlandırın
description: "Python'te tablo konumunu belirtin. Python'i kullanarak bir tablo hizalaması alın, kayan tablo konumunu alın ve ayarlayın."
type: docs
weight: 50
url: /tr/python-net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Kayan tablolar ve satır içi tablolar vardır:

* **Satır içi tablolar**, metinle aynı katmana yerleştirilir ve yalnızca yukarıdaki ve alttaki tabloyu çevreleyen bir metin akışına yerleştirilir. Satır içi tablolar her zaman yerleştirdiğiniz paragrafların arasında görünecektir.
* **Yüzen tablolar** metin üzerinde katmanlanmıştır ve tablonun paragrafa göre konumu, tablo bağlantısı tarafından belirlenir. Bu nedenle kayan tablonun belgedeki konumu dikey ve yatay konumlandırma ayarlarından etkilenir.

Bazen bir tabloyu belgede belirli bir şekilde konumlandırmanız gerekir. Bunu yapmak için hizalama araçlarını kullanmanız ve tablo ile onu çevreleyen metin arasındaki girintileri ayarlamanız gerekir.

Bu yazımızda Aspose.Words’in konumlandırma için hangi seçenekleri sunduğunu ele alacağız.

## Satır İçi Tablo Konumunu Belirtin

Aspose.Words API ve [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/) özelliğini kullanarak satır içi tablonun konumunu ayarlayabilirsiniz. Böylece tablonun hizalamasını belge sayfasına göre ayarlayabilirsiniz.

Aşağıdaki kod örneği, satır içi tablonun konumunun nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "inline-table-position.py" >}}

## Yüzen Tablo Hizalamasını Alın

Tablo metni kaydırma **Around** olarak ayarlanmışsa, [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) ve [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) özelliklerini kullanarak tablonun yatay ve dikey hizalamasını sağlayabilirsiniz.

**diğer metin sarma türleri** ile [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/) özelliğini kullanarak satır içi tablo hizalaması elde edebilirsiniz.

Aşağıdaki kod örneği, tablonun hizalamasının nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-table-position.py" >}}

## Yüzen Masa Konumunu Alın

 Kayan tablonun konumu aşağıdaki özellikler kullanılarak belirlenir:

* [HorizontalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/horizontal_anchor/) – kayan bir tablonun yatay konumunu hesaplamak için bir nesne
* [VerticalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/vertical_anchor/) – kayan bir tablonun dikey konumunu hesaplamak için bir nesne
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_horizontal_distance/) – mutlak yatay kayan tabla konumu
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_vertical_distance/) – mutlak dikey kayan tabla konumu
* [AllowOverlap](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_overlap/) – diğer kayan nesnelerle örtüşmeyi etkinleştirme/devre dışı bırakma seçeneği
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) – kayan tablonun göreceli yatay hizalaması.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) – kayan tablonun göreceli dikey hizalaması.

Aşağıdaki kod örneği, kayan tablonun konumunun nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-floating-table-position.py" >}}

## Kayan Tabla Konumunu Ayarla

Tıpkı alma gibi, aynı Aspose.Words API'yi kullanarak kayan tablonun konumunu ayarlayabilirsiniz.

Hizalama ile yatay ve dikey mesafenin birleşik özellikler olduğunu ve birinin diğerini sıfırlayabileceğini bilmek önemlidir. Örneğin, **RelativeHorizontalAlignment**'in ayarlanması **AbsoluteHorizontalDistance**'yi varsayılan değerine sıfırlayacaktır veya bunun tersi de geçerlidir. Aynı şey dikey düzenleme için true'dir.

Aşağıdaki kod örneği, kayan tablonun konumunun nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "floating-table-position.py" >}}

## Tablo ve Çevreleyen Metin Arasındaki Mesafeyi Alın

Aspose.Words ayrıca tablolar ve çevresindeki metinler arasındaki mesafeleri bulma fırsatı da sağlar:

- [DistanceTop](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) – yukarıdan olan mesafenin değeri
- [DistanceBottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/) – algı mesafesinin değeri
- [DistanceRight](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/) – sağdaki mesafe değeri
- [DistanceLeft](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/) – soldaki mesafe değeri

Aşağıdaki kod örneği, bir tablo ile onu çevreleyen metin arasındaki mesafenin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "distance-between-table-surrounding-text.py" >}}

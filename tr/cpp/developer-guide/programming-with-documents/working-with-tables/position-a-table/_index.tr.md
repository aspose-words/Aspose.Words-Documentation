---
title: Tablo Konumu C++
second_title: Aspose.Words için C++
articleTitle: Bir Tabloyu Konumlandır
linktitle: Bir Tabloyu Konumlandır
description: "Tablo konumunu C++ olarak belirtin. Tablo hizalamasını alın, C++ kullanarak kayan tablo konumunu alın ve ayarlayın."
type: docs
weight: 50
url: /tr/cpp/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Kayan tablolar ve satır içi tablolar vardır:

* **Inline tables**, metinle aynı katmana yerleştirilir ve yalnızca yukarıdaki ve altındaki tabloyu çevreleyen bir metin akışına yerleştirilir. Satır içi tablolar her zaman yerleştirdiğiniz paragraflar arasında görünür.
* **Floating tables** metnin üzerine katmanlanır ve tablonun paragrafa göre konumu tablo bağlantısı tarafından belirlenir. Bu nedenle, belgedeki kayan tablonun konumu dikey ve yatay konumlandırma ayarlarından etkilenir.

Bazen bir tabloyu bir belgede belirli bir şekilde konumlandırmanız gerekir. Bunu yapmak için hizalama araçlarını kullanmanız ve tablo ile çevresindeki metin arasındaki girintileri ayarlamanız gerekir.

Bu makalede, Aspose.Words 'ın konumlandırma için hangi seçenekleri sağladığını tartışacağız.

## Satır İçi Tablo Konumunu Belirtin

Satır içi tablonun konumunu Aspose.Words API ve [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/) özelliğini kullanarak ayarlayabilirsiniz. Böylece, tablonun belge sayfasına göre hizalamasını ayarlayabilirsiniz.

Aşağıdaki kod örneği, satır içi bir tablonun konumunun nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## Kayan Tablo Hizalamasını Alın

Tablo metni kaydırma **Around** olarak ayarlanmışsa, tablonun yatay ve dikey hizalamasını [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) ve [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) özelliklerini kullanarak alabilirsiniz.

**other types of text wrapping** ile [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/) özelliğini kullanarak satır içi tablo hizalaması elde edebilirsiniz.

Aşağıdaki kod örneği, tablonun hizalamasını nasıl alacağınızı gösterir:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## Kayan Tablo Konumunu Al

 Kayan bir tablonun konumu aşağıdaki özellikler kullanılarak belirlenir:

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) - kayan bir tablonun yatay konumunu hesaplamak için bir nesne
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) - kayan bir tablonun dikey konumunu hesaplamak için bir nesne
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) - mutlak yatay kayan tablo konumu
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) - mutlak dikey kayan tabla konumu
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) - diğer kayan nesnelerle çakışmayı etkinleştirme / devre dışı bırakma seçeneği
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) - kayan tablo göreli yatay hizalama.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) - kayan tablo göreli dikey hizalama.

Aşağıdaki kod örneği, kayan bir tablonun konumunu nasıl alacağınızı gösterir:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## Kayan Tablo Konumunu Ayarla

Tıpkı almak gibi, kayan bir tablonun konumunu da aynı Aspose.Words API kullanarak ayarlayabilirsiniz.

Hizalamanın, yatay ve dikey mesafenin birleşik özellikler olduğunu ve birinin diğerini sıfırlayabileceğini bilmek önemlidir. Örneğin, **RelativeHorizontalAlignment** değerini ayarlamak **AbsoluteHorizontalDistance** değerini varsayılan değerine sıfırlar ve bunun tersi de geçerlidir. Aynısı dikey düzenleme için de geçerlidir.

Aşağıdaki kod örneği, kayan bir tablonun konumunun nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## Tablo ve Çevresindeki Metin arasındaki Mesafeyi Alın

Aspose.Words ayrıca tablolar ve çevresindeki metinler arasındaki mesafeleri bulma fırsatı da sağlar:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) - yukarıdan uzaklığın değeri
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) - algı mesafesinin değeri
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) - sağdaki mesafe değeri
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) - soldaki mesafe değeri

Aşağıdaki kod örneği, bir tablo ile çevresindeki metin arasındaki mesafenin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}

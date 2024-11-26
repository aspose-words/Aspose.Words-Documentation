---
title: Python'te Bölünmüş Tablo
second_title: Python için Aspose.Words
articleTitle: Bölünmüş Tablo
linktitle: Bölünmüş Tablo
description: "Python'te tabloyu bölme. Bir tabloyu iki ayrı tabloya nasıl bölerim Python."
type: docs
weight: 100
url: /tr/python-net/split-table/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words Document Object Model'de temsil edilen bir tablo, bağımsız satırlardan ve hücrelerden oluşur ve bu da tabloyu bölmeyi kolaylaştırır.

Bir tabloyu iki tabloya bölmek üzere işlemek için, bazı satırları orijinal tablodan yeni tabloya taşımamız yeterlidir. Bunu yapmak için tabloyu bölmek istediğimiz satırı seçmemiz gerekiyor.

Aşağıdaki basit adımları izleyerek orijinal tablodan iki tablo oluşturabiliriz:

1. Taşınan satırları korumak için çocukları klonlamadan tablonun bir kopyasını oluşturun ve bunları orijinal tablonun arkasına ekleyin
2. Belirtilen satırdan başlayarak sonraki tüm satırları bu ikinci tabloya taşıyın

Aşağıdaki kod örneği, bir tablonun belirli bir satırda iki tabloya nasıl bölüneceğini gösterir:

{{< gist "aspose-words-gists" "d31be78b25b463dd4eb31c85c60fc549" "split-table.py" >}}

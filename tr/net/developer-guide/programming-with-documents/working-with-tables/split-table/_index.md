---
title: C#'te Bölünmüş Tablo
second_title: .NET için Aspose.Words
articleTitle: Bölünmüş Tablo
linktitle: Bölünmüş Tablo
description: "C#'te tabloyu bölme. Bir tabloyu iki ayrı tabloya nasıl bölerim C#."
type: docs
weight: 100
url: /tr/net/split-table/
---

Aspose.Words Document Object Model'de temsil edilen bir tablo, bağımsız satırlardan ve hücrelerden oluşur ve bu da tabloyu bölmeyi kolaylaştırır.

Bir tabloyu iki tabloya bölmek için, bazı satırları orijinal tablodan yeni tabloya taşımamız yeterlidir. Bunu yapmak için tabloyu bölmek istediğimiz satırı seçmemiz gerekiyor.

Aşağıdaki basit adımları izleyerek orijinal tablodan iki tablo oluşturabiliriz:

1. Taşınan satırları korumak için çocukları klonlamadan tablonun bir kopyasını oluşturun ve bunları orijinal tablonun arkasına ekleyin
2. Belirtilen satırdan başlayarak sonraki tüm satırları bu ikinci tabloya taşıyın

Aşağıdaki kod örneği, bir tablonun belirli bir satırda iki tabloya nasıl bölüneceğini gösterir:

{{< gist "aspose-words-gists" "4ab56c5443822fa44f4cac1f45af32b7" "split-table.cs" >}}

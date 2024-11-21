---
title: Tabloyu C++ olarak Böl
second_title: Aspose.Words için C++
articleTitle: Bölünmüş Masa
linktitle: Bölünmüş Masa
description: "Tabloyu C++ olarak bölün. Bir tabloyu iki ayrı tabloya ayırma C++."
type: docs
weight: 100
url: /tr/cpp/split-table/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words Belge Nesnesi Modelinde temsil edilen bir tablo, bağımsız satırlardan ve hücrelerden oluşur ve bu da bir tablonun bölünmesini kolaylaştırır.

Bir tabloyu iki tabloya bölecek şekilde değiştirmek için, bazı satırları orijinal tablodan yenisine taşımamız yeterlidir. Bunu yapmak için, tabloyu bölmek istediğimiz satırı seçmemiz gerekir.

Bu basit adımları izleyerek orijinal tablodan iki tablo oluşturabiliriz:

1. Taşınan satırları tutmak ve orijinal tablodan sonra eklemek için çocukları klonlamadan tablonun bir klonunu oluşturun
2. Belirtilen satırdan başlayarak, sonraki tüm satırları bu ikinci tabloya taşıyın

Aşağıdaki kod örneği, bir tablonun belirli bir satırdaki iki tabloya nasıl bölüneceğini gösterir:

{{< gist "aspose-words-gists" "29ce7710cab8c3ef18e912a5813e0d36" "split-table.h" >}}

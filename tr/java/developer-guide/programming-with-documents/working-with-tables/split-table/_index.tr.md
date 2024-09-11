---
title: Split Table in Java
second_title: Aspose.Words için Java
articleTitle: Bölünmüş Tablo
linktitle: Bölünmüş Tablo
description: "Tabloyu Java'a böl. Bir tabloyu iki ayrı tabloya ayırmak için nasıl yapılır Java."
type: docs
weight: 100
url: /tr/java/split-table/
---

Bir tablo, Aspose.Words Document Object Model'de temsil edilen, bağımsız satır ve hücrelerden oluşur, bu da bir tabloyu kolayca bölmesini sağlar.

Bir tabloyu iki tabloya bölmek için bir satır kümesini orijinal tablodan yeni olanına taşımamız gerekir. Bunu yapmak için, tabloyu bölmek istediğimiz satırı seçmemiz gerekiyor.

Bu basit adımlarla orijinal tablodan iki tablo oluşturabiliriz:

1. Oluşturma çocuklar kopyalamadan tablonun bir kopyası, taşınan satırları ve orijinal tabloya eklemeyi tutmak için
2. Belirtilen satırdan başlayarak, bu ikinci tabloya tüm sonraki satırları taşıyın

Aşağıdaki kod örneği bir tabloyu belirli bir satıra göre iki tabloya bölmenin nasıl yapılacağını göstermektedir:

{{< gist "aspose-words-gists" "ff5affdcea04dcd20d1b872f9503dbfe" "split-table.java" >}}

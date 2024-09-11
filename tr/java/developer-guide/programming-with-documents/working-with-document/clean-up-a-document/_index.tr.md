---
title: Bir Belgeyi Temizle Java
second_title: Aspose.Words için Java
articleTitle: Bir Belgeyi Temizle
linktitle: Bir Belgeyi Temizle
description: "Kullanılmayan veya yinelenen bilgileri azaltmak için çıktı boyutunu ve işlem süresini azaltmak için kullanılmayan stilleri, kullanılmayan yerleşik stilleri, yinelenen stilleri veya kullanılmayan listeleri Java'u kullanarak kaldırın."
type: docs
weight: 30
url: /tr/java/clean-up-a-document/
---

Bazen, belge boyutunu ve işleme süresini azaltmak için kullanılmayan veya çoğaltılmış bilgileri kaldırmanız gerekebilir.

Kullanılmayan verileri, stil veya listeler gibi bilgileri veya yinelenen bilgileri el ile bulup kaldırabilirsiniz ancak bunları yaparken Aspose.Words tarafından sunulan özellikler ve yetkinlikler ile bunu yapmak çok daha uygun olacaktır.

[CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) sınıfı belgenin temizlenmesi için seçenekler belirtmenizi sağlar. Tekrar eden stilleri ya da sadece kullanılmayan stilleri ya da listeleri belgeyi kaldırmak için, [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) yöntemini kullanabilirsiniz.

## Bir Belge'den Kullanılmayan Bilgileri Kaldırın

Kullanabileceğiniz " [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) " ve "" [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) "" özellikleri, "Kullanılmayan" olarak işaretlenmiş stilleri tespit etmek ve kaldırmak için kullanılabilir.

Kullanılabilir [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) özelliğini, "kullanılmayan" olarak işaretlenmiş listeleri ve liste tanımlarını tespit etmek ve kaldırmak için kullanabilirsiniz.

Aşağıdaki kod örneği, bir belgeden kullanılmayan stilleri kaldırmanın nasıl yapılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Bir Belge'den Tekrar Eden Bilgileri Kaldır

Ayrıca, tüm yinelenen stilleri orijinal stil ile değiştirmek ve bir belgeden yinelenenler kaldırmak için [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) özelliğini kullanabilirsiniz.

Aşağıdaki kod örneği bir belgeden yinelenen stilleri nasıl kaldıracağınızı göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}

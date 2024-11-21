---
title: C++ içindeki Bir Belgeyi Temizleme
second_title: Aspose.Words için C++
articleTitle: Bir Belgeyi Temizleme
linktitle: Bir Belgeyi Temizleme
description: "C++ kullanarak çıktı boyutunu ve işlem süresini azaltmak için kullanılmayan veya yinelenen bilgileri kaldırın. Kullanılmayan stilleri, kullanılmayan yerleşik stilleri, yinelenen stilleri veya kullanılmayan listeleri kaldırın."
type: docs
weight: 30
url: /tr/cpp/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Bazen çıktı belgesinin boyutunu ve işlem süresini azaltmak için kullanılmayan veya yinelenen bilgileri kaldırmanız gerekebilir.

Stiller veya listeler gibi kullanılmayan verileri bulup kaldırabilirken veya bilgileri manuel olarak çoğaltabilirken, Aspose.Words tarafından sağlanan özellikleri ve yetenekleri kullanarak bunu yapmak çok daha uygun olacaktır.

[CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options) sınıfı, belge temizleme seçeneklerini belirlemenizi sağlar. Yinelenen stilleri veya yalnızca kullanılmayan stilleri veya listeleri belgeden kaldırmak için [Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/) yöntemini kullanabilirsiniz.

## Kullanılmayan Bilgileri Belgeden Kaldırma

"Kullanılmamış" olarak işaretlenmiş stilleri algılamak ve kaldırmak için [UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/) ve [UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/) özelliklerini kullanabilirsiniz.

"Kullanılmamış" olarak işaretlenmiş listeleri ve liste tanımlarını algılamak ve kaldırmak için [UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/) özelliğini kullanabilirsiniz.

Aşağıdaki kod örneği, bir belgeden yalnızca kullanılmayan stillerin nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## Yinelenen Bilgileri Belgeden Kaldırma

Tüm yinelenen stilleri orijinal stille değiştirmek ve kopyaları bir belgeden kaldırmak için [DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/) özelliğini de kullanabilirsiniz.

Aşağıdaki kod örneği, yinelenen stillerin bir belgeden nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}

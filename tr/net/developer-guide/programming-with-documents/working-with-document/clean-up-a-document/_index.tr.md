---
title: C#'te Bir Belgeyi Temizleme
second_title: .NET için Aspose.Words
articleTitle: Belgeyi Temizleme
linktitle: Belgeyi Temizleme
description: "C# kullanarak çıktı boyutunu ve işlem süresini azaltmak için kullanılmayan veya yinelenen bilgileri kaldırın. Kullanılmayan stilleri, kullanılmayan yerleşik stilleri, yinelenen stilleri veya kullanılmayan listeleri kaldırın."
type: docs
weight: 30
url: /tr/net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Bazen çıktı belgesinin boyutunu ve işlem süresini azaltmak için kullanılmayan veya kopyalanan bilgileri kaldırmanız gerekebilir.

Stiller veya listeler gibi kullanılmayan verileri bulup kaldırabilir veya bilgileri manuel olarak çoğaltabilirsiniz, ancak bunu Aspose.Words tarafından sağlanan özellik ve yetenekleri kullanarak yapmak çok daha uygun olacaktır.

[CleanupOptions](https://reference.aspose.com/words/tr/net/aspose.words/cleanupoptions/) sınıfı, belge temizleme seçeneklerini belirtmenize olanak tanır. Yinelenen stilleri veya yalnızca kullanılmayan stilleri veya listeleri belgeden kaldırmak için [Cleanup](https://reference.aspose.com/words/tr/net/aspose.words/document/cleanup/) yöntemini kullanabilirsiniz.

## Kullanılmayan Bilgileri Belgeden Kaldırma

"Kullanılmamış" olarak işaretlenen stilleri tespit etmek ve kaldırmak için [UnusedStyles](https://reference.aspose.com/words/tr/net/aspose.words/cleanupoptions/unusedstyles/) ve [UnusedBuiltinStyles](https://reference.aspose.com/words/tr/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) özelliklerini kullanabilirsiniz.

"Kullanılmıyor" olarak işaretlenen listeleri ve liste tanımlarını tespit edip kaldırmak için [UnusedLists](https://reference.aspose.com/words/tr/net/aspose.words/cleanupoptions/unusedlists/) özelliğini kullanabilirsiniz.

Aşağıdaki kod örneği, bir belgeden yalnızca kullanılmayan stillerin nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## Bir Belgeden Yinelenen Bilgileri Kaldırma

Tüm yinelenen stilleri orijinal stille değiştirmek ve belgedeki kopyaları kaldırmak için [DuplicateStyle](https://reference.aspose.com/words/tr/net/aspose.words/cleanupoptions/duplicatestyle/) özelliğini de kullanabilirsiniz.

Aşağıdaki kod örneği, yinelenen stillerin bir belgeden nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}

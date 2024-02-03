---
title: Python'te Bir Belgeyi Temizleme
second_title: Python via .NET için Aspose.Words
articleTitle: Belgeyi Temizleme
linktitle: Belgeyi Temizleme
description: "Python'i kullanarak çıktı boyutunu ve işlem süresini azaltmak için kullanılmayan veya yinelenen bilgileri kaldırın. Kullanılmayan stilleri, kullanılmayan yerleşik stilleri, yinelenen stilleri veya kullanılmayan listeleri kaldırın."
type: docs
weight: 30
url: /tr/python-net/clean-up-a-document/
---

Bazen çıktı belgesinin boyutunu ve işlem süresini azaltmak için kullanılmayan veya kopyalanan bilgileri kaldırmanız gerekebilir.

Stiller veya listeler gibi kullanılmayan verileri bulup kaldırabilir veya bilgileri manuel olarak çoğaltabilirsiniz, ancak bunu Aspose.Words tarafından sağlanan özellik ve yetenekleri kullanarak yapmak çok daha uygun olacaktır.

[CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) sınıfı, belge temizleme seçeneklerini belirtmenize olanak tanır. Yinelenen stilleri veya yalnızca kullanılmayan stilleri veya listeleri belgeden kaldırmak için [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/) yöntemini kullanabilirsiniz.

## Kullanılmayan Bilgileri Belgeden Kaldırma

"Kullanılmamış" olarak işaretlenen stilleri tespit etmek ve kaldırmak için [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) ve [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) özelliklerini kullanabilirsiniz.

"Kullanılmıyor" olarak işaretlenen listeleri ve liste tanımlarını tespit edip kaldırmak için [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) özelliğini kullanabilirsiniz.

Aşağıdaki kod örneği, bir belgeden yalnızca kullanılmayan stillerin nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## Bir Belgeden Yinelenen Bilgileri Kaldırma

Tüm yinelenen stilleri orijinal stille değiştirmek ve belgedeki kopyaları kaldırmak için [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) özelliğini de kullanabilirsiniz.

Aşağıdaki kod örneği, yinelenen stillerin bir belgeden nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}
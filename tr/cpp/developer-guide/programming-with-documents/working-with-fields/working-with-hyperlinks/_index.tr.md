---
title: C++ içindeki Köprülerle Çalışma
second_title: Aspose.Words için C++
articleTitle: Köprü Ekleme veya Değiştirme
linktitle: Köprü Ekleme veya Değiştirme
description: "Kullanarak belgenize köprü ekleme Aspose.Words için C++."
type: docs
weight: 180
url: /tr/cpp/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word belgelerindeki köprü `HYPERLINK` alanıdır. Aspose.Words 'te köprüler [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) sınıfı aracılığıyla uygulanır.

## Köprü Ekleme

Belgeye köprü eklemek için [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/) yöntemini kullanın. Bu yöntem üç parametreyi kabul eder:

1. Belgede görüntülenecek bağlantının metni
2. Bağlantı hedefi (URL veya belgenin içindeki yer iminin adı)
3. `URL`, belgenin içindeki bir yer iminin adıysa true olması gereken Boole parametresi

**InsertHyperlink** yöntemi her zaman URL'in başına ve sonuna kesme işaretleri ekler.

{{% alert color="primary" %}}

Köprü görüntüleme metni için yazı tipi biçimlendirmesini `Font` özelliğini kullanarak açıkça belirtmeniz gerektiğini unutmayın.

{{% /alert %}}

Aşağıdaki kod örneği, [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) kullanarak bir belgeye nasıl köprü ekleneceğini gösterir.:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Köprüleri Değiştirme veya Değiştirme

Microsoft Word belgelerindeki köprü bir alandır. Word belgesindeki alan, alan başlangıcı, alan kodu, alan ayırıcı, alan sonucu ve alan sonunu içeren birden çok düğümden oluşan karmaşık bir yapıdır. Alanlar iç içe geçebilir, zengin içerik içerebilir ve bir belgede birden çok paragraf veya bölüme yayılabilir.

`FieldHyperlink` sınıfı `HYPERLINK` alanını uygular.

Aşağıdaki kod örneği, Word belgesindeki tüm köprülerin nasıl bulunacağını ve bunların `URL` ve görünen adlarını nasıl değiştireceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}

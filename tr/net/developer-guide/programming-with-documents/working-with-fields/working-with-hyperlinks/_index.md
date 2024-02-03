---
title: C#'te Köprülerle Çalışmak
second_title: .NET için Aspose.Words
articleTitle: Köprüleri Ekleme veya Değiştirme
linktitle: Köprüleri Ekleme veya Değiştirme
description: ".NET için Aspose.Words kullanarak C#'teki belgenize nasıl köprü eklenir?"
type: docs
weight: 50
url: /tr/net/working-with-hyperlinks/
---

Microsoft Word belgelerindeki köprü, `HYPERLINK` alanıdır. Aspose.Words'de köprüler [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) sınıfı aracılığıyla uygulanır.

## Köprü Ekle

Belgeye köprü eklemek için [InsertHyperlink](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthyperlink/) yöntemini kullanın. Bu yöntem üç parametreyi kabul eder:

1. Belgede görüntülenecek bağlantının metni
2. Bağlantı hedefi (URL veya belge içindeki yer iminin adı)
3. `URL` bir belge içindeki yer iminin adı ise true olması gereken Boolean parametresi

**InsertHyperlink** yöntemi her zaman URL'nin başına ve sonuna kesme işareti ekler

{{% alert color="primary" %}}

`Font` özelliğini kullanarak köprü görüntüleme metni için yazı tipi formatını açıkça belirtmeniz gerektiğini unutmayın.

{{% /alert %}}

Aşağıdaki kod örneği, [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) kullanarak bir belgeye nasıl köprü ekleneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## Köprüleri Değiştirin veya Değiştirin

Microsoft Word belgelerindeki köprü bir alandır. Word belgesindeki alan, daha önce de söylediğimiz gibi, alan başlangıcı, alan kodu, alan ayırıcı, alan sonucu ve alan sonunu içeren birden fazla düğümden oluşan karmaşık bir yapıdır. Alanlar iç içe yerleştirilebilir, zengin içerik içerebilir ve bir belgedeki birden çok paragrafa veya bölüme yayılabilir.

Köprüleri değiştirmek veya değiştirmek için belgedeki köprüleri bulmanız ve metinlerini, URL'lerini veya her ikisini birden değiştirmeniz gerekir.

Aşağıdaki kod örneği, Word belgesindeki tüm köprülerin nasıl bulunacağını ve `URL` ile görünen adlarının nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}

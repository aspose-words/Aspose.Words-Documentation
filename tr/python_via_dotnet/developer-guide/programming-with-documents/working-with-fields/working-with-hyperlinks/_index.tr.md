---
title: Köprülerle Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: Köprüleri Ekleme veya Değiştirme
linktitle: Köprüleri Ekleme veya Değiştirme
description: "Python kullanarak bir belgeye köprü ekleyin, değiştirin veya değiştirin."
type: docs
weight: 50
url: /tr/python-net/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word belgelerindeki köprü, `HYPERLINK` alanıdır. Aspose.Words'de köprüler [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) sınıfı aracılığıyla uygulanır.

## Köprü Ekleme

Belgeye köprü eklemek için [insert_hyperlink](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_hyperlink/) yöntemini kullanın. Bu yöntem üç parametreyi kabul eder:

1. Belgede görüntülenecek bağlantının metni
2. Bağlantı hedefi (URL veya belge içindeki yer iminin adı)
3. `URL` bir belge içindeki yer iminin adı ise true olması gereken Boolean parametresi

**InsertHyperlink** yöntemi her zaman URL'nin başına ve sonuna kesme işareti ekler.

{{% alert color="primary" %}}

Köprü görüntüleme metni için yazı tipi formatını `Font` özelliğini kullanarak açıkça belirtmeniz gerektiğini unutmayın.

{{% /alert %}}

Aşağıdaki kod örneği, [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) kullanarak bir belgeye nasıl köprü ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHyperlink.py" >}}

## Köprüleri Değiştirin veya Değiştirin

Microsoft Word belgelerindeki köprü bir alandır. Word belgesindeki alan, alan başlangıcını, alan kodunu, alan ayırıcıyı, alan sonucunu ve alan sonunu içeren birden çok düğümden oluşan karmaşık bir yapıdır. Alanlar iç içe yerleştirilebilir, zengin içerik içerebilir ve bir belgedeki birden çok paragrafa veya bölüme yayılabilir

Köprüleri değiştirmek veya değiştirmek için belgedeki köprüleri bulmanız ve metinlerini, URL'lerini veya her ikisini birden değiştirmeniz gerekir.

Aşağıdaki kod örneği, Word belgesindeki tüm köprülerin nasıl bulunacağını ve `URL` ile görünen adlarının nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ReplaceHyperlinks.py" >}}

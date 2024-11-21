---
title: Hyperlinklerle Çalışmak Java ile
second_title: Aspose.Words için Java
articleTitle: Hipermenkül Ekle veya Düzenle
linktitle: Hipermenkül Ekle veya Düzenle
description: "Java'ı kullanarak belgenize bir bağlantı nasıl eklenir."
type: docs
weight: 50
url: /tr/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Bir Microsoft Word belgesi içindeki bir hypertext bağlantısı, `HYPERLINK` alanıdır. Aspose.Words'de, bağlantılar [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) sınıfını kullanarak uygulanır.

## Bir Hipertip Bağlantısı Ekle

Bir belgeye bir hiper bağlantıyı eklemek için [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) yöntemini kullanın. Bu yöntem üç parametre kabul eder:

1. Dokümanda gösterilecek bağlantının metni
2. Bağlantı hedefi (belge içindeki bir yer imzesinin URL'si veya adı)
3. Boole parametresi, eğer `URL` bir belge içindeki bir yer işaretinin adı ise, true olmalıdır

The **InsertHyperlink** yöntemi URL'nin başlangıcına ve sonuna her zaman tek tırnaklar ekler

{{% alert color="primary" %}}

Bağlantı metnini görüntülemek için yazı tipinin biçimlendirilmesini açıkça belirtmek için `Font` özelliğini kullandığınızı not edin.

{{% /alert %}}

Aşağıdaki kod örneği, bir belgede bir hiperreçine nasıl [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) kullanarak ekleneceğini gösterir

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Hyperlinkleri Değiştir veya Modifiye Et

Hyperlink Microsoft Word belgelerdeki alan bir alandır. Bir Word belgesindeki alan, daha önce söylediğimiz gibi, birden çok düğüm içeren karmaşık bir yapıya sahip olan alan başlangıç, alan kodu, alan ayırıcı, alan sonucu ve alan sonu alanlarını içerir. Alanlar iç içe geçebilir, zengin içerik içerebilir ve bir belgenin birden fazla paragraf veya bölümüne yayılabilir.

Bağlantıları değiştirmek veya değiştirmek için, bağlantıları belgede bulmak ve metinlerini, URL'lerini veya ikisini de yer değiştirmek gerekir.

Aşağıdaki kod örneği, Word belgesindeki tüm hiper bağlantılarını nasıl bulacağını ve onların `URL` ve gösterim adlarını nasıl değiştireceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}

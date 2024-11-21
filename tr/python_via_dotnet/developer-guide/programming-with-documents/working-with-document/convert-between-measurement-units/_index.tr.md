---
title: Ölçü Birimleri Arasında Dönüştürme
second_title: Python via .NET için Aspose.Words
articleTitle: Ölçü Birimleri Arasında Dönüştürme
linktitle: Ölçü Birimleri Arasında Dönüştürme
description: "Python via .NET için Aspose.Words, ölçüm birimleri arasında nasıl dönüşüm yapacağınız konusunda size yardımcı olabilir; örneğin inçten noktaya ve noktadan inç'e, pikselden noktaya, noktadan piksele."
type: docs
weight: 20
url: /tr/python-net/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words API'de sağlanan genişlik veya yükseklik, kenar boşlukları ve çeşitli mesafeler gibi bazı ölçümleri temsil eden nesne özelliklerinin çoğu, 1 inç'in 72 noktaya eşit olduğu nokta cinsinden değerleri kabul eder. Bazen bu uygun olmayabilir ve puanların başka birimlere dönüştürülmesi gerekebilir.

Aspose.Words, çeşitli ölçüm birimleri arasında dönüştürme yapmak için yardımcı işlevler sağlayan [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) sınıfını sağlar. İnçleri, pikselleri ve milimetreleri noktalara, noktaları inç ve piksellere dönüştürmeyi ve pikselleri bir çözünürlükten diğerine dönüştürmeyi sağlar. Pikselleri noktalara ve tersi yönde dönüştürme işlemi 96 dpi (inç başına nokta) çözünürlükte veya belirtilen dpi çözünürlükte gerçekleştirilebilir.

[ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) sınıfı özellikle çeşitli sayfa özelliklerini ayarlarken kullanışlıdır çünkü örneğin inç, noktadan daha yaygın ölçüm birimleridir.

Aşağıdaki kod örneği, sayfa özelliklerinin inç cinsinden nasıl belirtileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConvertBetweenMeasurementUnits.py" >}}

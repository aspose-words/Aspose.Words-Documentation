---
title: C#'te Ölçü Birimleri Arasında Dönüştürme
second_title: .NET için Aspose.Words
articleTitle: Ölçü Birimleri Arasında Dönüştürme
linktitle: Ölçü Birimleri Arasında Dönüştürme
description: ".NET için Aspose.Words, ölçü birimleri arasında nasıl dönüşüm yapacağınız konusunda size yardımcı olabilir; örneğin C# kullanarak inçten noktaya ve noktadan inç'e, pikselden noktaya, noktadan piksele."
type: docs
weight: 20
url: /tr/net/convert-between-measurement-units/
---

Aspose.Words API'de sağlanan ve genişlik veya yükseklik, kenar boşlukları ve çeşitli mesafeler gibi bazı ölçümleri temsil eden nesne özelliklerinin çoğu, 1 inç'in 72 noktaya eşit olduğu nokta cinsinden değerleri kabul eder. Bazen bu uygun olmayabilir ve puanların başka birimlere dönüştürülmesi gerekebilir.

Aspose.Words, çeşitli ölçüm birimleri arasında dönüştürme yapmak için yardımcı işlevler sağlayan [ConvertUtil](https://reference.aspose.com/words/net/aspose.words/convertutil/) sınıfını sağlar. Dönüştürmeyi sağlar:

- inç, piksel ve milimetreden noktalara
- inç ve pikselleri işaret eder
- bir çözünürlükten diğerine pikseller

Pikselleri noktalara ve tersi yönde dönüştürme işlemi 96 dpi (inç başına nokta) çözünürlükte veya belirtilen dpi çözünürlükte gerçekleştirilebilir.

**ConvertUtil** sınıfı özellikle çeşitli sayfa özelliklerini ayarlarken kullanışlıdır çünkü örneğin inç, noktadan daha yaygın ölçüm birimleridir.

Aşağıdaki kod örneği, sayfa özelliklerinin inç cinsinden nasıl belirtileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cs" >}}

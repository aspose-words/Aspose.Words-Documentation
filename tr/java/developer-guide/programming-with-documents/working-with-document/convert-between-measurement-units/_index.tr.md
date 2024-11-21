---
title: Ölçüm Birimlerini Java Arasında Dönüştür
second_title: Aspose.Words için Java
articleTitle: Ölçüm Birimlerini Dönüştür
linktitle: Ölçüm Birimlerini Dönüştür
description: "Aspose.Words için Java yardımcı olabilir nasıl birim dönüştürme arasında, örneğin inç noktaya ve noktaya inç, piksel noktaya, noktaya piksel."
type: docs
weight: 20
url: /tr/java/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

Many of the object properties in the Aspose.Words API that represent measurements such as width or height, margin, and various distances, accept values in points, where 1 inch equals 72 points. Bu noktalar bazen uygun değildir ve diğer birimlere dönüştürülmesi gerekir.

Aspose.Words çeşitli ölçüm birimlerini dönüştürmek için yardımcı işlevler sağlayan [ConvertUtil](https://reference.aspose.com/words/java/com.aspose.words/convertutil/) sınıfını sağlar. İnç, piksel ve milimetreyi noktaya, noktayı inç ve piksellere dönüştürür ve bir çözünürlükten diğerine piksel dönüştürür. Pikselleri noktalara ve tersini yapmak 96 dpi (noktalar/inch) çözünürlüklerinde veya belirtilen dpi çözünürlüğünde gerçekleştirilebilir.

The **ConvertUtil** sınıfı çeşitli sayfa özelliklerini ayarlarken özellikle yararlıdır çünkü örneğin inçler noktadan daha yaygın ölçüm birimidir.

Aşağıdaki kod örneğinde, inç cinsinden sayfa özelliklerini nasıl belirteceğinizi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}

---
title: C++ cinsinden Ölçü Birimleri Arasında Dönüştürme
second_title: Aspose.Words için C++
articleTitle: Ölçü Birimleri Arasında Dönüştürme
linktitle: Ölçü Birimleri Arasında Dönüştürme
description: "Aspose.Words için C++ ölçü birimleri arasında dönüştürme konusunda size yardımcı olabilir, örneğin inçten noktaya ve noktadan inç'e, pikselden noktaya, noktadan piksele."
type: docs
weight: 20
url: /tr/cpp/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

Genişlik veya yükseklik, kenar boşlukları ve çeşitli mesafeler gibi bazı ölçümleri temsil eden Aspose.Words API'te sağlanan nesne özelliklerinin çoğu, 1 inç'in 72 noktaya eşit olduğu noktalardaki değerleri kabul eder. Bazen bu uygun değildir ve noktaların başka birimlere dönüştürülmesi gerekir.

Aspose.Words, çeşitli ölçü birimleri arasında dönüştürme yapmak için yardımcı işlevler sağlayan [ConvertUtil](https://reference.aspose.com/words/cpp/class/aspose.words.convert_util) sınıfını sağlar. İnç, piksel ve milimetreyi noktalara, noktaları inç ve piksellere dönüştürmeyi ve pikselleri bir çözünürlükten diğerine dönüştürmeyi sağlar.Piksellerin noktalara dönüştürülmesi ve bunun tersi, 96 dpi (inç başına nokta) çözünürlüklerde veya belirtilen dpi çözünürlüğünde gerçekleştirilebilir.

**ConvertUtil** sınıfı, çeşitli sayfa özelliklerini ayarlarken özellikle kullanışlıdır, çünkü örneğin inç, noktalardan daha yaygın ölçüm birimleridir.

Aşağıdaki kod örneği, sayfa özelliklerinin inç cinsinden nasıl belirtileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}


---
title: Bir Belgeyi C++ içinde Klonlama
second_title: Aspose.Words için C++
articleTitle: Bir Belgeyi Klonlama
linktitle: Bir Belgeyi Klonlama
type: docs
description: "C++ kullanarak aynı kopyasını almak için bir belgeyi klonlayın. Bir kopya oluştururken, orijinal belgenin düğümleri ve özellikleri klonlanır."
weight: 70
url: /tr/cpp/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Bir belgeyi klonlamak, performansı artırabilecek ve sizi olası bellek sızıntılarından kurtarabilecek orijinal bir belgenin aynı kopyasını oluşturma işlemidir.

Bu makale, bir belgeyi klonlamanın ana kullanım durumlarını ve Aspose.Words kullanarak bir belge klonunun nasıl oluşturulacağını açıklayacaktır.

## Belgeleri Klonlama İşlemleri

Klonlama işlemi, her seferinde bir dosyayı bir dosyadan yüklemeniz ve ayrıştırmanız gerekmeyeceğinden belge oluşturma işlemini daha hızlı hale getirmenize olanak tanır.

Belgenizin bir klonunu oluşturduktan sonra, onu düzenleyebilir ve üzerinde farklı işlemler gerçekleştirebilirsiniz, örneğin orijinal belgeyle karşılaştırabilir, başka bir belgeye ekleyebilir veya ekleyebilirsiniz. Klonlanmış öğeleri veya içeriklerini başka bir belgeye eklemeden önce de değiştirebilirsiniz.

## Belge Klonu Oluşturma

Aspose.Words, belgenin derin bir kopyasını gerçekleştiren ve döndüren [Clone](https://reference.aspose.com/words/cpp/aspose.words/document/clone/) yöntemini kullanarak bir belgeyi klonlamanıza olanak tanır. Başka bir deyişle, DOM 'ün tam bir kopyasını alacaktır. `Clone` yöntemi belge oluşturmayı hızlandırır ve belgenizin bir kopyasını almak için yalnızca bir kod satırına ihtiyacınız vardır.

Klonlama, orijinaliyle aynı içeriğe sahip, ancak orijinal belgenin her birinin benzersiz bir kopyasına sahip yeni bir belge üretir [nodes](https://reference.aspose.com/words/cpp/class/aspose.words.node). Bileşik belge düğümlerini alt düğümleriyle ve alt düğümleri olmadan çoğaltmanıza olanak tanıyan node [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/) yöntemini kullanarak klonlama işlemini bir belge düğümüne de uygulayabilirsiniz.

{{% alert color="primary" %}}

Klonlama yöntemini uygularken tüm belge özelliklerinin klonlanacağını unutmayın.

{{% /alert %}}

Aşağıdaki kod örneği, bir belgenin nasıl kopyalanacağını ve bu belgedeki bir bölümün kopyasının nasıl oluşturulacağını gösterir:
{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CloningDocument-CloningDocument.cpp" >}}

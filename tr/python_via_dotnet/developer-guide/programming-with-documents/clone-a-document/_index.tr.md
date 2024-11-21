---
title: Python'te bir Belgeyi Klonlama
second_title: Python via .NET için Aspose.Words
articleTitle: Bir Belgeyi Klonlama
linktitle: Bir Belgeyi Klonlama
type: docs
description: "Python'i kullanarak aynı kopyasını elde etmek için bir belgeyi kopyalayın. Bir kopya oluşturulurken orijinal belgenin düğümleri ve özellikleri kopyalanır."
weight: 70
url: /tr/python-net/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Bir belgenin klonlanması, orijinal belgenin aynı kopyasını oluşturma işlemidir; bu, performansı artırabilir ve sizi olası bellek sızıntılarından kurtarabilir.

Bu makale, bir belgeyi klonlamanın ana kullanım durumlarını ve Aspose.Words kullanarak bir belge klonunun nasıl oluşturulacağını açıklayacaktır.

## Belgelerin Klonlanmasıyla Yapılan İşlemler

Klonlama işlemi, her seferinde bir dosyadan belge yüklemeniz ve ayrıştırmanıza gerek kalmayacağı için belge oluşturma işlemini daha hızlı yapmanıza olanak tanır.

Belgenizin bir kopyasını oluşturduktan sonra, onu düzenleyebilir ve üzerinde farklı işlemler gerçekleştirebilirsiniz; örneğin, orijinal belgeyle karşılaştırabilir, başka bir belgeye ekleyebilir veya ekleyebilirsiniz. Ayrıca klonlanmış öğeleri veya içeriklerini başka bir belgeye eklemeden önce de değiştirebilirsiniz.

## Belge Klonu Oluşturma

Aspose.Words, belgenin derin bir kopyasını gerçekleştiren ve onu döndüren [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) yöntemini kullanarak bir belgeyi klonlamanıza olanak tanır. Başka bir deyişle DOM'in tam kopyasını alacaktır. [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) yöntemi belgelerin oluşturulmasını hızlandırır ve belgenizin bir kopyasını almak için yalnızca bir satır koda ihtiyacınız vardır.

Klonlama, orijinal belgeyle aynı içeriğe sahip ancak orijinal belgenin düğümlerinin her birinin benzersiz bir kopyasına sahip yeni bir belge üretir. Ayrıca, bileşik belge düğümlerini alt düğümleriyle veya alt düğümleri olmadan çoğaltmanıza olanak tanıyan düğüm [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) yöntemini kullanarak klonlama işlemini bir belge düğümüne de uygulayabilirsiniz.

{{% alert color="primary" %}}

Klonlama yöntemini uygularken tüm belge özelliklerinin kopyalanacağını unutmayın.

{{% /alert %}}

Aşağıdaki kod örneği, bir belgenin nasıl kopyalanacağını ve o belgedeki bir bölümün kopyasının nasıl oluşturulacağını gösterir:

{{< highlight python >}}
# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("This is the original document before applying the clone method")

# Clone the document.
clone = doc.clone().as_document()

# Edit the cloned document.
builder = aw.DocumentBuilder(clone)
builder.write("Section 1")
builder.insert_break(aw.BreakType.SECTION_BREAK_NEW_PAGE)
builder.write("Section 2")

# This shows what is in the document originally. The document has two sections.
self.assertEqual(clone.sections.count, 2)

# Duplicate the last section and append the copy to the end of the document.
lastSectionIdx = clone.sections.count - 1
newSection = clone.sections[lastSectionIdx].clone()
clone.sections.add(newSection)

# Check what the document contains after we changed it.
self.assertEqual(clone.sections.count, 3)
{{< /highlight >}}

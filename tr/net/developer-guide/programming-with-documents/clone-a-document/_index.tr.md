---
title: C#'te bir Belgeyi Klonlama
second_title: .NET için Aspose.Words
articleTitle: Bir Belgeyi Klonlama
linktitle: Bir Belgeyi Klonlama
type: docs
description: "C#'i kullanarak aynı kopyasını elde etmek için bir belgeyi kopyalayın. Bir kopya oluşturulurken orijinal belgenin düğümleri ve özellikleri kopyalanır."
weight: 70
url: /tr/net/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Bir belgenin klonlanması, orijinal belgenin aynı kopyasını oluşturma işlemidir; bu, performansı artırabilir ve sizi olası bellek sızıntılarından kurtarabilir.

Bu makale, bir belgeyi klonlamanın ana kullanım durumlarını ve Aspose.Words kullanarak bir belge klonunun nasıl oluşturulacağını açıklayacaktır.

## Belgelerin Klonlanmasıyla Yapılan İşlemler

Klonlama işlemi, her seferinde bir dosyadan belge yüklemeniz ve ayrıştırmanıza gerek kalmayacağı için belge oluşturma işlemini daha hızlı yapmanıza olanak tanır.

Belgenizin bir kopyasını oluşturduktan sonra, onu düzenleyebilir ve üzerinde farklı işlemler gerçekleştirebilirsiniz; örneğin, orijinal belgeyle karşılaştırabilir, başka bir belgeye ekleyebilir veya ekleyebilirsiniz. Ayrıca klonlanmış öğeleri veya içeriklerini başka bir belgeye eklemeden önce de değiştirebilirsiniz.

## Belge Klonu Oluşturma

Aspose.Words, belgenin derin bir kopyasını gerçekleştiren ve onu döndüren [Clone](https://reference.aspose.com/words/tr/net/aspose.words/document/clone/) yöntemini kullanarak bir belgeyi klonlamanıza olanak tanır. Başka bir deyişle DOM'in tam kopyasını alacaktır. `Clone` yöntemi belgelerin oluşturulmasını hızlandırır ve belgenizin bir kopyasını almak için yalnızca bir satır koda ihtiyacınız vardır.

Klonlama, orijinalle aynı içeriğe sahip ancak orijinal belgenin her birinin [nodes](https://reference.aspose.com/words/tr/net/aspose.words/node/)'inin benzersiz bir kopyasına sahip yeni bir belge oluşturur. Ayrıca, bileşik belge düğümlerini alt düğümleriyle veya alt düğümleri olmadan çoğaltmanıza olanak tanıyan düğüm [Clone](https://reference.aspose.com/words/tr/net/aspose.words/node/clone/) yöntemini kullanarak klonlama işlemini bir belge düğümüne de uygulayabilirsiniz.

{{% alert color="primary" %}}

Klonlama yöntemini uygularken tüm belge özelliklerinin kopyalanacağını unutmayın.

{{% /alert %}}

Aşağıdaki kod örneği, bir belgenin nasıl kopyalanacağını ve o belgedeki bir bölümün kopyasının nasıl oluşturulacağını gösterir:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("This is the original document before applying the clone method"); 

// Clone the document.
Document clone = doc.Clone();

// Edit the cloned document.
DocumentBuilder builder = new DocumentBuilder(clone);
builder.Write("Section 1");
builder.InsertBreak(BreakType.SectionBreakNewPage);
builder.Write("Section 2");

// This shows what is in the document originally. The document has two sections.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());

// Duplicate the last section and append the copy to the end of the document.
int lastSectionIdx = clone.Sections.Count - 1;
Section newSection = clone.Sections[lastSectionIdx].Clone();
clone.Sections.Add(newSection);

// Check what the document contains after we changed it.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());
{{< /highlight >}}

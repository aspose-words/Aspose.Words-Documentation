---
title: C#'te VBA Makrolarıyla Çalışmak
second_title: .NET için Aspose.Words
articleTitle: VBA Makrolarıyla Çalışmak
linktitle: VBA Makrolarıyla Çalışmak
description: "C# kullanarak belge VBA projeleriyle çalışma."
type: docs
weight: 410
url: /tr/net/working-with-vba-macros/
---

Microsoft Word için Uygulamalar için Visual Basic (VBA), işlevselliği genişletmek için kullanılabilecek basit ama güçlü bir programlama dilidir. Aspose.Words API, VBA projesi kaynak koduna erişim sağlamak için üç sınıf sağlar:

- [VBAProject](https://reference.aspose.com/words/tr/net/aspose.words.vba/vbaproject/) sınıfı VBA proje bilgilerine erişim sağlar
- [VBAModuleCollection](https://reference.aspose.com/words/tr/net/aspose.words.vba/vbamodulecollection/) sınıfı, VBA proje modüllerinin koleksiyonunu döndürür
- [VbaModule](https://reference.aspose.com/words/tr/net/aspose.words.vba/vbamodule/) sınıfı VBA proje modülüne erişim sağlar
- [VbaModuleType](https://reference.aspose.com/words/tr/net/aspose.words.vba/vbamoduletype/) numaralandırması bir VBA projesindeki model türlerini tanımlar. Modül bir prosedür modülü, belge modülü, sınıf modülü veya tasarımcı modülü olabilir

## VBA Projesi Oluşturma

Aspose.Words API, belgede VbaProject'i almak veya ayarlamak için [VbaProject](https://reference.aspose.com/words/tr/net/aspose.words/document/vbaproject/) özelliğini sağlar.

Aşağıdaki kod örneği, bir VBA projesinin ve VBA Modülünün nasıl oluşturulacağını, örneğin Ad ve Tür gibi temel özelliklerle birlikte gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## Makroları Oku

Aspose.Words ayrıca kullanıcılara VBA makrolarını okuma olanağı da sağlar.

Aşağıdaki kod örneği, belgeden VBA Makrolarının nasıl okunacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## Makroları Yazma veya Değiştirme

Aspose.Words'i kullanarak kullanıcılar VBA makrolarını değiştirebilir.

Aşağıdaki kod örneği, [SourceCode](https://reference.aspose.com/words/tr/net/aspose.words.vba/vbamodule/sourcecode/) özelliğini kullanarak VBA Makrolarının nasıl değiştirileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## VBA Projesini Klonla

Aspose.Words ile VBA projelerini kopyalamak da mümkündür.

Aşağıdaki kod örneği, mevcut projenin bir kopyasını oluşturan [Clone](https://reference.aspose.com/words/tr/net/aspose.words.vba/vbaproject/clone/) özelliğini kullanarak VBA Projesinin nasıl kopyalanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## VBA Modülünü Klonla

Gerekirse VBA modüllerini de kopyalayabilirsiniz.

Aşağıdaki kod örneği, mevcut projenin bir kopyasını oluşturan [Clone](https://reference.aspose.com/words/tr/net/aspose.words.vba/vbamodule/clone/) özelliğini kullanarak VBA Modülünün nasıl kopyalanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## VBA Proje Referanslarıyla Çalışma

Aspose.Words API, [VbaReferenceCollection](https://reference.aspose.com/words/tr/net/aspose.words.vba/vbareferencecollection/) sınıfının, VBA proje referanslarının bir koleksiyonunu temsil eden VBA Proje Referansları ile çalışmasını sağlar.

Aşağıdaki kod örneği, bir VBA projesindeki referans koleksiyonundan bazı referansların nasıl kaldırılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}
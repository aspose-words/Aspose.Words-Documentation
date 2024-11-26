---
title: Python'te VBA Makrolarıyla Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: VBA Makrolarıyla Çalışmak
linktitle: VBA Makrolarıyla Çalışmak
description: "Python kullanarak bir belgede VBA makroları oluşturun, okuyun, yazın, kopyalayın ve yönetin."
type: docs
weight: 410
url: /tr/python-net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word için Uygulamalar için Visual Basic (VBA), işlevselliği genişletmek için kullanılabilecek basit ama güçlü bir programlama dilidir. Aspose.Words API, VBA projesi kaynak koduna erişim sağlamak için üç sınıf sağlar:

- [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) sınıfı VBA proje bilgilerine erişim sağlar
- [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) sınıfı, VBA proje modüllerinin koleksiyonunu döndürür
- [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) sınıfı VBA proje modülüne erişim sağlar
- [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) numaralandırması bir VBA projesindeki model türlerini tanımlar. Modül bir prosedür modülü, belge modülü, sınıf modülü veya tasarımcı modülü olabilir

## VBA Projesi Oluşturma

Aspose.Words API, belgede [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/)'i almak veya ayarlamak için [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) özelliğini sağlar.

Aşağıdaki kod örneği, [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) ve [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/) gibi temel özelliklerle birlikte bir VBA projesinin ve VBA Modülünün nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Makroları Oku

Aspose.Words ayrıca kullanıcılara VBA makrolarını okuma olanağı da sağlar.

Aşağıdaki kod örneği, belgeden VBA Makrolarının nasıl okunacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## Makroları Yazma veya Değiştirme

Aspose.Words'i kullanarak kullanıcılar VBA makrolarını değiştirebilir.

Aşağıdaki kod örneği, [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/) özelliğini kullanarak VBA Makrolarının nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## VBA Projesini Klonla

Aspose.Words ile VBA projelerini kopyalamak da mümkündür.

Aşağıdaki kod örneği, mevcut projenin bir kopyasını oluşturan [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) özelliğini kullanarak VBA Projesinin nasıl kopyalanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## VBA Modülünü Klonla

Gerekirse VBA modüllerini de kopyalayabilirsiniz.

Aşağıdaki kod örneği, mevcut projenin bir kopyasını oluşturan [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) özelliğini kullanarak VBA Modülünün nasıl kopyalanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## VBA Proje Referanslarıyla Çalışma

Aspose.Words API, VBA proje referanslarının bir koleksiyonunu temsil eden VBA Proje Referansları ile çalışmak üzere [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) sınıfı sağlar.

Aşağıdaki kod örneği, bir VBA projesindeki referans koleksiyonundan bazı referansların nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}

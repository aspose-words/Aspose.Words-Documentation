---
title: C++ içindeki VBA Makrolarla çalışma
second_title: Aspose.Words için C++
articleTitle: VBA Makrolarla Çalışma
linktitle: VBA Makrolarla Çalışma
description: "C++ kullanarak belge VBA projeleriyle çalışma."
type: docs
weight: 410
url: /tr/cpp/working-with-vba-macros/
timestamp: 2024-01-30-16-22-34
---

Visual Basic for Applications (VBA) for Microsoft Word, işlevselliği genişletmek için kullanılabilecek basit ama güçlü bir programlama dilidir. Aspose.Words API VBA proje kaynak koduna erişmek için üç sınıf sağlar:

- [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/) sınıfı, VBA proje bilgilerine erişim sağlar
- [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/) sınıfı, VBA proje modüllerinin koleksiyonunu döndürür
- [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/) sınıfı, VBA proje modülüne erişim sağlar

## Bir VBA Projesi Oluşturun

Aspose.Words API belgede VbaProject almak veya ayarlamak için `Document.VbaProject` özelliği sağlar.

Aşağıdaki kod örneği, Ad ve Tür gibi temel özelliklerle birlikte bir VBA projesinin ve VBA Modülünün nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## Makroları Oku

Aspose.Words ayrıca kullanıcılara VBA makrolarını okuma olanağı sağlar.

Aşağıdaki kod örneği, belgeden VBA Makroların nasıl okunacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## Makroları Yazma veya Değiştirme

Kullanıcılar Aspose.Words kullanarak VBA makrolarını değiştirebilir.

Aşağıdaki kod örneği, [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/) özelliğini kullanarak VBA Makrolarının nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## Klon VBA Projesi

Aspose.Words ile VBA projeleri klonlamak da mümkündür.

Aşağıdaki kod örneği, varolan projenin bir kopyasını oluşturan [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) özelliğini kullanarak VBA Projenin nasıl kopyalanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## Klon VBA Modülü

Gerekirse VBA modüllerini de klonlayabilirsiniz.

Aşağıdaki kod örneği, varolan projenin bir kopyasını oluşturan [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) özelliğini kullanarak VBA Modülünün nasıl kopyalanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}

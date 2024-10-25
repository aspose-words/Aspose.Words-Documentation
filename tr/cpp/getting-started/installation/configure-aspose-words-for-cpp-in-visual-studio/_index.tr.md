---
title: Ürünü Visual Studio olarak yapılandırın
second_title: Aspose.Words için C++
articleTitle: Yapılandır Aspose.Words için C++ içinde Visual Studio
linktitle: Yapılandır Aspose.Words için C++ içinde Visual Studio
description: "Manuel olarak yapılandır Aspose.Words için C++ içinde Visual Studio."
type: docs
weight: 90
url: /tr/cpp/configure-aspose-words-for-cpp-in-visual-studio/
---

Aspose.Words için C++ API Visual Studio 2022 veya üstü ile çalışır. Visual Studio ile çalışmak için şu adreste bulunan Visual C++ Redistributable 'i yüklemeniz gerekebilir: [Microsoft resmi web sitesi](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## MSBuild ile yapılandırın.dosyaları hedefler

Projenizi yapılandırmak için şu adımları izleyin [MSBuild .dosyaları hedefler](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**İle içe aktarma etiketleri ekleyin Aspose.Words için C++ dosyaları vcxproj dosyanıza hedefler**
1. Proje `*.vcxproj` dosyanızı metin düzenleyicide açın
2. Dosyanın sonunda `<ImportGroup Label="ExtensionTargets"></ImportGroup>` öğesini bulun
3. `ImportGroup` içine aşağıdaki `Import` etiketlerini ekleyin:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## Manuel Olarak Yapılandır

El ile yapılandırmak için şu adımları izleyin Aspose.Words için C++ içinde Visual Studio:

**Ek Ekleme Dizinlerini Ekleyin:**

1. Proje Özelliğini Aç
2. C / C++ → Genel'e gidin
3. Aşağıdaki Ek Ekleme Dizinlerini Ekleyin:
`Aspose.Words.Cpp\include`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**Ek Bağımlılıkları Ekleyin:**

1. Proje Özelliğini Aç
2. Yapılandırma → Tüm Yapılandırmalar ve Platform → Tüm Platformlar'ı seçin
2. Bağlayıcıya Git → Giriş
* Sürüm yapılandırması için:
`Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* Hata ayıklama yapılandırması için:
`Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**Komutları Ekle:**

1. Proje Özelliğini Aç
2. Build Events → Post-Build Event'e gidin
3. Aşağıdaki Komutları ekleyin:
* Sürüm yapılandırması için:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* Hata ayıklama yapılandırması için:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}

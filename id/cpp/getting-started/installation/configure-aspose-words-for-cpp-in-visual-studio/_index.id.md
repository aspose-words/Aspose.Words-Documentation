---
title: Konfigurasikan produk dalam Visual Studio
second_title: Aspose.Words untuk C++
articleTitle: Konfigurasi Aspose.Words untuk C++ dalam Visual Studio
linktitle: Konfigurasi Aspose.Words untuk C++ dalam Visual Studio
description: "Konfigurasi secara manual Aspose.Words untuk C++ dalam Visual Studio."
type: docs
weight: 90
url: /id/cpp/configure-aspose-words-for-cpp-in-visual-studio/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words untuk C++ API berfungsi dengan Visual Studio 2022 atau lebih baru. Untuk bekerja dengan Visual Studio, Anda mungkin perlu menginstal Visual C++ Redistributable yang tersedia di [Microsoft situs web resmi](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## Konfigurasi dengan MSBuild .berkas target

Ikuti langkah-langkah ini untuk mengonfigurasi proyek Anda dengan [MSBuild .berkas target](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**Tambahkan tag Impor dengan Aspose.Words untuk C++ menargetkan file ke dalam file vcxproj Anda**
1. Buka file `*.vcxproj` proyek Anda di editor teks
2. Temukan `<ImportGroup Label="ExtensionTargets"></ImportGroup>` di akhir file
3. Tambahkan tag `Import` berikut ke dalam `ImportGroup`:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## Konfigurasikan Secara Manual

Ikuti langkah-langkah ini untuk mengonfigurasi secara manual Aspose.Words untuk C++ dalam Visual Studio:

**Tambahkan Direktori Penyertaan Tambahan:**

1. Properti Proyek Terbuka
2. Pergi ke C / C++ General
3. Tambahkan Direktori Penyertaan Tambahan berikut:
`Aspose.Words.Cpp\include`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**Tambahkan Dependensi Tambahan:**

1. Properti Proyek Terbuka
2. Pilih Konfigurasi → Semua Konfigurasi dan Platform →
2. Pergi ke Linker →
* Untuk konfigurasi rilis:
`Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* Untuk konfigurasi Debug:
`Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**Tambahkan Perintah:**

1. Properti Proyek Terbuka
2. Buka Acara Pembuatan Events
3. Tambahkan Perintah berikut:
* Untuk konfigurasi rilis:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* Untuk konfigurasi Debug:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}

---
title: Word Belgeleriyle Qt içinde Çalışma
second_title: Aspose.Words için C++
articleTitle: Word Belgeleriyle Qt içinde Çalışma
linktitle: Word Belgeleriyle Qt içinde Çalışma
type: docs
description: "Aspose.Words için C++ Qt uygulamalarında Word belgeleri oluşturmak ve işlemek için Qt içine entegre edilebilir."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /tr/cpp/work-with-word-documents-in-qt/
---

Qt, çeşitli masaüstü, mobil ve gömülü sistem uygulamaları geliştirmek için yaygın olarak kullanılan C++ tabanlı bir platformlar arası uygulama geliştirme çerçevesidir. Aspose.Words için C++ Qt uygulamalarınızda Word belgeleri oluşturmak ve işlemek için Qt içine entegre edilebilir.
Qt örneğinin tamamını şu adreste bulabilirsiniz: [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## Kullanım Aspose.Words için C++ Qt Yaratıcının içinde

Kullanmak için Aspose.Words için C++ Qt uygulamanızda API uygulamasının en son sürümünü aşağıdaki adresten indirin: [indirilenler](https://releases.aspose.com/words/cpp/) bölüm. API indirildikten sonra, C++ kitaplığını Qt Oluşturucu içinde bütünleştir'i kullanabilir veya Visual Studio ile kullanabilirsiniz.

Entegre etmek ve kullanmak için Aspose.Words için C++ Qt Creator'da geliştirilen bir Qt Konsol Uygulaması içindeki kütüphane, lütfen aşağıda verilen adımları izleyin:

- Qt Oluşturucu'yu açın ve yeni bir *Qt Console Application* oluşturun

- *Build System* açılır menüsünden `QMake` seçeneğini seçin

- Uygun kiti seçin ve sihirbazı tamamlayın.
- Ayıklanan paketten *Aspose.Words.Cpp* ve *CodePorting.Native.Cs2Cpp* klasörlerini kopyalayın Aspose.Words için C++ projenin köküne

- Lib'e yollar eklemek ve klasörleri eklemek için LHS panelindeki projeye sağ tıklayın ve *Add Library* öğesini seçin

- Harici Kitaplık seçeneğini belirleyin ve klasörleri tek tek dahil etme ve lib etme yollarına göz atın

- Tamamlandığında, .pro proje dosyanız aşağıdaki girişleri içerecektir

- Uygulamayı oluşturun ve entegrasyon ile işiniz bitti

- Harici Kitaplık seçeneğini belirleyin ve klasörleri tek tek dahil etme ve lib etme yollarına göz atın

- Tamamlandığında, .pro proje dosyanız aşağıdaki girişleri içerecektir

- Uygulamayı oluşturun ve entegrasyon ile işiniz bitti

## Kullanım Aspose.Words için C++ Qt içindeki Uygulamalarda Visual Studio

Visual Studio kullanarak bir Qt uygulama geliştirmek için yüklemeniz gerekir [Qt Visual Studio Araçlar](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). Yüklemeyi yaptıktan sonra, API 'ün en son sürümünü şu adresten indirin: [indirilenler](https://releases.aspose.com/pdf/cpp/) bölüm ve aşağıda verilen adımları izleyin:

- Indirin ve yükleyin [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- İndirin ve paketini açın [Aspose.Words için C++](https://releases.aspose.com/words/cpp/).
- Proje dosyalarınız için yeni bir klasör oluşturun ve paketlenmemiş paketten *Aspose.Words.Cpp* ve *CodePorting.Native.Cs2Cpp* klasörlerini kopyalayıp yapıştırın.
- Aynı klasörde *CMakeLists.txt* adlı yeni bir dosya oluşturun.
- Aşağıdaki içeriği *CMakeLists.txt* dosyasına kopyalayıp yapıştırın.

{{< highlight cpp >}}
cmake_minimum_required(VERSION 3.1.0 FATAL_ERROR)
project(Qt_AsposeWords_CMake)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)
find_package(Qt5 COMPONENTS Widgets REQUIRED)
find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
add_executable(Qt_AsposeWords_CMake
    main.cpp
)
target_link_libraries(Qt_AsposeWords_CMake PRIVATE Qt5::Widgets Aspose::Words) 
set_directory_properties(PROPERTIES VS_STARTUP_PROJECT Qt_AsposeWords_CMake)
file(TO_NATIVE_PATH "${Aspose.Words.Cpp_DIR}/lib/${CMAKE_VS_PLATFORM_NAME}" Aspose.Words.Cpp_DLL_PATH)
file(TO_NATIVE_PATH "${CodePorting.Native.Cs2Cpp_DIR}/lib" CodePorting.Native.Cs2Cpp_DLL_PATH)
file(TO_NATIVE_PATH "${Qt5_DIR}/../../../bin" Qt5_DLL_PATH)
set_target_properties(Qt_AsposeWords_CMake PROPERTIES VS_DEBUGGER_ENVIRONMENT "PATH=${Aspose.Words.Cpp_DLL_PATH}\\$<CONFIG>;${CodePorting.Native.Cs2Cpp_DLL_PATH};${Qt5_DLL_PATH};$(Path)")
{{< /highlight >}}

- *Command Prompt* ve *cd* 'i proje klasörüne açın.
- Aşağıdaki komutu değiştirerek çalıştırın *<path-to-qt5>* *Qt5Config.cmake* dosyasının yolu ile.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- Yukarıda belirtilen adımları tamamladıktan sonra, klasörde bir Visual Studio çözümü oluşturulacaktır. Artık kullanıma hazırsınız Aspose.Words için C++ Qt uygulamasındaki özellikler.



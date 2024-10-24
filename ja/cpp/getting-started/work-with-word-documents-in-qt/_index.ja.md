---
title: QtでWord文書を操作する
second_title: C++の場合Aspose.Words
articleTitle: QtでWord文書を操作する
linktitle: QtでWord文書を操作する
type: docs
description: "C++の場合Aspose.Words QtアプリケーションでWord文書を作成し、操作するためにQt内に統合することができます。"
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /ja/cpp/work-with-word-documents-in-qt/
---

Qtは、c++ベースのクロスプラットフォームアプリケーション開発フレームワークであり、さまざまなデスクトップ、モバイル、組み込みシステムアプリケーションの開発に広く使用されています。 C++の場合Aspose.Words あなたのQtアプリケーションでWord文書を作成し、操作するためにQt内に統合することができます。
完全なQtの例は次の場所で見つけることができます [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## を使用して C++の場合Aspose.Words Qt Creator内

使用のため C++の場合Aspose.Words Qtアプリケーションで、最新バージョンのAPIをダウンロードします。 [ダウンロード](https://releases.aspose.com/words/cpp/) セクション。 APIがダウンロードされたら、Qt Creator内でc++ライブラリを統合するか、Visual Studioで使用できます。

統合して使用するために C++の場合Aspose.Words Qt Creatorで開発されたQtコンソールアプリケーション内のライブラリは、以下の手順に従ってください:

- Qt Creatorを開き、新しい*Qt Console Application*を作成します

- *Build System*ドロップダウンから`QMake`オプションを選択します

- 適切なキットを選択し、ウィザードを終了します。
- の抽出されたパッケージから*Aspose.Words.Cpp*フォルダと*CodePorting.Native.Cs2Cpp*フォルダをコピーします C++の場合Aspose.Words プロジェクトのルートに

- Libにパスを追加してフォルダを含めるには、LHSパネルでプロジェクトを右クリックし、*Add Library*を選択します

- 外部ライブラリオプションを選択し、含めるパスとlibフォルダを1つずつ参照します

- 完了すると、.proプロジェクトファイルには次のエントリが含まれます

- アプリケーションをビルドすると、統合が完了します

- 外部ライブラリオプションを選択し、含めるパスとlibフォルダを1つずつ参照します

- 完了すると、.proプロジェクトファイルには次のエントリが含まれます

- アプリケーションをビルドすると、統合が完了します

## を使用して C++の場合Aspose.Words Visual Studio内のQtアプリケーションでは

Visual Studioを使用してQtアプリケーションを開発するには、以下をインストールする必要があります [QtVisual Studioツール](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). インストールが完了したら、APIの最新バージョンをダウンロードします。 [ダウンロード](https://releases.aspose.com/pdf/cpp/) セクションと以下の手順に従ってください:

- ダウンロードとインストール [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- ダウンロードと解凍 [C++の場合Aspose.Words](https://releases.aspose.com/words/cpp/).
- プロジェクトファイル用の新しいフォルダを作成し、解凍したパッケージから*Aspose.Words.Cpp*フォルダと*CodePorting.Native.Cs2Cpp*フォルダをコピー/貼り付けます。
- 同じフォルダに*CMakeLists.txt*という名前の新しいファイルを作成します。
- *CMakeLists.txt*ファイル内に次の内容をコピーして貼り付けます。

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

- プロジェクトフォルダに*Command Prompt*と*cd*を開きます。
- 置き換えて次のコマンドを実行します *<path-to-qt5>**Qt5Config.cmake*ファイルへのパスを指定します。

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- 上記の手順を完了すると、Visual Studioソリューションがフォルダ内に作成されます。 これで、使用する準備が整いました C++の場合Aspose.Words Qtアプリケーション内の機能。



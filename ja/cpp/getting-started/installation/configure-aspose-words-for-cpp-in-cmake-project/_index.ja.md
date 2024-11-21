---
title: CMakeプロジェクトで製品を構成する
second_title: C++の場合Aspose.Words
articleTitle: 設定 C++の場合Aspose.Words CMakeプロジェクトで
linktitle: 設定 C++の場合Aspose.Words CMakeプロジェクトで
description: "設定 C++の場合Aspose.Words あなたのCMakeであなたのアプリケーションを構築します。"
type: docs
weight: 90
url: /ja/cpp/configure-aspose-words-for-cpp-in-cmake-project/
timestamp: 2024-10-24-11-44-28
---

C++の場合Aspose.Words APIは任意のGNU/Linuxオペレーティングシステムに対してCMakeで動作します。 それはある場合もあります [公式サイトからダウンロード](https://cmake.org/download/).

## 与えられたCMakeプロジェクト

次のCMakeプロジェクトがあるとしましょう:

*CMakeLists.txt:*
{{< highlight bash >}}
cmake_minimum_required(VERSION 3.18 FATAL_ERROR)
project(app CXX)
add_executable(app main.cpp)
{{< /highlight >}}

*main.cpp:*
{{< highlight bash >}}
int main()
{
    return 0;
}
{{< /highlight >}}

## 手動で構成する

手動で設定するには、以下の手順に従ってください C++の場合Aspose.Words あなたのCMakeで:

1. [最新版をダウンロード C++の場合Aspose.Words パッケージ](https://releases.aspose.com/words/cpp/)

2. CMakeListsがあるAspose.Words.Cppフォルダと`CodePorting.Native.Cs2Cpp_api_*.*`フォルダをコピーします。txt

3. 次の行をCMakeListsに追加します。txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. これで、次を使用してアプリケーションを構築できます C++の場合Aspose.Words:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}

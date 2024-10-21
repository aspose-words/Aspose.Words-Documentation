---
title: Configurer le produit dans CMake Projet
second_title: Aspose.Words pour C++
articleTitle: Configurer Aspose.Words pour C++ dans CMake Projet
linktitle: Configurer Aspose.Words pour C++ dans CMake Projet
description: "Configurer Aspose.Words pour C++ dans votre CMake et construisez votre application."
type: docs
weight: 90
url: /fr/cpp/configure-aspose-words-for-cpp-in-cmake-project/
---

Aspose.Words pour C++ L'API fonctionne avec CMake pour n'importe quel système d'exploitation GNU/Linux. Ça peut être [téléchargé depuis le site officiel](https://cmake.org/download/).

## Étant donné CMake Projet

Supposons que vous ayez le projet CMake suivant:

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

## Configurer Manuellement

Suivez les instructions ci-dessous pour configurer manuellement Aspose.Words pour C++ dans votre CMake:

1. [Télécharger la dernière version Aspose.Words pour C++ paquet](https://releases.aspose.com/words/cpp/)

2. Copiez les dossiers Aspose.Words.Cpp et `CodePorting.Native.Cs2Cpp_api_*.*` où vous avez CMakeLists.txt

3. Ajoutez les lignes suivantes à vous CMakeLists.txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. Maintenant, vous pouvez créer votre application en utilisant Aspose.Words pour C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}

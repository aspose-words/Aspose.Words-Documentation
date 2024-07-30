---
title: How to Run the Examples
second_title: Aspose.Words for C++
articleTitle: How to Run the Examples
linktitle: How to Run the Examples
description: "Download Aspose.Words for C++ examples from our GitHub repository and learn how to run them to become more familiar with the Aspose.Words possibilities and features."
type: docs
weight: 110
url: /cpp/how-to-run-the-examples/
---

To become more familiar with the Aspose.Words possibilities and features we provide examples that can be downloaded from our GitHub repository, run, and learn in detail.

In this article, you can find the system requirements, as well as information on how to run the examples.

## Windows with Nuget Package

### Software Requirements and Prerequisites

Please make sure you meet the following requirements before downloading and running the examples:

1. Visual Studio Code, Visual Studio 2022.
2. Installed NuGet Package Manager and the latest NuGet API version for Visual Studio. (optional)
3. Selected **nuget.org** option in the “Tools → Options" dialog box under "NuGet Package Manager → Package Sources”.
4. An active Internet connection to use the `NuGet` Automatic Package Restore feature in the Examples project. If you do not have an active Internet connection on the machine where the examples are to be executed follow the directions from Windows with Cmake Package.

### Download and Run the Examples

All Aspose.Words for C++ examples are hosted on [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). You can either clone the repository using your favorite GitHub client or download [the ZIP file](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

After getting a copy of the repository, you may find that:

- All the examples are located in the **Examples** folder.
- There are Visual Studio solution files for C++ created in Visual Studio 2022.

To run the examples, open the solution file in Visual Studio and build the project:

- For **API Reference** examples, the structure is based on class names, for **Docs** examples it is mostly based on the [Developer Guiled](/words/cpp/developer-guide/) documentation section.
- On the first run, the dependencies will be automatically downloaded via NuGet.
- The **Data** folder at the root folder of **Examples** contains input files that were used in the examples.
- All examples can be run as unit tests.

## Windows with CMake Package

### Software Requirements and Prerequisites

Please make sure you meet the following requirements before downloading and running the examples:

1. Visual Studio Code, Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. Download lastest CMake Package from https://downloads.aspose.com/words/cpp

### Download and Run the Examples

All Aspose.Words for C++ examples are hosted on [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). You can either clone the repository using your favorite GitHub client or download [the ZIP file](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Place folders `Aspose.Words.Cpp` and `CodePorting.Native.Cs2Cpp_*`  in the root of a copy of the repository.

All the examples are located in the **Examples** folder.

To run the examples run the following commands from the root of a copy of the repository:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

The solution for Visual Studio will be generated in the `Examples\DocsExamples\build`

To run the examples, open the solution file in Visual Studio and build the project:

- For **API Reference** examples, the structure is based on class names, for **Docs** examples it is mostly based on the [Developer Guiled](/words/cpp/developer-guide/) documentation section.
- The **Data** folder at the root folder of **Examples** contains input files that were used in the examples.
- All examples can be run as unit tests.

## Linux

### Software Requirements and Prerequisites

Please make sure you meet the following requirements before downloading and running the examples:

1. CLang >= 3.9.1 
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. Download lastest CMake Package from https://downloads.aspose.com/words/cpp

### Download and Run the Examples

All Aspose.Words for C++ examples are hosted on [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). You can either clone the repository using your favorite GitHub client or download [the ZIP file](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Place folders `Aspose.Words.Cpp` and `CodePorting.Native.Cs2Cpp_*`  in the root of a copy of the repository.

All the examples are located in the **Examples** folder.

To run the examples run the following commands from the root of a copy of the repository:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- For **API Reference** examples, the structure is based on class names, for **Docs** examples it is mostly based on the [Developer Guiled](/words/cpp/developer-guide/) documentation section.
- The **Data** folder at the root folder of **Examples** contains input files that were used in the examples.
- All examples can be run as unit tests.

{{% alert color="primary" %}}

Please feel free to reach out using our [Aspose.Words Product Family Forum](https://forum.aspose.com/c/words/8) if you have any issues setting up or running the examples.

{{% /alert %}}

## Contribute to Improving the Examples

If you like to add or improve an example, we encourage you to contribute to the project. All examples and showcase projects in this repository are open source and can be freely used in your applications.

You can fork the repository, edit the source code, and create a pull request to contribute. We will review the changes and include them in the repository if found helpful.

## See Also

- [Details on how to install NuGet Package Manager](https://docs.microsoft.com/nuget/guides/install-nuget)

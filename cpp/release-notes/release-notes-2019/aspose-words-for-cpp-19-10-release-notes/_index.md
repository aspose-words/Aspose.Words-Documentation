---
title: Aspose.Words for CPP 19.10 Release Notes
type: docs
weight: 40
url: /cpp/aspose-words-for-cpp-19-10-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for C++ 19.10](https://www.nuget.org/packages/Aspose.Words.CPP/19.10)

{{% /alert %}} 

## **Major Features**

This is a regular monthly release, we continue to add features from Aspose.Words for .Net.

- We have moved common C++ dependencies into a separate package. It makes possible to use several Aspose products in the same project.
- We have reworked rendering engine, it should improve the quality and stability of rendering. Now Aspose.Words for C++ uses the same Skia-based rendering engine as Aspose.Words for .Net Standard.

## **Limitations and API Differences**

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release.
The missing features will be added in future releases.

- The current release doesn't support cryptography features - it can't verify, sign, encrypt or decrypt documents.
- The current release doesn't support downloading remote resources from the Internet.
- The current release doesn't support Metered license.
- The current release doesn't support a multipage TIFF format.
- The current release doesn't support LINQ and Reporting features.
- The current release has limited support for database features - C++ doesn't have common API for DB like .Net System.Data.
- The current release only supports Microsoft Visual C++ version 2015 or higher and only for the x64 platform.

## **Full List of Issues Covering all Changes in this Release**

|Key|Summary|Category|
| :- | :- | :- |
|WORDSCPP-455|Implement rendering engine on the Skia|New Feature|

## **Public API and Backward Incompatible Changes**

We have moved Aspose.Words for C++ header into a separate subdirectory.
The user has to use the following code:



{{< highlight csharp >}}

#include <Aspose.Words.Cpp\Model\Document\Document.h>

{{< /highlight >}}



instead of



{{< highlight csharp >}}

#include <Model\Document\Document.h>

{{< /highlight >}}



It solves a possible issue with header's name collision between different Aspose products.

---
title: System Requirements
description: "Before you start working with Aspose.Words for C++, ensure that you meet the operating system, platform, frameworks, and environment requirements so the activities on your devices are properly accounted for."
type: docs
weight: 33
url: /cpp/system-requirements/
---

Aspose.Words for C++ does not require any third party product such as Microsoft Word to be installed. Aspose.Words itself is an engine for creating, modifying, converticg, and rendering of documents in various formats, including Microsoft Word document formats.

## Supported Operating Systems

Aspose.Words for C++ supports the following 64-bit or 32-bit operating system and platforms:

<table>  
	<tr>
			<td style="font-weight: bold; width:400px">Operating System</td>
			<td style="font-weight: bold; width:400px">Versions</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux x86_x64 with GLIBC >= 2.27 and GLIBCXX >= 3.4.22 (GCC >= 6.1.0) </td>
			<td><ul><li>Ubuntu 18.04 or later</li><li>Fedora</li><li>OpenSUSE</li><li>CentOS</li><li>and others</li></ul></td>
		</tr>

  <tr>
			<td>macOS</td>
			<td><ul><li>A 64-bit Intel Mac with Big Sur or later (11.5+)</li></ul></td>
		</tr>
</table>

## Development Environment

You can use Aspose.Words for C++ when developing applications for Windows or Linux.

### Windows

Aspose.Words for C++ can be used to develop applications in any development environment which supports [Microsoft Visual Studio v142 Platform Toolset](https://docs.microsoft.com/en-us/cpp/porting/binary-compat-2015-2017?view=msvc-160), but the environments listed in the following table are explicitly supported:

<table>  
	<tr>
			<td style="font-weight: bold; width:800px">Development environments</td>
		</tr>
  <tr>
			<td><ul><li>Microsoft Visual Studio 2017 (Only release configuration)</li><li>Microsoft Visual Studio 2019</li></ul></td>
			</tr>
</table>

### Linux

Aspose.Words for C++ can be used to develop application in the development environment linked against GLIBC >=2.27 and GLIBCXX >= 3.4.22 (GCC >= 6.1.0) which support [C++14 language standard](https://en.cppreference.com/w/cpp/compiler_support), but the following compilers are explicitly supported:

<table>  
	<tr>
			<td style="font-weight: bold; width:800px">Compilers</td>
		</tr>
  <tr>
			<td><ul><li>GCC 6.1.0 or later</li><li>Clang 3.9.1 or later</li></ul></td>
			</tr>
</table>

### Additional Dependency on Linux

Aspose.Words for C++ on Linux depends on [fontconfig](https://www.freedesktop.org/wiki/Software/fontconfig/) binaries both dynamic library and tool. Please install it before using:

1. Installing fontconfig on Ubuntu or Debian</br>
`sudo apt install libfontconfig fontconfig`
2. Installing fontconfig on Fedora or CentOs</br>
   `sudo yum install fontconfig`

### macOS

Aspose.Words for C++ can be used to develop application in the flowwing development environments:

<table>  
	<tr>
			<td style="font-weight: bold; width:800px">Development environments</td>
		</tr>
  <tr>
			<td><ul><li>Xcode 12.5.1 or later</li><li>Clang and libc++ (which are shipped by default with Xcode)</li></ul></td>
			</tr>
</table>

### Additional Dependency on macOS

Aspose.Words for C++ on macOS depends on [fontconfig](https://www.freedesktop.org/wiki/Software/fontconfig) binaries both dynamic library and tool. Please install it before using:

Installing fontconfig on macOS with [homebrew](https://brew.sh)</br>
`brew install fontconfig`

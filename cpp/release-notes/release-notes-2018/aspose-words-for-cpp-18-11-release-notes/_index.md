---
title: Aspose.Words for CPP 18.11 Release Notes
type: docs
weight: 10
url: /cpp/aspose-words-for-cpp-18-11-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for C++ 18.11](https://www.nuget.org/packages/Aspose.Words.CPP/18.11)

{{% /alert %}} 

## **Major Features**

Support for the following file formats and conversions has been added:

- WordprocessingML (DOCX, XML) - DOCX, WML, FlatOpc
- Rich Text Format (RTF)
- Plain Text (TXT)

The following features from Aspose.Words for .NET have been added:

- Updating fields (except fields that require updating page layout)
- OfficeMath
- Mail Merge support

## **Limitations and API Differences**

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release.
The missing features will be added in the future releases.

- The current release supports limited set of file formats (DOC, DOCX, RTF and TXT)
- The current release doesn't support Rendering and Printing features
- The current release doesn't support Reporting features
- The current release only supports Microsoft Visual C++ 2015 and Microsoft Visual C++ 2017 platforms.Full List of Issues Covering all Changes in this Release

## **Full List of Issues Covering all Changes in this Release**

|Key|Summary|Category|
| :- | :- | :- |
|WORDSCPP-532|Incorrect overload selection for string literals and nullptr vs bool|Bug|
|WORDSCPP-605|Matching of Unicode characters does not work in ported code|Bug|
|WORDSCPP-615|Xml written by ported C++ has minor differences from Xml writen by .NET|Bug|
|WORDSCPP-620|Runs with significant white-space are ignored upon reading DOCX|Bug|
|WORDSCPP-621|xmlns attribute returns NullPtr in C++|Bug|
|WORDSCPP-623|Aspose::Zip::ZipException is not thrown in OpcPackage::LoadParts|Bug|
|WORDSCPP-625|XmlNode.SetInnerText cause NullReferenceException|Bug|
|WORDSCPP-636|Incorrect boxing of GetValueOrDefault arguments|Bug|
|WORDSCPP-640|Incorrect boxing of string[] to object[] after porting|Bug|
|WORDSCPP-641|Incorrect porting of RunPr.Count get property (missing const keyword)|Bug|
|WORDSCPP-648|XmlTextReader.ReadString() method should Call MoveToElement() internally|Bug|
|WORDSCPP-663|TestExportRtf.TestJira12861 / Incorrect porting of string literal with surrogate pairs|Bug|
|WORDSCPP-630|Investigate better way to port foreach loop|Enhancement|
|WORDSCPP-576|Include DOCX codec to porting|Feature|
|WORDSCPP-577|Include RTF codec to porting|Feature|
|WORDSCPP-595|Include Mail Merge module to porting|Feature|
|WORDSCPP-596|Include Updating fields (except layout) to porting|Feature|


---
title: Aspose.Words for CPP 19.9 Release Notes
type: docs
weight: 50
url: /cpp/aspose-words-for-cpp-19-9-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for C++ 19.9](https://www.nuget.org/packages/Aspose.Words.CPP/19.9)

{{% /alert %}} 
## **Major Features**
This is a regular monthly release, we continue to add features from Aspose.Words for .Net.
## **Limitations and API Differences**
Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release.
The missing features will be added in the future releases.

- The current release does not support encrypted documents.
- The current release does not support downloading remote resources from the Internet.
- The current release has limited and unstable support for Rendering features. It will be improved in the following releases.
- The current release does not support Reporting features
- The current release only supports Microsoft Visual C++ version 2015 or higher and only for the x64 platform.
## **Full List of Issues Covering all Changes in this Release**

|**Key**|**Summary**|**Category**|
| :- | :- | :- |
|WORDSCPP-810|CompositeNode::SelectNodes method is unusable due to the absence of the definition of the NodeList type|Bug|
|WORDSCPP-817|Fix bounds checking issue|Bug|
## **Public API and Backward Incompatible Changes**
### **WORDSNET-18369 - Remove License.IsLicensed property**
License.IsLicensed obsolete property has been removed in order to increase anti-hacking resistance.
Moreover, this property was useless because of the License.SetLicense(...) throws an exception in case of a wrong license key.

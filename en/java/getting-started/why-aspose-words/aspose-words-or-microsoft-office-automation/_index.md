---
title: Aspose.Words or Microsoft Office Automation
second_title: Aspose.Words for Java
articleTitle: Aspose.Words or Microsoft Office Automation
linktitle: Aspose.Words or Microsoft Office Automation
description: "When choosing between Aspose.Words for Java and Office Automation, keep in mind that Aspose is completely independent of third-party applications and suitable for server-side solutions in many ways."
type: docs
weight: 10
url: /java/aspose-words-or-microsoft-office-automation/
aliases: [/java/why-not-automation/]
---

Often, users need not only to do some single operation with a document, for example, to convert it from one format to another, but also to complete a full cycle of work with this document, dictated by some workflow. In this case, a tool is required that provides powerful functionality for working with documents in popular formats and allows users to solve a wide range of applied problems.

When choosing a specific solution, users compare products and evaluate the benefits. There are often times when the choice is between Aspose and Microsoft Office Automation. Therefore, here at Aspose.Words, we often hear two questions: 

1. Does Aspose.Words require to install third-party programs such as Microsoft Office for work?
2. Why are Aspose.Words components much better for solving a number of custom tasks than Microsoft Office Automation?

The answer to the first question is simple – no. Aspose components are completely independent and are not affiliated with, authorized, sponsored, or otherwise approved by Microsoft Corporation.

The shortest answer we could give to the second question is that the main reason for a variety of reasons is that Microsoft itself strongly recommends against using Office Automation from software solutions: [Considerations for server-side Automation of Office](https://support.microsoft.com/en-us/topic/considerations-for-server-side-automation-of-office-48bcfe93-8a89-47f1-0bce-017433ad79e2).

{{% alert color="primary" %}}

Aspose components have been thoroughly tested.

Aspose components are used by companies such as IBM, Hilton, Reader’s Digest, Bank of America, and many more.

{{% /alert %}}

## Why not Automation

There are several reasons why Aspose.Words components are a better alternative to automation:

- Security
- Stability
- Scalability and Speed
- Price
- Features

The key points of each aspect are described below.

### Security

Aspose.Words is very secure and does not pose a potential risk to vital system resources. Also, when a document is opened by an Aspose component, macros are not automatically run.

Aspose components were built with the goal of allowing developers to create, manipulate, and save Office files. None of the risks associated with the Microsoft Office package are inherent to Aspose components.

The following is a direct quote from the above-referenced Microsoft article:

> “Office applications were never intended for server-side use. Therefore, Office applications do not take into consideration the security problems that distributed components face. Office does not authenticate incoming requests. Office also does not protect you from unintentionally running macros, or from starting another server that might run macros, from your server-side code. Do not open files that are uploaded to the server from an anonymous Web site. Based on the security settings that were last set, the server can run macros under an Administrator or System context with full privileges and can therefore compromise your network. Additionally, Office uses many client-side components (such as Simple MAPI, WinInet, and MSDAIPP) that can cache client authentication information to speed processing. If Office is being automated server-side, one instance may service more than one client. If authentication information has been cached for that session, one client can use the cached credentials of another client. Therefore, the client may gain non-granted access permissions by impersonating other users."

### Stability

Since Aspose components are packaged into a single DLL, there will never be a need to install any additional parts or pieces for them to function.

Aspose components require only the Java Runtime Environment and there is no portion of the component code designed to wait for a human response.

The following is a direct quote from the above referenced Microsoft article:

> “Office 2000, Office XP, Office 2003, and Office 2007 use Microsoft Windows Installer (MSI) technology to make installation and self-repair easier for an end user. MSI introduces the concept of "install on first use." This allows features to be dynamically installed or configured at run time for the system, or more often for a particular user. In a server-side environment, this both slows down performance and increases the likelihood that a dialog box may appear that asks the user to approve the installation or to provide an installation disk. Although this is designed to increase the resiliency of Office as an end-user product, Office's implementation of MSI capabilities is counterproductive in a server-side environment. Furthermore, the stability of Office in general cannot be assured when Office is run server-side because it has not been designed or tested for this type of use. Using Office as a service component on a network server may reduce the stability of that computer, and therefore may reduce the stability of your whole network."

### Scalability and Speed

Office applications were not designed to be simultaneously used by hundreds and thousands of users, but Aspose components are designed for just that – they are highly scalable and lightning fast.

Our components are a true Java solution and perform flawlessly on either a single server powering a single application or a load balanced web farm powering an enterprise-wide application.

The following is a direct quote from the above referenced Microsoft article:

> “Server-side components need to be highly reentrant, multi-threaded COM components that have minimum overhead and high throughput for multiple clients. Office applications are in almost all respects the exact opposite. Office applications are non-reentrant, STA-based Automation servers that are designed to provide diverse but resource-intensive functionality for a single client. The applications offer little scalability as a server-side solution. Additionally, the applications have fixed limits to important elements, such as memory. These cannot be changed through configuration. More importantly, the applications use global resources such as memory mapped files, global add-ins or templates, and shared Automation servers. This can limit the number of instances that can run concurrently and can lead to race conditions if the applications are configured in a multi-client environment. Developers who plan to run more than one instance of any Office application at the same time need to consider "pooling" or serializing access to the Office application to avoid potential deadlocks or data corruption."

### Price

Oftentimes, an application may need to create or manipulate an office file, but does not require the user to have Office. Aspose.Words offers a very [cost effective](https://purchase.aspose.com/pricing/words/family), royalty free redistribution license that will allow deployment to an unlimited number of users with no licensing worries. However, if your application utilizes Microsoft Office Automation, a copy of Microsoft Office must be purchased for each machine that runs the application.

When creating web based applications, it is important to know that Microsoft Office Automation components are not priced nor licensed for server side solutions, so there is no good licensing solution for deploying web applications that utilize Microsoft Office components. Aspose, in turn, offers a very cost effective solution for server based applications.

All the Aspose components offer a risk-free, no-obligation [evaluation version](https://releases.aspose.com/words/). We encourage you to take advantage of that evaluation in order to see what Aspose can do for your applications.

### Features

Aspose components provide everything you need to manage Office files, plus much, much more. They are designed with the philosophy of allowing developers to accomplish the greatest results with the least amount of work.

Unlike Office Automation, Aspose components provide many powerful time-saving functions. For example, Aspose.Words offers a feature that allows developers to populate a Word mail merge document from [any data source supported by Aspose.Words for Java](/words/java/mail-merge-and-reporting/#data-source-types-for-a-mail-merge-operation). It is worth noting that every component in the Aspose family offers its own set of unique and powerful features.

The best part of purchasing an Aspose component or a component suite is accessing our development teams. Our development teams realize that if there is a feature that your company needs, more than likely other companies will need it as well. While not every feature request can be added, our teams try to be very open-minded and flexible when providing assistance. That mindset has made Aspose components as powerful as they are. However, if there are additional features that you need from Office Automation objects, your chances of having them added are very low.

## See Also

- [Considerations for server-side Automation of Office](https://support.microsoft.com/en-us/topic/considerations-for-server-side-automation-of-office-48bcfe93-8a89-47f1-0bce-017433ad79e2)

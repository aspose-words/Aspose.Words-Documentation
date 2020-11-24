---
title: Aspose.Words or Microsoft Office Automation
type: docs
weight: 10
url: /net/aspose-words-or-microsoft-office-automation/
aliases: [/net/why-not-automation/]
---

{{% alert color="primary" %}} 

Why are Aspose components a much better option than Microsoft Office Automation?

There are two questions that we hear most often here at Aspose:

1. **Do your products require Microsoft Office to be installed in order for them to run?** 
   The simple answer is no. Aspose components are totally independent and are not affiliated with, nor authorized, sponsored, or otherwise approved by Microsoft Corporation.
1. **Why should we use Aspose products rather than utilizing Microsoft Office automation?** 
   The shortest answer we could give is that there are many reasons, with the main one being that Microsoft themselves strongly recommends against Office automation from software solutions: [Considerations for server-side Automation of Office](http://support.microsoft.com/default.aspx?scid=kb;EN-US;q257757).

{{% /alert %}} 

## Why not Automation

There are several reasons why Aspose components are a better alternative to automation. The key points are described below. Also, be sure to visit the links at the end of this section.

### Security

The following is a direct quote from the above-referenced Microsoft article:

*"Office Applications were never intended for use server-side, and therefore do not take into consideration the security problems that are faced by distributed components. Office does not authenticate incoming requests, and does not protect you from unintentionally running macros, or starting another server that might run macros, from your server-side code. Do not open files that are uploaded to the server from an anonymous Web! Based on the security settings that were last set, the server can run macros under an Administrator or System context with full privileges and compromise your network! In addition, Office uses many client-side components (such as Simple MAPI, WinInet, and MSDAIPP) that can cache client authentication information in order to speed up processing. If Office is being automated server-side, one instance may service more than one client, and because authentication information has been cached for that session, it is possible that one client can use the cached credentials of another client, and thereby gain non-granted access permissions by impersonating other users."*

Aspose products are very secure. Aspose components run in the same user context as all ASP.NET applications, under the ASPNET user. Therefore, Aspose components do not pose a potential risk to vital system resources. Furthermore, when a document is opened by an Aspose component, macros are not automatically run. Aspose components were built with the goal of allowing developers to create, manipulate and save Office files. None of the risks associated with the Microsoft Office package are inherent to Aspose components.

### Stability

The following is a direct quote from the above referenced Microsoft article:

*"Office 2000, Office XP, and Office 2003 use Microsoft Windows Installer (MSI) technology to make installation and self-repair easier for an end user. MSI introduces the concept of "install on first use", which allows features to be dynamically installed or configured at runtime (for the system, or more often for a particular user). In a server-side environment this both slows down performance and increases the likelihood that a dialog box may appear that asks for the user to approve the install or provide an appropriate install disk. Although it is designed to increase the resiliency of Office as an end-user product, Office's implementation of MSI capabilities is counterproductive in a server-side environment. Furthermore, the stability of Office in general cannot be assured when server-side runs because it has not been designed or tested for this type of use. Using Office as a service component on a network server may reduce the stability of that machine and as a consequence your network as a whole. If you plan to automate Office server-side, attempt to isolate the program to a dedicated computer that cannot affect critical functions, and that can be restarted as needed."*

Since Aspose components are packaged into a single DLL, there will never be a need to install any additional parts or pieces for them to function. Aspose components are utilized only by .NET applications and there is no portion of the component code designed to wait on a human response. Aspose components have been thoroughly tested. Aspose components are used by companies such as IBM, Hilton, Reader's Digest, Bank of America and many more.

### Scalability/Speed

The following is a direct quote from the above referenced Microsoft article:

*"Server-side components need to be highly reentrant, multi-threaded COM components with minimum overhead and high throughput for multiple clients. Office Applications are in almost all respects the exact opposite. They are non-reentrant, STA-based Automation servers that are designed to provide diverse but resource-intensive functionality for a single client. They offer little scalability as a server-side solution, and have fixed limits to important elements, such as memory, which cannot be changed through configuration. More importantly, they use global resources (such as memory mapped files, global add-ins or templates, and shared Automation servers), which can limit the number of instances that can run concurrently and lead to race conditions if they are configured in a multi-client environment. Developers who plan to run more than one instance of any Office Application at the same time need to consider "pooling" or serializing access to the Office Application to avoid potential deadlocks or data corruption."*

Aspose components are highly scalable and lightning fast. Office applications were not designed to be simultaneously used by hundreds and thousands of users; however, Aspose components are designed for just that. Our components are a true .NET solution and perform flawlessly whether on a single server powering a single application or on a load balanced web farm powering an enterprise wide application.

### Price

When an application utilizes Microsoft Office automation, a copy of Microsoft Office must be purchased for each machine that runs the application. There are many times that an application may need to create or manipulate an office file, but does not require the user to have Office. Aspose offers a very [cost effective](http://www.aspose.com/Purchase), royalty free, redistribution license that will allow deployment to an unlimited number of users with no licensing worries.

When creating web based applications it is important to know that Microsoft Office automation components are not priced nor licensed for server side solutions ([Licensing the Office 2000 Web Components and Office Server Extensions](http://support.microsoft.com/default.aspx?scid=kb;EN-US;q243006)); therefore, there is no good, licensing solution for deploying web applications that utilize the Microsoft Office components. Aspose offers a very cost effective solution for server based applications as well.

### Features

Aspose components provide everything needed for managing Office files, plus much, much more. They are designed with the philosophy of allowing developers to accomplish the greatest results with the least amount of work. Unlike Office automation, Aspose components provide many powerful, time-saving functions. For instance, [Aspose.Cells](https://products.aspose.com/cells/net) offers developers the ability to export from a **DataTable** or **DataView** directly into an Excel File. [Aspose.Words](https://products.aspose.com/words/net) offers a similar feature that allows developers to populate a Word mail merge document directly from any .NET data object. [Every component](https://products.aspose.com/total) in the Aspose family offers their own set of unique, powerful features.

The best part of purchasing an Aspose component or a component suite is having access to our development teams. Our development teams realize that if there is a feature that your company needs, more than likely other companies will need it as well. While not every feature request can be added, our teams try to be very open-minded and flexible when providing assistance. That mindset is what has helped Aspose components to become as powerful as they are. If there are additional features that you need from Office automation objects, your chances of having them added are very, very low.

## Conclusion

This article has covered the key points as to why Aspose components are a better choice than Office automation. All of the different Aspose components offer a risk free, no obligation [evaluation version](http://www.aspose.com/community/files/default.aspx). We encourage you to take advantage of that evaluation in order to see what Aspose can do for your applications.
For more information, see the following Internet articles:

- [Considerations for Server-Side Automation of Office](http://support.microsoft.com/default.aspx?scid=kb;EN-US;q257757)
- [Licensing the Office 2000 Web Components and Office Server Extensions](http://support.microsoft.com/default.aspx?scid=kb;EN-US;q243006)

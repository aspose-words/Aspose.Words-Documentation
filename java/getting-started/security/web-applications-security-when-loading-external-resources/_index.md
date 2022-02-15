---
title: Web Applications Security When Loading External Resources – Aspose.Words for Java
articleTitle: Web Applications Security When Loading External Resources
linktitle: Web Applications Security When Loading External Resources
type: docs
description: "Aspose.Words for Java allows you to load remote resources, that can be a reason of security risks. Take a look at common security issues and their solutions."
weight: 120
url: /java/web-applications-security-when-loading-external-resources/
---

By default, Aspose.Words for Java can load remote resources such as images, CSS styles, or external HTML documents when importing documents or inserting images using the DocumentBuilder. This behavior allows you to process your documents in full detail but can be a reason of some security risks if the library is a part of a web application.

In this article, we take a look at common security issues that can arise when loading external resources and provide recommendations on how to avoid such problems.

{{% alert color="primary" %}}

Aspose.Words does not function as antivirus software. Therefore, it does not provide information about the presence of malicious components in the document. To ensure the security of your data, check documents obtained from an external source yourself. In turn, Aspose.Words provides recommendations on how to deal with problems that can arise when loading external resources.

{{% /alert %}}

## Security Issues

There are a number of typical security problems when loading external resources.

### Credential Disclosure Via Linked Images

On Windows-based hosts, documents containing references to resources that use UNC paths such as *‘\\example.com\a\b*’ will be processed by default. In a domain environment, this will cause the host to send its domain credentials in a hashed format to the specified server.

If an attacker is able to convince a user or server to process a document with such a resource link pointing to a host they control, the attacker will receive the user or service account credentials in NTLM hash format. Such data then can be reused in a classic pass-the-hash attack, allowing the attacker to gain access to any resource as the victim user or service account.

If the account in question uses a weak or guessable password, the attacker could additionally perform a password cracking attack to recover the account password for further malicious use.

### Local Image Disclosure Via Linked Images

Similar to the previous case, processing a document with a reference to a local image file will result in that file being included in the final document. This can lead to sensitive information disclosure.

### Denial of Service

An attacker could upload a document that either referenced or included extremely large images – the so-called "decompression bombs". When processing these images, the library will consume huge amounts of memory and CPU time.

### Server-Side Request Forgery Via Linked Content

An attacker could create a series of documents containing embedded links to common combinations of internal IP address and port, then submit them to a web service using the Aspose.Words library to process the documents.

Based on the length of time the service uses to process the document, the attacker could determine if a given IP/Port combination is filtered by a firewall:

- longer processing time indicates that the TCP SYN packet sent by the server was dropped by a firewall
- quick processing time indicates a successful connection has been made

## Solutions of Security Issues

To solve the problems described above and to improve the security of web applications, you can control or disable loading of external resources using [IResourceLoadingCallback](https://apireference.aspose.com/words/java/com.aspose.words/IResourceLoadingCallback).

The following code example shows how to disable external images loading:

**Java**
{{< highlight csharp >}}
public void loadDocument(String documentFilename) throws Exception
{
	LoadOptions disableExternalImagesOptions = new LoadOptions();
	disableExternalImagesOptions.setResourceLoadingCallback(new DisableExternalImagesHandler());

	Document doc = new Document(documentFilename, disableExternalImagesOptions);
}

public static class DisableExternalImagesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args)
	{
		// Skip external images loading.
		return (args.getResourceType() == ResourceType.IMAGE)
			? ResourceLoadingAction.SKIP
			: ResourceLoadingAction.DEFAULT;
	}
}
{{< /highlight >}}

The following code example shows how to disable remote resources:

**Java**
{{< highlight csharp >}}
public void loadDocument2(String documentFilename) throws Exception
{
	LoadOptions disableRemoteResourcesOptions = new LoadOptions();
	disableRemoteResourcesOptions.setResourceLoadingCallback(new DisableRemoteResourcesHandler());
	
	Document doc = new Document(documentFilename, disableRemoteResourcesOptions);
}	

private static class DisableRemoteResourcesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args) throws Exception
	{
		return isLocalResource(args.getOriginalUri())
			? ResourceLoadingAction.DEFAULT
			: ResourceLoadingAction.SKIP;
	}

	// Simplified code.
	private static boolean isLocalResource(String fileName) throws Exception
	{
		String protocol = null;
	
		URI uri = new URI(fileName);
		if (uri.isAbsolute())
		{
			protocol = uri.getScheme();
		}
		else
		{
			URL url = new URL(fileName);
			protocol = url.getProtocol();
		}
	
		return "file".equalsIgnoreCase(protocol);
	}
}
{{< /highlight >}}

{{% alert color="primary" %}}

This article is based on the consulting firm Independent Security Evaluators [report](ise-aspose-report.pdf).

{{% /alert %}}


---
title: FIPS Mode
second_title: Aspose.Words for Java
articleTitle: FIPS Mode
linktitle: FIPS Mode
description: "Aspose.Words for Java uses several cryptography and hash algorithms when processing documents to comply with FIPS standards."
type: docs
weight: 80
url: /java/fips-mode/
---

Aspose.Words uses several cryptography and hash algorithms when processing documents and this article describes how it is related to the FIPS standards.

Federal Information Processing Standards (FIPS) are a set of openly published standards developed by the United States federal government to establish requirements for various purposes, such as ensuring computer security and interoperability.

## BouncyCastle to the Rescue

Aspose.Words for Java and Aspose.Words for Android use the Bouncy Castle FIPS JAR for encryption, decryption and signing documents. The JAR has been designed and implemented to meet the FIPS 140-2, Level 1 requirements.

FIPS 140-2 is a U.S. government computer security standard used to approve cryptographic modules. This standard specifies the security requirements that will be satisfied by a cryptographic module and provides high levels of security intended to cover a wide range of potential applications and environments. For more details on FIPS 140-2, see the [NIST publication](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words for .NET uses the general Bouncy Castle version without support for FIPS.

## FIPS Mode Activation

Starting from the version 18.10 Aspose.Words allows to work in two modes: General and FIPS.

By default Aspose.Words works in the General mode, so there are no restrictions on the use of algorithms and keys in this case.

You can switch Aspose.Words from the General mode into the FIPS mode using the following method:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

For security reasons you cannot change the mode back to General at runtime.

Also note that Aspose.Words cannot automatically recognize whether your operating system is in FIPS mode, therefore you have to switch Aspose.Words to FIPS mode explicitly. 

Use the following method to make sure Aspose.Words for Java is in FIPS mode:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

When the FIPS mode is on, Aspose Words will prevent you from using some cryptography algorithms and keys with non-approved lengths.

For instance, when trying to open an ODT encrypted document while the FIPS mode is active, you may see the following exception:

{{% alert color="primary" %}}

UnapprovedSecurityOperationException: An attempt to open an ODT file which uses the Blowfish algorithm. This algorithm is not on the FIPS-approved algorithm list.

{{% /alert %}}

This happens because the Blowfish algorithm is not on the FIPS approved algorithms’ list.

The similar exception may occur if keys of inappropriate length are used:

UnapprovedSecurityOperationException: You cannot use a key with size 1024 for RSA in FIPS mode.

For more details on the approved algorithms list, see [BouncyCastle User Guide](https://downloads.bouncycastle.org/fips-java/BC-FJA-UserGuide-1.0.1.pdf), “Cipher Algorithms (Symmetric)”.



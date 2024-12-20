---
title: Apply License in Jython
second_title: Aspose.Words for Java
articleTitle: Apply License in Jython
linktitle: Apply License in Jython
description: "Jython: Apply License to Aspose.Words for Java."
type: docs
weight: 20
url: /java/apply-license-in-jython/
timestamp: 2024-10-24-11-44-28
---

## Aspose.Words - Apply License

To Apply License using **Aspose.Words Java for Jython**. Here you can see example code.

**Jython Code**

{{< highlight ruby >}}
from aspose-words import Settings
from com.aspose.words import License
class ApplyLicense:
    def __init__(self):
        dataDir = Settings.dataDir + 'quickstart/'

        # This line attempts to set a license from several locations relative to the executable and `Aspose.Words.dll`.
        # You can also use the additional overload to load a license from a stream, this is useful for instance when the
        # license is stored as an embedded resource
        try:
            license = License()
            license.setLicense("Aspose.Words.lic")
            print "License set successfully."
        except Exception as e:

            # We do not ship any license with this example, visit the Aspose site to obtain either a temporary or permanent license.
            print "There was an error setting the license." + e.getMessage()
if __name__ == '__main__':
    ApplyLicense()
{{< /highlight >}}

## Download Running Code

Download running code from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)

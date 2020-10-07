---
title: Overview of Aspose.Words in Java
type: docs
weight: 20
url: /java/overview-of-aspose-words-in-java/
---

## **The Aspose.Words API in Java**

While trying to keep the API as straight forward and clear as possible, we decided to recognize and honor the common development practices of the platform. Therefore, Aspose.Words for Java follows coding guidelines widely accepted by Java developers. 

### **Packages**

All classes and methods used in Aspose.Words for Java are contained in one package.

|Package in Aspose.Words for Java |
| :- |
|com.aspose.words |

### **Classes**

Where possible, class, method and property names match those found in Microsoft Word Automation.

|Class Name in Aspose.Words for Java |
| :- |
|Document |
|Paragraph |

### **Enumerations**

Enumerations are ported to Java as classes with public integer constants

|Constant in Aspose.Words for Java |
| :- |
|BorderType.LEFT |
|TextFormFieldType.DATE_TEXT |
|ProtectionType.ALLOW_ONLY_COMMENTS |
{{% alert color="primary" %}} 

The main reason why we did not use Java enums is to stay compatible with J2SE 1.4.2 as Java enums appeared only in J2SE 5.0. All constants are integer values in Aspose.Words for Java. Whereas in the .NET version a parameter, return value or a property was of an enumerated type, it has been ported as an integer to Java. In such cases, the documentation for the parameter will specify what class contains the constants applicable for this parameter. 

{{% /alert %}} 

### **Methods**

Method names follow the accepted practices for the Java platform.

|Method Name in Aspose.Words for Java |
| :- |
|Document.Save |
|CompositeNode.GetChildNodes |
Several methods had to be renamed as they got into conflict with some Java runtime methods. For example, the clone method which should be named **Document.Clone** was renamed to **Document.deepClone** in Java.

### **Properties**

All properties found in classes within Aspose.Words for Java are implemeneted as getter and setter methods. The original name of the method had "get" and "set" prefixes added to it.

|Getter and Setter in Aspose.Words for Java |
| :- |
|Font.getBold , Font.setBold |
|PageSetup.getLeftMargin , PageSetup.setLeftMargin |

### **Indexed Properties**

Indexed properties appear as get() and set() properties in most cases.

|Getter and Setter in Aspose.Words for Java |
| :- |
|Style.get(int) |
|Style.get(String) |

### **Event**

Events in Aspose.Words for Java are implemented as callbacks (listeners). For examples to subscribe to the event of a field merging you create your own class implementing the **IFieldMergingCallback** interface.

### **Implementation of Internal infterfaces**

In Java, all members that are implementations of interfaces are public methods of the class. This makes some methods visible (that were not intended to be visible) in the public API of Aspose.Words for Java. We will include a corresponding remark in all such methods or will try to remove them from the documentation completely. For example, the public **Border** class implements internal interface **IComplexAttr,** and the **Merge** method is visible in the public API . You should not use such methods. In this case you cannot use this method at all because the **IComplexAttr** interface is not public and its declaration is not available to you.* 

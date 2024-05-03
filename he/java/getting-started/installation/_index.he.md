---
title: מתקן
second_title: Aspose.Words עבור Java
articleTitle: מתקן
linktitle: מתקן
description: "התקן Aspose.Words עבור Java מתוך Maven מחדש. Define The Aspose.Words עבור Java תלות ב- pom.xml"
type: docs
weight: 10
url: /he/java/installation/
---

ודא שהמכונה שלך פוגשת [דרישות מערכת](/words/he/java/system-requirements/) לפני שתתחיל.

מאמר זה מסביר כיצד להתקין Aspose.Words עבור Java במחשב שלך.

## התקן Aspose.Words עבור Java מתוך Maven חידוש {#install-aspose-words-for-java-from-maven-repository}

המונחים: all Java APIs [Maven מחדש](https://releases.aspose.com/words/java/). ניתן להשתמש בקלות Aspose.Words עבור Java API ישירות בתוכך Maven פרויקטים עם תצורה פשוטה:

1.1 1. ראשית, עליך לציין Maven Repository תצורה/מיקום שלך Maven pom.xml כפי שמוצג להלן:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. ואז להגדיר את Aspose.Words עבור Java API תלות ב- pom.xml כדלקמן:
	{{< highlight html >}}
	<dependencies>
		<dependency>
			<groupId>com.aspose</groupId>
			<artifactId>aspose-words</artifactId>
			<version>22.11</version>
			<classifier>jdk17</classifier>
		</dependency>
		<dependency>
			<groupId>com.aspose</groupId>
			<artifactId>aspose-words</artifactId>
			<version>22.11</version>
			<classifier>javadoc</classifier>
		</dependency>
	</dependencies>
	{{< /highlight >}}
3. ברכות! הצלחת להגדיר את Aspose.Words עבור Java תלות בך Maven פרויקט.

## ראה גם

* [להורדה Aspose.Words תגית: Maven](https://releases.aspose.com/words/java/)

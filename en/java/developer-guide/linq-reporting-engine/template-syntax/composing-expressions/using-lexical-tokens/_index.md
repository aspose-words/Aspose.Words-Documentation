---
title: Using Lexical Tokens in Java
second_title: Aspose.Words for Java
articleTitle: Using Lexical Tokens
linktitle: Using Lexical Tokens
description: "Use lexical tokens in template expressions when building a report in Java."
type: docs
weight: 10
url: /java/using-lexical-tokens/
timestamp: 2024-10-21-11-17-44
---

The following table describes lexical tokens that you can use in template expressions and restrictions on these tokens’ usage comparing with C# Language Specification 5.0.

| Token | Restrictions |
| :- | :- |
| **Keyword** | Only the following tokens are reserved as keywords: `true`, `false`, `null`, `new`, and `in`. |
| **Identifier** | - The feature of keyword escaping through the “@” character is not supported.<br>- Unicode character escapes are not permitted in identifiers. |
| **Literal** | - 32-bit Unicode character escapes are not supported.<br>- Unsigned integer and decimal literals are not permitted. |
| **Operator** | See “Using Operators.” |

You can use the following identifiers that are not preceded by a member access operator in template expressions:

- The name of a passed data source object
- The name of an iteration variable within its scope (see “Outputting Sequential Data” for more information)
- The name of a common variable after it is declared (see “Using Variables” for more information)
- The name of a lambda function parameter within the scope of the lambda function
- A fully or partially qualified name of a type that is known by the engine (see “Setting up Known External Types” for more information)
- The name of a member of an object that is determined as follows:
  - Inside a data band body, the object is resolved to the innermost iteration variable.
  - Outside a data band body, the object is resolved to a passed data source.

The feature of the omitting of an object identifier while accessing the object’s members is also known as the contextual object member access. See “Using Contextual Object Member Access” for more information.

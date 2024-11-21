---
title: Accessing Type Members in C#
second_title: Aspose.Words for .NET
articleTitle: Accessing Type Members
linktitle: Accessing Type Members
description: "Access public (static and instance) members of accessible types in template expressions when building a report in C#."
type: docs
weight: 30
url: /net/accessing-type-members-linq/
timestamp: 2024-02-16-10-54-23
---

LINQ Reporting Engine enables you to access the following public (static and instance) members of accessible types (see “Working with Types” for more information) in template expressions:

- Fields
- Properties
- Indexer getters
- Methods
- Constructors

**Note** – To access a static member of a type in a template expression, the type must be set known for the engine (see “Setting up Known External Types” for more information).

A function type member can be used in a template expression only if the following additional requirements are met:

- The function member returns a value.
- The function member does not have `ref` or `out` parameters.
- The function member does not take generic type arguments.

The engine supports the following features when dealing with function members:

- Overload resolution according to [C# Language Specification 5.0](https://www.microsoft.com/en-us/download/details.aspx?id=7029)
- Using of default parameter values without support of named parameters
- Using of parameters taking a variable number of arguments

In addition to C# Language features, the engine provides the following extra features to simplify type member access:

- Accessing members of an object without specifying the object’s identifier (see “Using Contextual Object Member Access” for more information)
- Accessing missing members of an object (see “Accessing Missing Members of Data Objects” for more information)

# Getting Started with Q# and Quantum Programming

## Introduction

This document provides a concise roadmap for learning **Q#**, Microsoft’s domain‑specific language for quantum computing. It covers:

* Environment setup
* Basic syntax and project creation
* Running your first Q# program
* Common setup issues on macOS (ARM) with Rider

---

## Prerequisites

* **.NET 6 SDK** (version 6.0.x) installed and configured
* **Quantum Development Kit (QDK)** templates for Q#

---

## Troubleshooting on macOS (ARM) with Rider

> **Note:** JetBrains Rider (2025.1.2+) on Apple Silicon defaults to an **arm64** .NET host, while QDK tools require **x64**.

1. **Install the x64 .NET 6 SDK**

   * Download the macOS **x64** `.pkg` for .NET 6  from Microsoft.

2. **Point Rider at the x64 CLI**

   * **Rider → Preferences → Build, Execution, Deployment → Toolset and Build**
   * Set **.NET CLI executable** to:

     ```
     /usr/local/share/dotnet/x64/dotnet
     ```
   * Restart Rider or invalid caches.


4. **Rebuild** your Q# project in Rider.

---

## Recommended Learning Resources

* [Microsoft QDK Documentation](https://learn.microsoft.com/azure/quantum/qsharp-overview)

---

*Happy quantum coding!*

# OpenHarmony Todo App

一个基于 **OpenHarmony / ArkTS** 开发的简单待办事项（Todo）应用，  
用于课程实验与 OpenHarmony 应用开发流程练习。

---

## 📱 项目简介

本项目实现了一个基础的 Todo App，支持用户：

- 添加待办事项  
- 查看待办事项列表  
- 简单的界面交互展示  

项目主要目的是熟悉 **OpenHarmony 应用结构、ArkTS 语法以及基本 UI 组件的使用**，  
不追求复杂功能，重点在于开发流程的完整性。

---

## 🛠 技术栈

- **操作系统**：OpenHarmony  
- **开发语言**：ArkTS  
- **开发工具**：DevEco Studio  
- **UI 框架**：ArkUI（Stage 模型）

---

## 📂 项目结构说明

```text
.
├── entry/                 # 应用主模块
│   ├── src/main/ets/       # ArkTS 源码
│   └── resources/          # 资源文件
├── build-profile.json5    # 构建配置
├── oh-package.json5       # 项目依赖配置
└── README.md              # 项目说明文档

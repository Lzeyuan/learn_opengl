# Git
## 撤销add
在Git 2.23版本中引入了新的命令`git restore`，该命令用来恢复工作区中的文件，也可以用来取消文件的暂存。

其中，`--staged`表示将文件从暂存区中恢复到工作区中。需要取消暂存的文件可以换成通配符，例如取消所有文件的暂存，可以使用如下命令：
```bash
git restore --staged .
```
## .gitattributes
### 什么是.gitattributes
`.gitattributes`文件是用来配置Git仓库中文件属性的文件。它可以用来指定某些文件应该以何种方式对待，比如是否视为二进制文件、是否进行文本文件的行尾格式转换等。

以下是`.gitattributes`文件的一些常见用法：

1.**文本文件和二进制文件的处理：**
```bash
# 将文件夹下的所有文件都视为二进制文件
/binary-folder/* -text

# 将特定文件视为文本文件
*.txt text

```

2.**行尾格式的控制：**
```bash
# 自动在 checkout 时将 CRLF 转为 LF，commit 时将 LF 转为 CRLF
* text=auto

# 仅对特定文件进行行尾格式控制
*.sh text eol=lf

```

3.**处理特定编程语言或文件类型：**
```bash
# 设置 JavaScript 文件使用 LF 行尾格式
*.js text eol=lf

# 设置图像文件为二进制
*.png binary
```
`.gitattributes` 文件的设置会影响 Git 在操作文件时的行为，尤其是在涉及到文本文件和二进制文件的处理、跨平台开发时。通过`.gitattributes` 文件，你可以更精确地控制 Git 对项目中不同类型文件的处理方式。
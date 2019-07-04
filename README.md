# 1 Overview

`luochenxunTools` is a set of tools written by myself to increase efficiency。

tool name                 | desc                                                                                            | anchor
--------------------------|-------------------------------------------------------------------------------------------------|----------------------------
Code Tools                | -                                                                                               | -
docMaker                  | docMaker is a tool to add or modify the doc of source file                                      | [docMaker](#docmaker)
                          |                                                                                                 |
Git Tools                 | -                                                                                               | -
gitDiffTool               | 'gitDiffTool' is a tool to compare two commits of a gitProject and generate the diff into html. | [gitDiffTool](#gitdifftool)
updateGitTag              | updateGitTag is a tool to add tag of a git repository                                           | [updateGitTag](#updategittag)
                          |                                                                                                 |
Markdown Tools            |                                                                                                 | -
markdown-number-md-header | number the markdown's header like : 1 , 1.1 , 1.2 .....                                         | [markdown-number-md-header](#markdown-number-md-header)


<!-- TOC -->

- [docMaker](#docmaker)
- [gitDiffTool](#gitdifftool)
- [updateGitTag](#updategittag)
- [markdown-number-md-header](#markdown-number-md-header)
  - [version](#version)
  - [Install](#install)
  - [Brief](#brief)
    - [Usage :](#usage-)
  - [中文简介](#%E4%B8%AD%E6%96%87%E7%AE%80%E4%BB%8B)
    - [使用方法 :](#%E4%BD%BF%E7%94%A8%E6%96%B9%E6%B3%95-)

<!-- /TOC -->



# 2 docMaker

docMaker is a tool to add or modify the doc of source file. Version:1.6.0 .

```
Usage: docMaker file | dir
  -h            : print this usage.
  -v            : print the version of docMaker.
```


# 3 gitDiffTool

'gitDiffTool' is a tool to compare two commits of a gitProject and generate the diff into html.
You can read the diff in one html page, the list of modified files on one side and the specifics diff-content on the other.

```
Usage: /usr/local/bin/gitDiffTool [OPTIONS] [params]

  -d [sCommit] dCommit  : diff two commit(if given one diff with current commit), output the result using html
  -h|--help             : print this usage
  -v|--version          : print the version


Examples:
    gitDiffTool.py -d 1234 6789       # compare tow commit
    gitDiffTool.py -d 1234            # compare current branch with given commit
    gitDiffTool.py -d develop         # compare current branch with given branch's name
```

# 4 updateGitTag

updateGitTag is a tool to add tag of a git repository.. version:1.4.0 .

```
Usage: updateGitTag tagVersion
  -h            : print this usage.
  -v            : print the version of updateGitTag.

For more infomation of the cmd, you can use option as 'updateGitTag add -h' for farther help.
```

# 5 markdown-number-md-header

A NodeJS script to number the markdown's header like : 1 , 1.1 , 1.2 .....

To run this script , you need a NodeJS environment to run , learn more : <https://github.com/nodejs/node>

## 5.1 version

V1.0.1 : Fix bug in codes, skip the # in codes <br>
V1.0.0 : init version

## 5.2 Install

1、clone the script

`git clone https://github.com/luochenxun/markdown-number-md-header.git`

2、Install it to your buildPath

`sudo cp ./markdownNumberHeader.js /usr/local/bin`

## 5.3 Brief

This script is used to number the header of markdown-files as doc-numbers , like :

```
#     ->    #1
##    ->    ##1.1
##    ->    ##1.2
###   ->    ###1.2.1
#     ->    #2
##    ->    ##2.1
```

You can use it to translate a markdown-file directly, or you can use it to a diretory.<br>
When you use a diretory as a option of the script, it will traverse the diretory and its sub-diretory , and translate all the .md files it them.

### 5.3.1 Usage :

```
1\. markdownNumberHeader xxx/xxx/xxx.md
2\. markdownNumberHeader xxx/xxx/Diretory
```

## 5.4 中文简介

markdown凭借其简单、方便、直接的写作方式，受到越来越多人的喜爱。

我们用markdown写文档时是否总喜欢用 header符号 `#`来给文章分段落，但是markdown不支持给段落编号，这使们我们总要手动为段落加上编号，这样很不方便，尤其是当段落修改时修改编号会带来大灾难。

markdownNumberHeader.js 脚本就是解决这个问题的大救星~

本脚本用于给 Markdown 文档的Header加上文档编号，就像word文档一样，它会为你的md文档自动作这样的修改：

```
#     ->    #1
##    ->    ##1.1
##    ->    ##1.2
###   ->    ###1.2.1
#     ->    #2
##    ->    ##2.1
```

你可以使用它来转化你的 md文档（以 .md 为后缀），或是转化一个目录（它会自动遍历目录及其子目录里的所有md文档，并转化之）。

### 5.4.1 使用方法 :

```
1\. markdownNumberHeader xxx/xxx/xxx.md
2\. markdownNumberHeader xxx/xxx/Diretory
```

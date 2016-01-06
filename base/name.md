# 命名规范
====

#### Javascript
方法/函数用驼峰，变量/属性用下划线

#### Class 与 ID
* class 应以功能或内容命名，不以表现形式命名；
* class 与 id 单词字母小写，多个单词组成时，采用下划线`_`分隔，下划线分割的好处是在IDE中双击可以直接全选；
* 使用唯一的 id 作为 Javascript hook, 同时避免创建无样式信息的 class；

```html
<!-- Not recommended -->
<div class="j_hook left contentWrapper"></div>

<!-- Recommended -->
<div id="j_hook" class="sidebar content_wrapper"></div>
```
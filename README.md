# Preparing4SICP
突然想刷一下 SICP，所以先看 Yet Another Scheme Tutorial 入门一下 Scheme 语言，这个仓库是作业题的备份。

仅在 MIT-Scheme 环境下测试过。

原谅我糟糕的局部变量命名和文件名吧（哭）

书中 Higher Order Functions 一节中的 member-if and member 小节，member-if 函数应该是：

```scheme
(define (member-if proc ls)
  (cond
   ((null? ls) '())
   ((proc (car ls)) (cons (car ls) (member-if proc (cdr ls))))
   (else (member-if proc (cdr ls)))))
```

这样才符合这个函数的目的。
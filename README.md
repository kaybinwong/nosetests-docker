使用自动化测试框架nosetests来进行api的自动化测试。

# 1、运行环境
- alphaline
- python27

# 2、依赖环境
requirements.txt 中定义了第三方依赖，可以自行指定，当build的时候会自动初始化依赖。

# 3、测试编写执行
按照nosetests的规范，编写测试用例并挂载到容器卷`/code`目录下，然后运行nosetests命令
```
docker run --rm -it -v $PWD:/code --net host registry.cn-hangzhou.aliyuncs.com/kayb/nosetests:1.3.7 nosetests -s -v --with-html
test_login.test_login ... ok
test_order.test_query ... ok
test_pay.test_1_login ... ok
test_pay.test_2_supports ... ok
test_pay.test_3_pay ... ok
test_pay.test_4_query ... ok
test_refund.test_1_pay ... ok
test_refund.test_2_refund ... ok

----------------------------------------------------------------------
HTML: nosetests.html
----------------------------------------------------------------------
Ran 8 tests in 1.509s

OK

```
# 4、测试报告
测试结束后，会在您挂载的目录下生成测试报告`nosetests.html`。
![image](https://user-images.githubusercontent.com/5570216/43750156-a56e6cae-9a29-11e8-9041-4380b5f77ad3.png)
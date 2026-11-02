#import "template.typ": *

// 主题颜色
#let theme-color = rgb("#26267d")
#let icon = icon.with(fill: theme-color)

// 设置图标, 来源: https://fontawesome.com/icons/
#let fa-award = icon("icons/fa-award.svg")
#let fa-building-columns = icon("icons/fa-building-columns.svg")
#let fa-code = icon("icons/fa-code.svg")
#let fa-envelope = icon("icons/fa-envelope.svg")
#let fa-github = icon("icons/fa-github.svg")
#let fa-graduation-cap = icon("icons/fa-graduation-cap.svg")
#let fa-linux = icon("icons/fa-linux.svg")
#let fa-phone = icon("icons/fa-phone.svg")
#let fa-windows = icon("icons/fa-windows.svg")
#let fa-wrench = icon("icons/fa-wrench.svg")
#let fa-work = icon("icons/fa-work.svg")

// 设置简历选项与头部
#show: resume.with(
  // 字体和基准大小
  size: 10pt,
  // 标题颜色
  theme-color: theme-color,
  // 控制纸张的边距
  margin: (
    top: 1cm,
    bottom: 1cm,
    left: 1cm,
    right: 1cm,
  ),

  // 如果需要姓名及联系信息居中，请删除下面关于头像的三行参数，并取消header-center的注释
  // header-center: true,

  // 如果不需要头像，则将下面三行的参数注释或删除
  photograph: "profile1.jpg",
  photograph-width: 5.5em,
  gutter-width: 1em,
)[
  = 张书语

  #info(
    color: theme-color,
    (
      icon: fa-phone,
      content: "(+86) 188-4316-0655",
    ),
    (
      icon: fa-building-columns,
      content: "西安电子科技大学",
    ),
    (
      icon: fa-graduation-cap,
      content: "计算机科学与技术专业",
    ),
    (
      icon: fa-envelope,
      content: "18843160655@163.com",
      link: "mailto:18843160655@163.com",
    ),
    (
      icon: fa-github,
      content: "github.com/CSsue",
      link: "https://github.com/CSsue",
    ),
  )
][
  #h(2em)
  //计算机专业核心课程基础扎实，以第二作者发表/在投论文2篇，作为项目负责人完成国家级创新创业训练计划，具备项目统筹与团队协作能力。乐于学习新技术，对系统底层与算法设计均有浓厚兴趣。

  中共预备党员 | 发表论文2篇 | 国家级创新创业项目负责人 | 优秀学生干部 | 科创社副主席
]


== #fa-graduation-cap 教育背景

#sidebar(with-line: true, side-width: 12%)[
  2023.09

  //2023.09
][
  *西安电子科技大学* · *计算机科学与技术学院* · *计算机科学与技术专业*

  GPA: 3.6 / 4 · 综合成绩 : 85.35分 · 六级 : 580分
]


== #fa-wrench 科研论文

#item(
  link(
    "https://www.engineeringvillage.com/app/doc/?docid=cpx_18b7150319d863cbaaaM6b941017816360&pageSize=25&index=1&searchId=543eb11d078d4625ad05612c2dde040c&resultsCount=1&usageZone=resultslist&usageOrigin=searchresults&searchType=Quick",
    [ *二阶随机规划 · 双智能体DRL* ],
  ),
  [ *EIECC 2025 | EI见刊 | 第二作者* ],
  date[ 2025 年 03 月 – 2025 年 12 月 ],
)

#tech[《 2SRL: A Sequential Deep Reinforcement Learning
Framework for Two-Stage Stochastic Programming
with Recourse 》]

- 针对大规模二阶段随机规划中传统分解算法计算量随场景数指数增长的问题。
- 本人负责设计双智能体序贯训练框架与基于Pointer Networks的决策网络，通过先训练第二智能体再训练第一智能体的方式实现端到端耦合决策。
- 相较Gurobi加速约4个数量级，平均最优间隙6%-10%。



#item(
  link(
    "https://",
    [ *航拍检测 · RT-DETR* ],
  ),
  [ *ICTAI 2026 | CCF-C类录用 | 第二作者* ],
  date[ 2026 年 03 月 – 2026 年 09 月 ],
)

#tech[《 Multi-Scale Attention Sparse Dilated Network for Object Detection in Complex Aerial Scenes 》]

- 针对RT-DETR在航拍场景中密集注意力引入背景冗余、固定采样难以适应多尺度目标的问题。
- 本人负责设计动态分组自注意力模块与可变形编码器，通过跨组信息交互与内容自适应采样聚焦目标区域。
- 在VisDrone上mAP50较基线提升5.9%，跨场景与雨雾雪变体验证了泛化性。



// #sidebar(with-line: false, side-width: 12%)[
//   //*操作系统*
  
//   *EI见刊*

//   // *辅修课程*


//   *CCF-C录用*

//   // *专业技能*

//   //*国际课程*
// ][
  
  
//   网络应用程序设计97分 · 操作系统课程设计97分 · 编译原理90分 · 算法分析与设计88分

//   //软件工程92分 · 数字信号处理92分 · 分布式计算89分
  
//   CET-6 : 580分

//   // #fa-linux Linux, #h(0.5em) #fa-windows Windows

  
// ]





== #fa-code 项目经历



#item(
  link(
    "https://",
    [ *星火社区* ],
  ),
  [ *国家级大创项目* ],
  date[ 2023 年 12 月 – 2025 年 06 月 ],
)

#tech[ Vue | uni-app | SpringBoot | MyBatis Plus | MySQL ]

- 项目采用前后端分离架构，前端基于uni-app实现一次开发、多端部署，覆盖微信小程序、Android App与Web网页；后端基于SpringBoot + MyBatis Plus完成接口开发。
- 本人是该项目的第一负责人，规划后端用户与权限模块开发和数据库表结构设计。
- 引入Token身份验证、访问限流与数据库安全策略，保障系统安全性；对接西电一站式认证平台，为全校师生提供服务。

#item(
  link(
    "https://github.com/CSsue/DBMS",
    [ *SQL语言编译器* ],
  ),
  [ *个人项目* ],
  date[ 2026 年 03 月 – 2026 年 06 月 ],
)

#tech[ C语言 | Flex | Bison ]

- 实现词法分析、语法分析、语义检查三层编译器架构。
- 基于Flex/Bison生成LALR(1)语法分析器，支持完整SQL子集，提供语法错误恢复与行级精确定位。




// #item(
//   link(
//     "https://github.com/CSsue/Fan-Hop",
//     [ *微博用户影响力分析系统* ],
//   ),
//   [ *个人项目* ],
//   date[ 2026 年 02 月 – 2026 年 04 月 ],
// )

// #tech[ Docker | Spark RDD | Python | Hadoop | 性能调优 ]

// - 基于Docker完成Hadoop+Spark集群的快速部署
// - 成功输出3-Hop影响力Top-K用户列表，Cache策略使执行效率显著提升

#item(
  link(
    "https://github.com/CSsue/MOM-Log",
    [ *日志采集与智能报警系统* ],
  ),
  [ *个人项目* ],
  date[ 2025 年 09 月 – 2025年 11 月 ],
)

#tech[ Linux | Python 3.12 | ActiveMQ | STOMP协议 | Matplotlib ]

// 基于消息队列进行分布式日志采集与智能异常检测系统

- 实现采集、分析、展示三层发布-订阅架构，模块间无直接依赖，支持独立部署与水平扩展。
- 实时计算各设备最近异常，支持动态阈值告警，端到端全链路可视化。



#item(
  link(
    "https://github.com/CSsue/NEO-Project",
    [ *国际化拔尖创新人才培养计划* ],
  ),
  [ *国际项目* ],
  date[ 2024 年 09 月 – 2025 年 06 月 ],
)

// #tech[ Linux | Python 3.12 | ActiveMQ | STOMP协议 | Matplotlib ]


- 参与课程《Optimal Control and Planning via Dynamic Programming and Reinforcement Learning》，授课教师：Peter Zhang（Camegie Mellon University），以 98.8 分认定优秀成员结课并推荐入营。 


== #fa-award 获奖情况
#item(
  [ *中国大学生计算机设计大赛* ],
  [ *西北地区三等奖* ],
  date[ 2026 年 5 月 ],
)

#item(
  [ *中国大学生创新创业训练计划* ],
  [ *国家级项目“星火社区——项目孵化与人才培养平台”* ],
  date[ 2025 年 6 月 ],
)

// #item(
//   [ *原互联网+ 大学生创新创业大赛* ],
//   [ *省级金奖* ],
//   date[ 2024 年 6 月 ],
// )



#item(
  [ *女子数学奥林匹克竞赛* ],
  [ *国家级铜牌* ],
  date[ 2022 年 9 月 ],
)


== #fa-building-columns 校园经历

#item(
  [ *西安电子科技大学科创社副主席* ],
  [],
  date[ 2024 年 09 月 – 2025 年 06 月 ],
)

#item(
  [ *2025-2026年度优秀共青团员* ],
  [],
  date[ 2025 年 09 月 – 2026 年 06 月 ],
)
#item(
  [ *2024-2025年度优秀学生干部* ],
  [],
  date[ 2024 年 09 月 – 2025 年 06 月 ],
)





# 张雪峰说 · 智能志愿百科

> 「社会就是一个大筛子，用学历筛孩子，用房子筛父母，用工作筛家庭。」

用张雪峰的思维框架帮你分析高考志愿、考研规划、就业方向。

## 截图

```
┌─────────────────────────────────────────┐
│  张 雪 峰 说                             │
│  SYS://INTELLIGENT-CAREER-ADVISOR       │
│                                         │
│  ┌──────┐  ┌──────┐  ┌──────┐          │
│  │      │  │      │  │      │          │
│  │ 百科 │  │ 测评 │  │ 数据 │          │
│  │ 问答 │  │ 8题  │  │ 36个 │          │
│  └──────┘  └──────┘  └──────┘          │
│                                         │
│       [ ENTER SYSTEM ]                  │
└─────────────────────────────────────────┘
```

## 功能

| 功能 | 说明 |
|------|------|
| 百科问答 | 输入专业名、分数、省份，张雪峰风格分析 |
| 职业测评 | 8 道题，测出适合你的专业方向 |
| 专业数据库 | 9 大类 36 个专业，就业率/薪资/考研/对口率 |
| 联网搜索 | DuckDuckGo 实时搜索最新数据 |
| 志愿填报 | 输入省份+分数，定位学校档次 |

## 快速开始

### 方式一：一键启动（推荐）

```bash
# 下载本仓库
git clone https://github.com/ZhangYuanJie-SJTU/zhangxuefeng-quiz.git
cd zhangxuefeng-quiz

# 安装依赖
pip install flask flask-cors anthropic ddgs

# 启动
python app.py
```

打开 http://localhost:5000

**Windows 用户**：双击 `启动.bat`，自动安装依赖+启动。

### 方式二：在线体验

https://zhangyuanjie-sjtu.github.io/html-pages/zhangxuefeng-quiz/

> 线上版是纯静态页面，功能有限。完整体验请用方式一。

## 项目结构

```
zhangxuefeng-quiz/
├── app.py              # 后端：Flask + Anthropic SDK + 联网搜索
├── static/
│   └── index.html      # 前端：东北工业朋克风 UI
├── requirements.txt    # Python 依赖
├── 启动.bat            # Windows 一键启动
└── README.md
```

## 使用示例

**问专业**：
> "计算机专业就业前景怎么样"

**问志愿**：
> "江苏600分能上什么学校"

**问考研**：
> "双非考研985值不值"

**做测评**：
> 切到「职业测评」标签，8 道题测出方向

## 技术栈

- 后端：Python + Flask
- AI：Anthropic SDK（支持任何兼容 API）
- 搜索：DuckDuckGo（免费，无需 key）
- 前端：原生 HTML/CSS/JS
- 部署：零依赖，本地运行

## 基于

- [张雪峰.skill](https://github.com/alchaincyf/zhangxuefeng-skill) — 5 个心智模型、8 条决策启发式、完整表达 DNA

## License

MIT

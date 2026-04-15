# 张雪峰说 · 智能志愿百科

> 「社会就是一个大筛子，用学历筛孩子，用房子筛父母，用工作筛家庭。」

用张雪峰的思维框架帮你分析高考志愿、考研规划、就业方向。AI 驱动，联网搜索，60+ 专业数据。

## 功能

| 功能 | 说明 |
|------|------|
| 百科问答 | AI 对话，张雪峰风格分析，联网搜索最新数据 |
| 大学查询 | 30+ 大学，缩写匹配（华科/武理工/北邮...） |
| 大学+专业 | "武理工测控怎么样""华科计算机"直接问 |
| 志愿填报 | 输入省份+分数，定位学校档次（31省×7档） |
| 专业数据库 | 60+ 专业，就业率/月薪/考研/对口率，搜索补全 |
| 职业测评 | 8 道题，性格标签 + 3 个推荐专业 + 可分享 |

## 快速开始

### Windows

1. 下载本仓库（绿色按钮 Code → Download ZIP）
2. 解压到任意文件夹
3. 双击 **`start.bat`**

自动完成：检查 Python → 安装依赖 → 读取 API Key → 启动 → 打开浏览器

### Mac / Linux

```bash
git clone https://github.com/ZhangYuanJie-SJTU/zhangxuefeng-quiz.git
cd zhangxuefeng-quiz
pip install flask flask-cors anthropic ddgs
python app.py
```

浏览器自动打开 http://localhost:5000

### 在线体验（无需安装）

https://zhangyuanjie-sjtu.github.io/html-pages/zhangxuefeng-quiz/

> 线上版是纯静态页面，60+ 专业数据 + 30+ 大学 + 测评，无需 API Key。

## 环境要求

| 项目 | 要求 | 说明 |
|------|------|------|
| Python | 3.8+ | [下载](https://www.python.org/downloads/)，安装时勾选 Add to PATH |
| API Key | 可选 | 自动从 Claude Code 配置读取，也可设环境变量 `ANTHROPIC_API_KEY` |

没有 API Key 也能用：专业数据库、职业测评、大学查询全部可用。百科问答的 AI 对话需要 Key。

## 使用示例

```
问专业：  "计算机就业前景"
问大学：  "华科计算机怎么样"
问组合：  "武理工测控技术与仪器"
问志愿：  "江苏620分"
问话题：  "考公还是考研" "AI会取代哪些专业" "35岁危机"
做测评：  切到「职业测评」标签
```

## 项目结构

```
zhangxuefeng-quiz/
├── app.py              # 后端：Flask + AI + 搜索
├── static/
│   └── index.html      # 前端：60+专业 + 30+大学 + 对话引擎
├── requirements.txt    # Python 依赖
├── start.bat           # Windows 一键启动
└── README.md
```

## 技术栈

- 后端：Python + Flask
- AI：Anthropic SDK（兼容任何 OpenAI-compatible API）
- 搜索：DuckDuckGo（免费，无需 key）
- 前端：原生 HTML/CSS/JS（零框架，单文件）
- 字体：霞鹜文楷 + Noto Serif SC + JetBrains Mono

## 基于

- [张雪峰.skill](https://github.com/alchaincyf/zhangxuefeng-skill) — 5 个心智模型、8 条决策启发式、完整表达 DNA

## License

MIT

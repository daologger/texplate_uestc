%% uestc 模板主要设置

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template/uestcthesis}[2013/01/14 v0.2 UESTC thesis class]
\LoadClass[
    cs4size, % 使用小四字号为缺省字体大小
    UTF8, % 使用UTF-8编码
    fancyhdr, % 保持和fancyhdr宏包的兼容性;该选项将自动调用fancyhdr(fancyhdr是版式设置宏包,即页眉页脚设置)
    fntef, % CJKfntef和CCTfntef的统一接口,自动调用CJKfntef或CCTfntef(下划线宏包)
    openany,
    space
]{ctexbook}
\DeclareOption{bachelor}{\input{template/settings/bachelor/option}}
\DeclareOption{master}{\input{template/settings/master/option}}
\DeclareOption{doctor}{\input{template/settings/doctor/option}}
\ProcessOptions
\relax
\RequirePackage[ % 调用版面设置宏包geometry(参照WORD打印的PDF文件对比得到)
    a4paper, % a4paper,设置版面纸张为A4纸
    headheight=12.65pt, % headheight,设置页眉高度
    headsep=4mm, % headsep,页眉与版心的距离
    includeheadfoot, % includeheadfoot,将页眉页脚高度算进版心中
    centering, % centering,设置版心居中
    top=2.75cm, % top,页面顶边与版心之间的距离
    left=3cm % left,双页排版的内侧边距
]{geometry}
\RequirePackage{
    enumerate, % 枚举环境
    etoolbox, % 为了使用其提供的\ifblank命令, 在三线表插入命令中使用
    graphicx, % graphicx插图宏包 calc计算宏包, 用于在插图等尺寸指定时可以指定用四则运算表示尺寸
    calc, % float宏包，为浮动环境增加一个H选项, 命令系统就地放置浮动体
    float, % 如果中括号内有其他选项，则H会失去强制作用
    caption, % caption为图表标题宏包
    booktabs, % booktabs表格线宏包: 用于绘制三线表
    tabularx, % tabularx可调列宽表格宏包, 可自动换行
    threeparttable, % threeparttable可加脚注的表格宏包
    longtable, % longtable跨页表格宏包
    flafter, % flafter使得所有浮动体不能被放置在其浮动环境之前, 以免浮动体在引述它的文本之前出现
    fixltx2e,
    times, % 数学字体和特殊符号支持
    amsmath, 
    amssymb,
    gensymb,
    ntheorem, % 定理设置
    listings, % 代码环境
    xcolor, % 色彩设置
    ifthen, % 提供\ifthenelse判断命令
    enumitem, % 枚举环境设置
    CJKpunct
} %
\RequirePackage[header,cols=3,hyper=true]{glossary} % 术语表
\RequirePackage[below]{placeins} % 允许上一个section的浮动图形出现在下一个section的开始部分, 还提供\FloatBarrier命令, 使所有未处理的浮动图形立即被处理
\RequirePackage[
    backend=biber, % 使用biber对bib进行处理
    style=biblatex-uestc, % 使用biblatex-uestc模板
    utf8,
    defernumbers=true,
    maxcitenames=1
]{biblatex}
\RequirePackage[hidelinks,unicode]{hyperref} % pdf内部链接和书签
\RequirePackage[small]{subfigure} % 调用子图宏包
%% 导入自定义设置
\input{template/settings/general} % 所有通用设置
\titlepage@degree % 添加封面
\linespread{1.3891} %
\punctstyle{banjiao} %
\structure@degree % 添加论文标准结构
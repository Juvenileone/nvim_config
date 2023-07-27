local function map(maps)
    for _,map in pairs(maps) do
        vim.keymap.set(map[1], map[2], map[3], map[4])
    end
end

map({
    { 'n', 's',           '<nop>',   {} },
    { 'n', ';',           ':',       {} },
    { 'v', ';',           ':',       {} },

    -- S保存 Q退出
    { 'n', 'S',           ':call v:lua.MagicSave()<cr>', { noremap = true, silent = true } },
    { 'v', 'S',           ':call v:lua.MagicSave()<cr>', { noremap = true, silent = true } },
    { 'n', 'Q',           ':q!<cr>', { noremap = true, silent = true } },

    -- 快速删除
    { 'n', '<bs>',        '"_ciw',   { noremap = true } },

    -- ,打断
    { 'n', '<c-j>',       'f,a<cr><esc>', { noremap = true } },
    { 'i', '<c-j>',       '<esc>f,a<cr>', { noremap = true } },

    -- c-s = :%s/
    { 'n', '<c-h>',       ':<c-u>%s//gc<left><left><left>', { noremap = true } },
    { 'v', '<c-h>',       ':s/\\v//gc<left><left><left><left>', { noremap = true } },

    -- VISUAL SELECT模式 s-tab tab左右缩进
    { 'v', '<s-tab>',     '<gv',     { noremap = true } },
    { 'v', '<tab>',       '>gv',     { noremap = true } },

    -- 重写Shift + 左右
    { 'v', '<s-right>',   'e',       { noremap = true } },
    { 'i', '<s-right>',   '<esc>ea', { noremap = true } },

    -- SHIFT + 方向 选择文本
    { 'i', '<s-up>',      '<esc>vk', { noremap = true } },
    { 'i', '<s-down>',    '<esc>vj', { noremap = true } },
    { 'n', '<s-up>',      'Vk',      { noremap = true } },
    { 'n', '<s-down>',    'Vj',      { noremap = true } },
    { 'n', '<s-left>',    '<left>vh',{ noremap = true } },
    { 'n', '<s-right>',   'vl',      { noremap = true } },

    -- CTRL SHIFT + 方向 快速跳转
    { 'i', '<c-s-up>',    '<up><up><up><up><up><up><up><up><up><up>', { noremap = true, silent = true } },
    { 'i', '<c-s-down>',  '<down><down><down><down><down><down><down><down><down><down>', { noremap = true, silent = true } },
    { 'i', '<c-s-left>',  '<home>',  { noremap = true, silent = true } },
    { 'i', '<c-s-right>', '<end>',   { noremap = true, silent = true } },
    { 'n', '<c-s-up>',    '10k',     { noremap = true } },
    { 'n', '<c-s-down>',  '10j',     { noremap = true } },
    { 'n', '<c-s-left>',  '^',       { noremap = true } },
    { 'n', '<c-s-right>', '$',       { noremap = true } },
    { 'v', '<c-s-up>',    '10k',     { noremap = true } },
    { 'v', '<c-s-down>',  '10j',     { noremap = true } },
    { 'v', '<c-s-left>',  '^',       { noremap = true } },
    { 'v', '<c-s-right>', '$h',      { noremap = true } },

    -- 选中全文 选中{ 复制全文
    { 'n', '<m-a>',       'ggVG',    { noremap = true } },
    { 'n', '<m-s>',       'vi{',     { noremap = true } },

    -- emacs风格快捷键 清空一行
    { 'n', '<c-u>',       'cc<Esc>', { noremap = true } },
    { 'i', '<c-u>',       '<Esc>cc', { noremap = true } },

    -- alt + 上 下移动行
    { 'n', '<m-up>',      ':m .-2<cr>',       { noremap = true, silent = true } },
    { 'n', '<m-down>',    ':m .+1<cr>',       { noremap = true, silent = true } },
    { 'i', '<m-up>',      '<Esc>:m .-2<cr>i', { noremap = true, silent = true } },
    { 'i', '<m-down>',    '<Esc>:m .+1<cr>i', { noremap = true, silent = true } },
    { 'v', '<m-up>',      ":m '<-2<cr>gv",    { noremap = true, silent = true } },
    { 'v', '<m-down>',    ":m '>+1<cr>gv",    { noremap = true, silent = true } },

    -- alt + key 操作
    { 'i', '<m-d>',       '<Esc>"_ciw',       { noremap = true } },
    { 'i', '<m-r>',       '<Esc>"_ciw',       { noremap = true } },
    { 'i', '<m-o>',       '<Esc>o',           { noremap = true } },
    { 'i', '<m-O>',       '<Esc>O',           { noremap = true } },
    { 'n', '<m-d>',       '"_diw',            { noremap = true } },
    { 'n', '<m-r>',       '"_ciw',            { noremap = true } },

    -- windows: sp 上下窗口 sv 左右分屏 sc关闭当前 so关闭其他 s方向切换
    { 'n', 'sv',          ':vsp<cr><c-w>w',   { noremap = true } },
    { 'n', 'sp',          ':sp<cr><c-w>w',    { noremap = true } },
    { 'n', 'sc',          ':close<cr>',       { noremap = true } },
    { 'n', 'so',          ':only<cr>',        { noremap = true } },
    { 'n', 's<Left>',     '<c-w>h',           { noremap = true } },
    { 'n', 's<Right>',    '<c-w>l',           { noremap = true } },
    { 'n', 's=',          '<c-w>=',           { noremap = true } },
    { 'n', 's<Up>',       '<c-w>k',           { noremap = true } },
    { 'n', 's<Down>',     '<c-w>j',           { noremap = true } },
    { 'n', '<m-.>',       "winnr() <= winnr('$') - winnr() ? '<c-w>10>' : '<c-w>10<'", { noremap = true, expr = true } },
    { 'n', '<m-,>',       "winnr() <= winnr('$') - winnr() ? '<c-w>10<' : '<c-w>10>'", { noremap = true, expr = true } },

    -- buffers
    { 'n', 'C',           ':bw<cr>',          { noremap = true, silent = true } },
    { 'n', 'ss',          ':bn<cr>',          { noremap = true, silent = true } },
    { 'n', '<m-h>',       ':bp<cr>',          { noremap = true, silent = true } },
    { 'n', '<m-l>',   ':bn<cr>',          { noremap = true, silent = true } },
    { 'v', '<m-h>',    '<esc>:bp<cr>',     { noremap = true, silent = true } },
    { 'v', '<m-l>',   '<esc>:bn<cr>',     { noremap = true, silent = true } },
    { 'i', '<m-h>',    '<esc>:bp<cr>',     { noremap = true, silent = true } },
    { 'i', '<m-l',   '<esc>:bn<cr>',     { noremap = true, silent = true } },
})

-- 1 当目录不存在时 先创建目录, 2 当前文件是acwrite时, 用sudo保存
function MagicSave()
    if vim.fn.empty(vim.fn.glob(vim.fn.expand('%:p:h'))) then vim.fn.system('mkdir -p ' .. vim.fn.expand('%:p:h')) end
    if vim.o.buftype == 'acwrite' then
        vim.fn.execute('w !sudo tee > /dev/null %')
    else
        vim.fn.execute('w')
    end
end



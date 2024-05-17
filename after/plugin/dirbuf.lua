local dirbuf = require("dirbuf")
dirbuf.setup {
    hash_padding = 2,
    show_hidden = true,
    sort_order = "default",
    write_cmd = "DirbufSync",
}

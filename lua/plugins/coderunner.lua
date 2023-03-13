require('code_runner').setup({
    filetype = {
        python = "cd $dir && python3 $fileName",
        rust = "cd $dir && cargo run $fileName"
    }
})

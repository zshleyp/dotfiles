return {
    NORMAL = {
        {
            " fm",
            function()
                vis:command("open .")
                vis:feedkeys("<C-w>k")
                vis:command("wq!")
            end
        },
        {" dd", [["_dd]]},
        {" d", [["_d]]},
        {" D", [["_D]]},
        {" y", [["+y]]},
    },
    INSERT = {
        {"jj", "<Escape>"},
    }
}

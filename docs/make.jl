using FFL
using Documenter

DocMeta.setdocmeta!(FFL, :DocTestSetup, :(using FFL); recursive=true)

makedocs(;
    modules=[FFL],
    authors="Sean Kell <sean.michael.kell@gmail.com> and contributors",
    repo="https://github.com/smkell/FFL.jl/blob/{commit}{path}#{line}",
    sitename="FFL.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://smkell.github.io/FFL.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/smkell/FFL.jl",
    devbranch="main",
)

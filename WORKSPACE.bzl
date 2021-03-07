load("@obazl_rules_ocaml//ocaml:providers.bzl", "OpamConfig", "BuildConfig")

opam_pkgs = {
    "base": ["v0.12.0"],
    "ocaml-compiler-libs": ["v0.11.0", ["compiler-libs.common"]],
    "ppx_expect": ["v0.12.0", ["ppx_expect.collector"]],
    "ppx_inline_test": ["v0.12.0", ["ppx_inline_test.runtime-lib"]],
    "ppxlib": ["0.8.1"],
    "stdio": ["v0.12.0"],
}

opam = OpamConfig(
    version = "2.0",
    builds = {
        "mina-0.1.0": BuildConfig(
            default  = True,
            switch   = "4.07.1",
            compiler = "4.07.1",
            packages = opam_pkgs,
            verify   = True
        ),
        "4.07.1": BuildConfig(
            compiler = "4.07.1",
            packages = opam_pkgs
        )
    }
)

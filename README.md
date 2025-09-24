<div align="center">

![Last commit](https://img.shields.io/github/last-commit/Comamoca/hinoto_cli?style=flat-square)
![Repository Stars](https://img.shields.io/github/stars/Comamoca/hinoto_cli?style=flat-square)
![Issues](https://img.shields.io/github/issues/Comamoca/hinoto_cli?style=flat-square)
![Open Issues](https://img.shields.io/github/issues-raw/Comamoca/hinoto_cli?style=flat-square)
![Bug Issues](https://img.shields.io/github/issues/Comamoca/hinoto_cli/bug?style=flat-square)

<img src="https://emoji2svg.deno.dev/api/🔥" alt="fire" height="100">

# hinoto/cli

Setup tools for [hinoto](https://github.com/Comamoca/hinoto).


</div>

<div align="center">

</div>

## 🚀 How to use

Add hinoto and hinoto_cli as dependencies in your `gleam.toml` file:

```toml
hinoto = { git = "https://github.com/Comamoca/hinoto" }
hinoto_cli = { git = "https://github.com/Comamoca/hinoto_cli" }
```

```sh
gleam deps download
# Setup project for CloudFlare workers
gleam run -m hinoto/cli -- workers init

# Preview
wrangler dev
```
## ⛏️   Development

```sh
gleam check
gleam test
```
## 📜 License

MIT

### 🧩 Modules

- [argv](https://hexdocs.pm/argv)
- [filepath](https://hexdocs.pm/filepath)
- [snag](https://hexdocs.pm/snag)
- [handles](https://hexdocs.pm/handles)
- [gleam_community_ansi](https://hexdocs.pm/gleam_community_ansi)
- [clip](https://hexdocs.pm/clip)
- [simplifile](https://hexdocs.pm/simplifile)
- [tom](https://hexdocs.pm/tom)
- [gleam_stdlib](https://hexdocs.pm/gleam_stdlib)
- [shellout](https://hexdocs.pm/shellout)

## 👏 Affected projects

- [Lustre Dev Tools](https://github.com/lustre-labs/dev-tools)

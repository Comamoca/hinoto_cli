import filepath
import gleam/io
import gleam/result
import simplifile
import snag
import tom

pub const project_config = "gleam.toml"

pub fn load_project_config() {
  io.println("⏳ Loading gleam.toml..")
  use pwd <- result.try(
    simplifile.current_directory() |> snag.map_error(simplifile.describe_error),
  )
  let toml_path = filepath.join(pwd, project_config)
  use toml_text <- result.try(
    simplifile.read(toml_path) |> snag.map_error(simplifile.describe_error),
  )
  tom.parse(toml_text) |> snag.map_error(describe_tom_parse_error)
}

pub fn describe_tom_parse_error(err: tom.ParseError) -> String {
  case err {
    tom.Unexpected(_, expected:) -> expected
    tom.KeyAlreadyInUse(_) -> "Key is already in use."
  }
}

pub fn describe_tom_get_error(err) {
  case err {
    tom.NotFound(_) -> "Value is not found."
    tom.WrongType(_, _, _) -> "Value is wrong type."
  }
}

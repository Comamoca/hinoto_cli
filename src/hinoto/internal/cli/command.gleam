import filepath
import gleam/io
import gleam/javascript/promise
import gleam/result
import gleam_community/ansi
import hinoto/internal/cli/workers
import simplifile

pub fn workers_init() {
  use project_name <- result.try(workers.get_project_name())
  use wrangler_config <- result.try(workers.generate_wrangler_config(
    project_name,
  ))
  use entory_point <- result.try(workers.generate_entory_point(project_name))

  let entory_point_path = filepath.join("src/", workers.workers_entry_point)
  let main_path = filepath.join("src/", project_name <> ".gleam")

  let assert Ok(Nil) =
    simplifile.write(workers.wrangler_file_name, wrangler_config)
  io.println("📝 Writing wrangler config...")
  let assert Ok(Nil) = simplifile.write(entory_point_path, entory_point)
  io.println("📝 Writing entory point script...")

  workers.overwrite_main_program(project_name, main_path)
  promise.resolve(Nil)

  io.println("🎉 Success to generate files for CloudFlare workers!")
  io.println(
    "You can start the server using " <> ansi.pink("wrangler dev") <> "!",
  )

  Ok(Nil)
}
